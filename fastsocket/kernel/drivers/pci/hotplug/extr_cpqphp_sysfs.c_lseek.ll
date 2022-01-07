; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_sysfs.c_lseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_sysfs.c_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.ctrl_dbg* }
%struct.ctrl_dbg = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctrl_dbg*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 -1, i64* %9, align 8
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load %struct.ctrl_dbg*, %struct.ctrl_dbg** %12, align 8
  store %struct.ctrl_dbg* %13, %struct.ctrl_dbg** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %23 [
    i32 0, label %15
    i32 1, label %17
  ]

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %9, align 8
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %3, %17, %15
  %24 = load i64, i64* %9, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.ctrl_dbg*, %struct.ctrl_dbg** %8, align 8
  %29 = getelementptr inbounds %struct.ctrl_dbg, %struct.ctrl_dbg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %23
  %33 = call i32 (...) @unlock_kernel()
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %41

36:                                               ; preds = %26
  %37 = call i32 (...) @unlock_kernel()
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i64 %38, i64* %4, align 8
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
