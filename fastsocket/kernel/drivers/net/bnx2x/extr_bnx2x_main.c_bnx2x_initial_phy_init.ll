; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_initial_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_initial_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.link_params, i32, %struct.TYPE_2__ }
%struct.link_params = type { i64*, i32*, i32 }
%struct.TYPE_2__ = type { i64 }

@LOAD_DIAG = common dso_local global i32 0, align 4
@LOOPBACK_XGXS = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@LOAD_LOOPBACK_EXT = common dso_local global i32 0, align 4
@LOOPBACK_EXT = common dso_local global i32 0, align 4
@STATS_EVENT_LINK_UP = common dso_local global i32 0, align 4
@bnx2x_wq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Bootcode is missing - can not initialize link\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_initial_phy_init(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.link_params*, align 8
  %10 = alloca %struct.link_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = call i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = call i32 @BP_NOMCP(%struct.bnx2x* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %123, label %24

24:                                               ; preds = %2
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = call i32 @bnx2x_set_requested_fc(%struct.bnx2x* %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %28 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @LOAD_DIAG, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %24
  %33 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 0
  store %struct.link_params* %34, %struct.link_params** %9, align 8
  %35 = load i32, i32* @LOOPBACK_XGXS, align 4
  %36 = load %struct.link_params*, %struct.link_params** %9, align 8
  %37 = getelementptr inbounds %struct.link_params, %struct.link_params* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.link_params*, %struct.link_params** %9, align 8
  %39 = getelementptr inbounds %struct.link_params, %struct.link_params* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPEED_10000, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %32
  %48 = load %struct.link_params*, %struct.link_params** %9, align 8
  %49 = getelementptr inbounds %struct.link_params, %struct.link_params* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load i64, i64* @SPEED_10000, align 8
  %60 = load %struct.link_params*, %struct.link_params** %9, align 8
  %61 = getelementptr inbounds %struct.link_params, %struct.link_params* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %59, i64* %65, align 8
  br label %74

66:                                               ; preds = %47
  %67 = load i64, i64* @SPEED_1000, align 8
  %68 = load %struct.link_params*, %struct.link_params** %9, align 8
  %69 = getelementptr inbounds %struct.link_params, %struct.link_params* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %67, i64* %73, align 8
  br label %74

74:                                               ; preds = %66, %58
  br label %75

75:                                               ; preds = %74, %32
  br label %76

76:                                               ; preds = %75, %24
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @LOAD_LOOPBACK_EXT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 0
  store %struct.link_params* %82, %struct.link_params** %10, align 8
  %83 = load i32, i32* @LOOPBACK_EXT, align 4
  %84 = load %struct.link_params*, %struct.link_params** %10, align 8
  %85 = getelementptr inbounds %struct.link_params, %struct.link_params* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %88 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %87, i32 0, i32 0
  %89 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 2
  %91 = call i32 @bnx2x_phy_init(%struct.link_params* %88, %struct.TYPE_2__* %90)
  store i32 %91, i32* %6, align 4
  %92 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %93 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %92)
  %94 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %95 = call i32 @bnx2x_init_dropless_fc(%struct.bnx2x* %94)
  %96 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %97 = call i32 @bnx2x_calc_fc_adv(%struct.bnx2x* %96)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %99 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %86
  %104 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %105 = load i32, i32* @STATS_EVENT_LINK_UP, align 4
  %106 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %104, i32 %105)
  %107 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %108 = call i32 @bnx2x_link_report(%struct.bnx2x* %107)
  br label %109

109:                                              ; preds = %103, %86
  %110 = load i32, i32* @bnx2x_wq, align 4
  %111 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %112 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %111, i32 0, i32 1
  %113 = call i32 @queue_delayed_work(i32 %110, i32* %112, i32 0)
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %116 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.link_params, %struct.link_params* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %114, i64* %121, align 8
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %127

123:                                              ; preds = %2
  %124 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %109
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_requested_fc(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_phy_init(%struct.link_params*, %struct.TYPE_2__*) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_dropless_fc(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_calc_fc_adv(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_link_report(%struct.bnx2x*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
