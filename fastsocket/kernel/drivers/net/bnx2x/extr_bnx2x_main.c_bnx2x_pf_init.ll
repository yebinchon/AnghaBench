; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_pf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_pf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.bnx2x_func_init_params = type { i32, i32, i32, i32, i32, i32 }
%struct.event_ring_data = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IGU_REG_STATISTIC_NUM_MESSAGE_SENT = common dso_local global i64 0, align 8
@BNX2X_IGU_STAS_MSG_VF_CNT = common dso_local global i32 0, align 4
@BNX2X_IGU_STAS_MSG_PF_CNT = common dso_local global i32 0, align 4
@FUNC_FLG_STATS = common dso_local global i32 0, align 4
@FUNC_FLG_LEADING = common dso_local global i32 0, align 4
@FUNC_FLG_SPQ = common dso_local global i32 0, align 4
@TPA_ENABLE_FLAG = common dso_local global i32 0, align 4
@FUNC_FLG_TPA = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@HC_SP_INDEX_EQ_CONS = common dso_local global i32 0, align 4
@DEF_SB_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_pf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pf_init(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_func_init_params, align 4
  %4 = alloca %struct.event_ring_data, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = bitcast %struct.bnx2x_func_init_params* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 24, i1 false)
  %7 = bitcast %struct.event_ring_data* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %58, label %11

11:                                               ; preds = %1
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = load i64, i64* @IGU_REG_STATISTIC_NUM_MESSAGE_SENT, align 8
  %14 = load i32, i32* @BNX2X_IGU_STAS_MSG_VF_CNT, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = call i32 @BP_FUNC(%struct.bnx2x* %22)
  br label %27

24:                                               ; preds = %11
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i32 @BP_VN(%struct.bnx2x* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %17, %30
  %32 = call i32 @REG_WR(%struct.bnx2x* %12, i64 %31, i32 0)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = load i64, i64* @IGU_REG_STATISTIC_NUM_MESSAGE_SENT, align 8
  %35 = load i32, i32* @BNX2X_IGU_STAS_MSG_VF_CNT, align 4
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* @BNX2X_IGU_STAS_MSG_PF_CNT, align 4
  %40 = mul nsw i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %44 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %48 = call i32 @BP_FUNC(%struct.bnx2x* %47)
  br label %52

49:                                               ; preds = %27
  %50 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %51 = call i32 @BP_VN(%struct.bnx2x* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %48, %46 ], [ %51, %49 ]
  %54 = mul nsw i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %42, %55
  %57 = call i32 @REG_WR(%struct.bnx2x* %33, i64 %56, i32 0)
  br label %58

58:                                               ; preds = %52, %1
  %59 = load i32, i32* @FUNC_FLG_STATS, align 4
  %60 = load i32, i32* @FUNC_FLG_LEADING, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @FUNC_FLG_SPQ, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %65 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TPA_ENABLE_FLAG, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @FUNC_FLG_TPA, align 4
  br label %73

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = call i32 @BP_FUNC(%struct.bnx2x* %79)
  %81 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %83 = call i32 @BP_FUNC(%struct.bnx2x* %82)
  %84 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %86 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 4
  store i32 %87, i32* %88, align 4
  %89 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 3
  store i32 %91, i32* %92, align 4
  %93 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %94 = call i32 @bnx2x_func_init(%struct.bnx2x* %93, %struct.bnx2x_func_init_params* %3)
  %95 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %96 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %95, i32 0, i32 3
  %97 = call i32 @memset(i32* %96, i32 0, i32 4)
  %98 = load i32, i32* @SPEED_10000, align 4
  %99 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %100 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %103 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %104 = call i32 @bnx2x_get_cmng_fns_mode(%struct.bnx2x* %103)
  %105 = call i32 @bnx2x_cmng_fns_init(%struct.bnx2x* %102, i32 1, i32 %104)
  %106 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %107 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %73
  %112 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %113 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %114 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %113, i32 0, i32 3
  %115 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %116 = call i32 @BP_PORT(%struct.bnx2x* %115)
  %117 = call i32 @storm_memset_cmng(%struct.bnx2x* %112, i32* %114, i32 %116)
  br label %118

118:                                              ; preds = %111, %73
  %119 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %120 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @U64_HI(i32 %121)
  %123 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %126 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @U64_LO(i32 %127)
  %129 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %132 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 2
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @HC_SP_INDEX_EQ_CONS, align 4
  %136 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 1
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* @DEF_SB_ID, align 4
  %138 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 0
  store i32 %137, i32* %138, align 4
  %139 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %140 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %141 = call i32 @BP_FUNC(%struct.bnx2x* %140)
  %142 = call i32 @storm_memset_eq_data(%struct.bnx2x* %139, %struct.event_ring_data* %4, i32 %141)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #2

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #2

declare dso_local i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x*) #2

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #2

declare dso_local i32 @BP_VN(%struct.bnx2x*) #2

declare dso_local i32 @bnx2x_func_init(%struct.bnx2x*, %struct.bnx2x_func_init_params*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @bnx2x_cmng_fns_init(%struct.bnx2x*, i32, i32) #2

declare dso_local i32 @bnx2x_get_cmng_fns_mode(%struct.bnx2x*) #2

declare dso_local i32 @storm_memset_cmng(%struct.bnx2x*, i32*, i32) #2

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #2

declare dso_local i32 @U64_HI(i32) #2

declare dso_local i32 @U64_LO(i32) #2

declare dso_local i32 @storm_memset_eq_data(%struct.bnx2x*, %struct.event_ring_data*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
