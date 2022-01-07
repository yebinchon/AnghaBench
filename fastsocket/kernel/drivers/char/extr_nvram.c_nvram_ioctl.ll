; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nvram.c_nvram_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nvram.c_nvram_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@NVRAM_BYTES = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @nvram_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvram_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %45 [
    i32 129, label %12
    i32 128, label %34
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %14 = call i32 @capable(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %48

19:                                               ; preds = %12
  %20 = call i32 @spin_lock_irq(i32* @rtc_lock)
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %28, %19
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @NVRAM_BYTES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @__nvram_write_byte(i32 0, i32 %26)
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %21

31:                                               ; preds = %21
  %32 = call i32 (...) @__nvram_set_checksum()
  %33 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  store i32 0, i32* %5, align 4
  br label %48

34:                                               ; preds = %4
  %35 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %36 = call i32 @capable(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EACCES, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %48

41:                                               ; preds = %34
  %42 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %43 = call i32 (...) @__nvram_set_checksum()
  %44 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  store i32 0, i32* %5, align 4
  br label %48

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOTTY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %41, %38, %31, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__nvram_write_byte(i32, i32) #1

declare dso_local i32 @__nvram_set_checksum(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
