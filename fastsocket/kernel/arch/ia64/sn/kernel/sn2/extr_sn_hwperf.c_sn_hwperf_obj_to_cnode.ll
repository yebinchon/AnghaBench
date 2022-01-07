; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_obj_to_cnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_obj_to_cnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_hwperf_object_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn_hwperf_object_info*)* @sn_hwperf_obj_to_cnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_hwperf_obj_to_cnode(%struct.sn_hwperf_object_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sn_hwperf_object_info*, align 8
  store %struct.sn_hwperf_object_info* %0, %struct.sn_hwperf_object_info** %3, align 8
  %4 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %3, align 8
  %5 = call i32 @SN_HWPERF_IS_NODE(%struct.sn_hwperf_object_info* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %3, align 8
  %9 = call i32 @SN_HWPERF_IS_IONODE(%struct.sn_hwperf_object_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = call i32 (...) @BUG()
  br label %13

13:                                               ; preds = %11, %7, %1
  %14 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %3, align 8
  %15 = call i64 @SN_HWPERF_FOREIGN(%struct.sn_hwperf_object_info* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %23

18:                                               ; preds = %13
  %19 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %3, align 8
  %20 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sn_hwperf_geoid_to_cnode(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @SN_HWPERF_IS_NODE(%struct.sn_hwperf_object_info*) #1

declare dso_local i32 @SN_HWPERF_IS_IONODE(%struct.sn_hwperf_object_info*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @SN_HWPERF_FOREIGN(%struct.sn_hwperf_object_info*) #1

declare dso_local i32 @sn_hwperf_geoid_to_cnode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
