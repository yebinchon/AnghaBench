; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.tty3270* }
%struct.tty3270 = type { i32 }
%struct.file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i64)* @tty3270_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty3270_ioctl(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tty3270*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 1
  %13 = load %struct.tty3270*, %struct.tty3270** %12, align 8
  store %struct.tty3270* %13, %struct.tty3270** %10, align 8
  %14 = load %struct.tty3270*, %struct.tty3270** %10, align 8
  %15 = icmp ne %struct.tty3270* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %38

19:                                               ; preds = %4
  %20 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TTY_IO_ERROR, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %19
  %31 = load %struct.tty3270*, %struct.tty3270** %10, align 8
  %32 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @kbd_ioctl(i32 %33, %struct.file* %34, i32 %35, i64 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %27, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @kbd_ioctl(i32, %struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
