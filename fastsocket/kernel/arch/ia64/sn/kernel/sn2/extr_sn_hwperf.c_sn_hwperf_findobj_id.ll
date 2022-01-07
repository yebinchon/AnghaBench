; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_findobj_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_findobj_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_hwperf_object_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sn_hwperf_object_info* (%struct.sn_hwperf_object_info*, i32, i32)* @sn_hwperf_findobj_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sn_hwperf_object_info* @sn_hwperf_findobj_id(%struct.sn_hwperf_object_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sn_hwperf_object_info*, align 8
  %5 = alloca %struct.sn_hwperf_object_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sn_hwperf_object_info*, align 8
  store %struct.sn_hwperf_object_info* %0, %struct.sn_hwperf_object_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %5, align 8
  store %struct.sn_hwperf_object_info* %10, %struct.sn_hwperf_object_info** %9, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %24, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %9, align 8
  %17 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %9, align 8
  store %struct.sn_hwperf_object_info* %22, %struct.sn_hwperf_object_info** %4, align 8
  br label %30

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %9, align 8
  %28 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %27, i32 1
  store %struct.sn_hwperf_object_info* %28, %struct.sn_hwperf_object_info** %9, align 8
  br label %11

29:                                               ; preds = %11
  store %struct.sn_hwperf_object_info* null, %struct.sn_hwperf_object_info** %4, align 8
  br label %30

30:                                               ; preds = %29, %21
  %31 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %4, align 8
  ret %struct.sn_hwperf_object_info* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
