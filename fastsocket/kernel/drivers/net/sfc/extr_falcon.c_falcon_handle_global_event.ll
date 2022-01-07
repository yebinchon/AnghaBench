; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_handle_global_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_handle_global_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32 }

@FSF_AB_GLB_EV_G_PHY0_INTR = common dso_local global i32 0, align 4
@FSF_AB_GLB_EV_XG_PHY0_INTR = common dso_local global i32 0, align 4
@FSF_AB_GLB_EV_XFP_PHY0_INTR = common dso_local global i32 0, align 4
@EFX_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FSF_BB_GLB_EV_XG_MGT_INTR = common dso_local global i32 0, align 4
@EFX_REV_FALCON_A1 = common dso_local global i64 0, align 8
@FSF_AA_GLB_EV_RX_RECOVERY = common dso_local global i32 0, align 4
@FSF_BB_GLB_EV_RX_RECOVERY = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"channel %d seen global RX_RESET event. Resetting.\0A\00", align 1
@RESET_TYPE_RX_RECOVERY = common dso_local global i32 0, align 4
@RESET_TYPE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_channel*, i32*)* @falcon_handle_global_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_handle_global_event(%struct.efx_channel* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_channel*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.falcon_nic_data*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 1
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %6, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 2
  %13 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %12, align 8
  store %struct.falcon_nic_data* %13, %struct.falcon_nic_data** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FSF_AB_GLB_EV_G_PHY0_INTR, align 4
  %17 = call i64 @EFX_QWORD_FIELD(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FSF_AB_GLB_EV_XG_PHY0_INTR, align 4
  %23 = call i64 @EFX_QWORD_FIELD(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FSF_AB_GLB_EV_XFP_PHY0_INTR, align 4
  %29 = call i64 @EFX_QWORD_FIELD(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19, %2
  store i32 1, i32* %3, align 4
  br label %88

32:                                               ; preds = %25
  %33 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %34 = call i64 @efx_nic_rev(%struct.efx_nic* %33)
  %35 = load i64, i64* @EFX_REV_FALCON_B0, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FSF_BB_GLB_EV_XG_MGT_INTR, align 4
  %41 = call i64 @EFX_QWORD_FIELD(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %7, align 8
  %45 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  store i32 1, i32* %3, align 4
  br label %88

46:                                               ; preds = %37, %32
  %47 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %48 = call i64 @efx_nic_rev(%struct.efx_nic* %47)
  %49 = load i64, i64* @EFX_REV_FALCON_A1, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FSF_AA_GLB_EV_RX_RECOVERY, align 4
  %55 = call i64 @EFX_QWORD_FIELD(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %87

57:                                               ; preds = %46
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FSF_BB_GLB_EV_RX_RECOVERY, align 4
  %61 = call i64 @EFX_QWORD_FIELD(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %57, %51
  %64 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %65 = load i32, i32* @rx_err, align 4
  %66 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %67 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.efx_channel*, %struct.efx_channel** %4, align 8
  %70 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @netif_err(%struct.efx_nic* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %74 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %73, i32 0, i32 0
  %75 = call i32 @atomic_inc(i32* %74)
  %76 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %77 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %78 = call i64 @EFX_WORKAROUND_6555(%struct.efx_nic* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i32, i32* @RESET_TYPE_RX_RECOVERY, align 4
  br label %84

82:                                               ; preds = %63
  %83 = load i32, i32* @RESET_TYPE_DISABLE, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = call i32 @efx_schedule_reset(%struct.efx_nic* %76, i32 %85)
  store i32 1, i32* %3, align 4
  br label %88

87:                                               ; preds = %57, %51
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84, %43, %31
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i64 @efx_nic_rev(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i64 @EFX_WORKAROUND_6555(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
