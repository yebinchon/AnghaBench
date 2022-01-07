; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_generic_ordinal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_generic_ordinal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_hwperf_object_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info*)* @sn_hwperf_generic_ordinal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_hwperf_generic_ordinal(%struct.sn_hwperf_object_info* %0, %struct.sn_hwperf_object_info* %1) #0 {
  %3 = alloca %struct.sn_hwperf_object_info*, align 8
  %4 = alloca %struct.sn_hwperf_object_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sn_hwperf_object_info*, align 8
  store %struct.sn_hwperf_object_info* %0, %struct.sn_hwperf_object_info** %3, align 8
  store %struct.sn_hwperf_object_info* %1, %struct.sn_hwperf_object_info** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %4, align 8
  store %struct.sn_hwperf_object_info* %7, %struct.sn_hwperf_object_info** %6, align 8
  br label %8

8:                                                ; preds = %26, %2
  %9 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %6, align 8
  %10 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %3, align 8
  %11 = icmp ne %struct.sn_hwperf_object_info* %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %6, align 8
  %14 = call i64 @SN_HWPERF_FOREIGN(%struct.sn_hwperf_object_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %26

17:                                               ; preds = %12
  %18 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %6, align 8
  %19 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %3, align 8
  %20 = call i64 @SN_HWPERF_SAME_OBJTYPE(%struct.sn_hwperf_object_info* %18, %struct.sn_hwperf_object_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %6, align 8
  %28 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %27, i32 1
  store %struct.sn_hwperf_object_info* %28, %struct.sn_hwperf_object_info** %6, align 8
  br label %8

29:                                               ; preds = %8
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @SN_HWPERF_FOREIGN(%struct.sn_hwperf_object_info*) #1

declare dso_local i64 @SN_HWPERF_SAME_OBJTYPE(%struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
