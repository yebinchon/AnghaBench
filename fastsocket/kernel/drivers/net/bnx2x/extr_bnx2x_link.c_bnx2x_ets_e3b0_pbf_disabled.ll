; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_pbf_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_e3b0_pbf_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@ETS_E3B0_PBF_MIN_W_VAL = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_PRIORITY_CLIENT_P1 = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_PRIORITY_CLIENT_P0 = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P1 = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P0 = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P1 = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P0 = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1 = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0 = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1 = common dso_local global i64 0, align 8
@PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0 = common dso_local global i64 0, align 8
@PBF_REG_COS0_WEIGHT_P0 = common dso_local global i64 0, align 8
@DCBX_E3B0_MAX_NUM_COS_PORT0 = common dso_local global i32 0, align 4
@PBF_REG_COS0_WEIGHT_P1 = common dso_local global i64 0, align 8
@DCBX_E3B0_MAX_NUM_COS_PORT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*)* @bnx2x_ets_e3b0_pbf_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ets_e3b0_pbf_disabled(%struct.link_params* %0) #0 {
  %2 = alloca %struct.link_params*, align 8
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %2, align 8
  %9 = load %struct.link_params*, %struct.link_params** %2, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 1
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %3, align 8
  %12 = load %struct.link_params*, %struct.link_params** %2, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* @ETS_E3B0_PBF_MIN_W_VAL, align 8
  store i64 %15, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = load i64, i64* @PBF_REG_ETS_ARB_PRIORITY_CLIENT_P1, align 8
  %21 = call i32 @REG_WR(%struct.bnx2x* %19, i64 %20, i32 1672)
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = load i64, i64* @PBF_REG_ETS_ARB_PRIORITY_CLIENT_P0, align 8
  %25 = call i32 @REG_WR(%struct.bnx2x* %23, i64 %24, i32 181896)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load i64, i64* @PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P1, align 8
  %32 = call i32 @REG_WR(%struct.bnx2x* %30, i64 %31, i32 1672)
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = load i64, i64* @PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P0, align 8
  %36 = call i32 @REG_WR(%struct.bnx2x* %34, i64 %35, i32 181896)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P1, align 8
  br label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P0, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @REG_WR(%struct.bnx2x* %38, i64 %46, i32 256)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1, align 8
  br label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  %57 = call i32 @REG_WR(%struct.bnx2x* %48, i64 %56, i32 0)
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* @PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1, align 8
  br label %65

63:                                               ; preds = %55
  %64 = load i64, i64* @PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  %67 = call i32 @REG_WR(%struct.bnx2x* %58, i64 %66, i32 0)
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* @PBF_REG_COS0_WEIGHT_P0, align 8
  store i64 %71, i64* %7, align 8
  %72 = load i32, i32* @DCBX_E3B0_MAX_NUM_COS_PORT0, align 4
  store i32 %72, i32* %8, align 4
  br label %76

73:                                               ; preds = %65
  %74 = load i64, i64* @PBF_REG_COS0_WEIGHT_P1, align 8
  store i64 %74, i64* %7, align 8
  %75 = load i32, i32* @DCBX_E3B0_MAX_NUM_COS_PORT1, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %70
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %89, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = mul nsw i32 4, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  %88 = call i32 @REG_WR(%struct.bnx2x* %82, i64 %87, i32 0)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %77

92:                                               ; preds = %77
  %93 = load %struct.link_params*, %struct.link_params** %2, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @bnx2x_ets_e3b0_set_credit_upper_bound_pbf(%struct.link_params* %93, i64 %94)
  ret void
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_ets_e3b0_set_credit_upper_bound_pbf(%struct.link_params*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
