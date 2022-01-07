; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_create_parisc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_create_parisc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.parisc_device = type { %struct.device }
%struct.hardware_path = type { i32*, i32 }

@root = common dso_local global %struct.device zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.parisc_device* (%struct.hardware_path*)* @create_parisc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.parisc_device* @create_parisc_device(%struct.hardware_path* %0) #0 {
  %2 = alloca %struct.hardware_path*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.hardware_path* %0, %struct.hardware_path** %2, align 8
  store %struct.device* @root, %struct.device** %4, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load %struct.hardware_path*, %struct.hardware_path** %2, align 8
  %10 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %29

18:                                               ; preds = %8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.hardware_path*, %struct.hardware_path** %2, align 8
  %21 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.parisc_device* @alloc_tree_node(%struct.device* %19, i32 %26)
  %28 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %27, i32 0, i32 0
  store %struct.device* %28, %struct.device** %4, align 8
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.hardware_path*, %struct.hardware_path** %2, align 8
  %35 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.parisc_device* @alloc_tree_node(%struct.device* %33, i32 %36)
  ret %struct.parisc_device* %37
}

declare dso_local %struct.parisc_device* @alloc_tree_node(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
