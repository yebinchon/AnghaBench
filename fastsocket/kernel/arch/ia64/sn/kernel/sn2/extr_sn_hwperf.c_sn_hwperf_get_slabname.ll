; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_get_slabname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_get_slabname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_hwperf_object_info = type { i32 }

@slabname_other = common dso_local global i8* null, align 8
@slabname_node = common dso_local global i8* null, align 8
@slabname_ionode = common dso_local global i8* null, align 8
@slabname_router = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info*, i32*)* @sn_hwperf_get_slabname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sn_hwperf_get_slabname(%struct.sn_hwperf_object_info* %0, %struct.sn_hwperf_object_info* %1, i32* %2) #0 {
  %4 = alloca %struct.sn_hwperf_object_info*, align 8
  %5 = alloca %struct.sn_hwperf_object_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.sn_hwperf_object_info* %0, %struct.sn_hwperf_object_info** %4, align 8
  store %struct.sn_hwperf_object_info* %1, %struct.sn_hwperf_object_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** @slabname_other, align 8
  store i8* %9, i8** %8, align 8
  %10 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %4, align 8
  %11 = call i32 @SN_HWPERF_IS_NODE(%struct.sn_hwperf_object_info* %10)
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %4, align 8
  %15 = call i64 @SN_HWPERF_IS_IONODE(%struct.sn_hwperf_object_info* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i8*, i8** @slabname_node, align 8
  br label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** @slabname_ionode, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i8* [ %21, %20 ], [ %23, %22 ]
  store i8* %25, i8** %8, align 8
  %26 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %4, align 8
  %27 = call i32 @sn_hwperf_obj_to_cnode(%struct.sn_hwperf_object_info* %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %40

29:                                               ; preds = %13
  %30 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %4, align 8
  %31 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %5, align 8
  %32 = call i32 @sn_hwperf_generic_ordinal(%struct.sn_hwperf_object_info* %30, %struct.sn_hwperf_object_info* %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %4, align 8
  %35 = call i64 @SN_HWPERF_IS_ROUTER(%struct.sn_hwperf_object_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i8*, i8** @slabname_router, align 8
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %37, %29
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i8*, i8** %8, align 8
  ret i8* %41
}

declare dso_local i32 @SN_HWPERF_IS_NODE(%struct.sn_hwperf_object_info*) #1

declare dso_local i64 @SN_HWPERF_IS_IONODE(%struct.sn_hwperf_object_info*) #1

declare dso_local i32 @sn_hwperf_obj_to_cnode(%struct.sn_hwperf_object_info*) #1

declare dso_local i32 @sn_hwperf_generic_ordinal(%struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info*) #1

declare dso_local i64 @SN_HWPERF_IS_ROUTER(%struct.sn_hwperf_object_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
