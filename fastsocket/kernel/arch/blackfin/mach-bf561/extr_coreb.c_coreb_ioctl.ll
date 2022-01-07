; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-bf561/extr_coreb.c_coreb_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-bf561/extr_coreb.c_coreb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @coreb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coreb_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %26 [
    i32 129, label %11
    i32 128, label %15
    i32 130, label %22
  ]

11:                                               ; preds = %4
  %12 = call i32 (...) @bfin_read_SICA_SYSCR()
  %13 = and i32 %12, -33
  %14 = call i32 @bfin_write_SICA_SYSCR(i32 %13)
  br label %29

15:                                               ; preds = %4
  %16 = call i32 (...) @bfin_read_SICA_SYSCR()
  %17 = or i32 %16, 32
  %18 = call i32 @bfin_write_SICA_SYSCR(i32 %17)
  %19 = call i32 (...) @bfin_read_SICB_SYSCR()
  %20 = or i32 %19, 128
  %21 = call i32 @bfin_write_SICB_SYSCR(i32 %20)
  br label %29

22:                                               ; preds = %4
  %23 = call i32 (...) @bfin_read_SICB_SYSCR()
  %24 = or i32 %23, 128
  %25 = call i32 @bfin_write_SICB_SYSCR(i32 %24)
  br label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %26, %22, %15, %11
  %30 = call i32 (...) @CSYNC()
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @bfin_write_SICA_SYSCR(i32) #1

declare dso_local i32 @bfin_read_SICA_SYSCR(...) #1

declare dso_local i32 @bfin_write_SICB_SYSCR(i32) #1

declare dso_local i32 @bfin_read_SICB_SYSCR(...) #1

declare dso_local i32 @CSYNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
