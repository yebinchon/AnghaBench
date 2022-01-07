; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mfd-core.c_mfd_add_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mfd-core.c_mfd_add_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mfd_cell = type { i32 }
%struct.resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfd_add_devices(%struct.device* %0, i32 %1, %struct.mfd_cell* %2, i32 %3, %struct.resource* %4, i32 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mfd_cell*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mfd_cell* %2, %struct.mfd_cell** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %33, %6
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %22, i64 %24
  %26 = load %struct.resource*, %struct.resource** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @mfd_add_device(%struct.device* %20, i32 %21, %struct.mfd_cell* %25, %struct.resource* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %36

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  br label %15

36:                                               ; preds = %31, %15
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = call i32 @mfd_remove_devices(%struct.device* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %14, align 4
  ret i32 %43
}

declare dso_local i32 @mfd_add_device(%struct.device*, i32, %struct.mfd_cell*, %struct.resource*, i32) #1

declare dso_local i32 @mfd_remove_devices(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
