; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_xgxs_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_xgxs_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i64, i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i64, i32 }

@LOOPBACK_XGXS = common dso_local global i64 0, align 8
@PHY_SGMII_FLAG = common dso_local global i32 0, align 4
@FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@LOOPBACK_EXT = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not SGMII, no AN\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"not SGMII, AN\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SGMII\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_xgxs_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_xgxs_config_init(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %9 = load %struct.link_params*, %struct.link_params** %5, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 2
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %7, align 8
  %12 = load %struct.link_params*, %struct.link_params** %5, align 8
  %13 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.link_params*, %struct.link_params** %5, align 8
  %17 = getelementptr inbounds %struct.link_params, %struct.link_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LOOPBACK_XGXS, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ true, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %25 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PHY_SGMII_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %94, label %30

30:                                               ; preds = %21
  %31 = load %struct.link_params*, %struct.link_params** %5, align 8
  %32 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.link_params*, %struct.link_params** %5, align 8
  %36 = getelementptr inbounds %struct.link_params, %struct.link_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %43 = load %struct.link_params*, %struct.link_params** %5, align 8
  %44 = call i32 @bnx2x_set_preemphasis(%struct.bnx2x_phy* %42, %struct.link_params* %43)
  br label %45

45:                                               ; preds = %41, %34, %30
  %46 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %47 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %45
  %52 = load %struct.link_params*, %struct.link_params** %5, align 8
  %53 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.link_params*, %struct.link_params** %5, align 8
  %57 = getelementptr inbounds %struct.link_params, %struct.link_params* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LOOPBACK_EXT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55, %45
  %62 = load i32, i32* @NETIF_MSG_LINK, align 4
  %63 = call i32 @DP(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %65 = load %struct.link_params*, %struct.link_params** %5, align 8
  %66 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %67 = call i32 @bnx2x_set_autoneg(%struct.bnx2x_phy* %64, %struct.link_params* %65, %struct.link_vars* %66, i32 0)
  %68 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %69 = load %struct.link_params*, %struct.link_params** %5, align 8
  %70 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %71 = call i32 @bnx2x_program_serdes(%struct.bnx2x_phy* %68, %struct.link_params* %69, %struct.link_vars* %70)
  br label %93

72:                                               ; preds = %55, %51
  %73 = load i32, i32* @NETIF_MSG_LINK, align 4
  %74 = call i32 @DP(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %76 = load %struct.link_params*, %struct.link_params** %5, align 8
  %77 = call i32 @bnx2x_set_brcm_cl37_advertisement(%struct.bnx2x_phy* %75, %struct.link_params* %76)
  %78 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %79 = load %struct.link_params*, %struct.link_params** %5, align 8
  %80 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %81 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bnx2x_set_ieee_aneg_advertisement(%struct.bnx2x_phy* %78, %struct.link_params* %79, i32 %82)
  %84 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %85 = load %struct.link_params*, %struct.link_params** %5, align 8
  %86 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @bnx2x_set_autoneg(%struct.bnx2x_phy* %84, %struct.link_params* %85, %struct.link_vars* %86, i32 %87)
  %89 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %90 = load %struct.link_params*, %struct.link_params** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @bnx2x_restart_autoneg(%struct.bnx2x_phy* %89, %struct.link_params* %90, i32 %91)
  br label %93

93:                                               ; preds = %72, %61
  br label %101

94:                                               ; preds = %21
  %95 = load i32, i32* @NETIF_MSG_LINK, align 4
  %96 = call i32 @DP(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %98 = load %struct.link_params*, %struct.link_params** %5, align 8
  %99 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %100 = call i32 @bnx2x_initialize_sgmii_process(%struct.bnx2x_phy* %97, %struct.link_params* %98, %struct.link_vars* %99)
  br label %101

101:                                              ; preds = %94, %93
  ret void
}

declare dso_local i64 @SINGLE_MEDIA_DIRECT(%struct.link_params*) #1

declare dso_local i32 @bnx2x_set_preemphasis(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_set_autoneg(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_program_serdes(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_set_brcm_cl37_advertisement(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_set_ieee_aneg_advertisement(%struct.bnx2x_phy*, %struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_restart_autoneg(%struct.bnx2x_phy*, %struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_initialize_sgmii_process(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
