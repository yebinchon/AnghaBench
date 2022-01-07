; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_get_nearest_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_get_nearest_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_hwperf_object_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sn_hwperf_get_nearest_node(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sn_hwperf_object_info*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = call i32 @sn_hwperf_enum_objects(i32* %8, %struct.sn_hwperf_object_info** %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @sn_hwperf_get_nearest_node_objdata(%struct.sn_hwperf_object_info* %13, i32 %14, i32 %15, i32* %16, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %9, align 8
  %20 = call i32 @vfree(%struct.sn_hwperf_object_info* %19)
  br label %21

21:                                               ; preds = %12, %3
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local i32 @sn_hwperf_enum_objects(i32*, %struct.sn_hwperf_object_info**) #1

declare dso_local i32 @sn_hwperf_get_nearest_node_objdata(%struct.sn_hwperf_object_info*, i32, i32, i32*, i32*) #1

declare dso_local i32 @vfree(%struct.sn_hwperf_object_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
