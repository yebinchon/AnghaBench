; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@MCDI_EVENT_CODE = common dso_local global i32 0, align 4
@MCDI_EVENT_DATA = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MC watchdog or assertion failure at 0x%x\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@wol = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"MCDI PM event.\0A\00", align 1
@CMDDONE_SEQ = common dso_local global i32 0, align 4
@CMDDONE_DATALEN = common dso_local global i32 0, align 4
@CMDDONE_ERRNO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"MC Scheduler error address=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"MC Reboot\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FLR_VF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Unknown MCDI event 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_mcdi_process_event(%struct.efx_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %9 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %8, i32 0, i32 0
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MCDI_EVENT_CODE, align 4
  %14 = call i32 @EFX_QWORD_FIELD(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MCDI_EVENT_DATA, align 4
  %18 = call i32 @EFX_QWORD_FIELD(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %91 [
    i32 139, label %20
    i32 134, label %31
    i32 138, label %38
    i32 136, label %53
    i32 128, label %57
    i32 129, label %61
    i32 130, label %69
    i32 135, label %79
    i32 137, label %80
    i32 131, label %87
    i32 133, label %87
    i32 132, label %87
  ]

20:                                               ; preds = %2
  %21 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %22 = load i32, i32* @hw, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @netif_err(%struct.efx_nic* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %29 = load i32, i32* @EINTR, align 4
  %30 = call i32 @efx_mcdi_ev_death(%struct.efx_nic* %28, i32 %29)
  br label %99

31:                                               ; preds = %2
  %32 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %33 = load i32, i32* @wol, align 4
  %34 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %35 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_info(%struct.efx_nic* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %99

38:                                               ; preds = %2
  %39 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CMDDONE_SEQ, align 4
  %43 = call i32 @MCDI_EVENT_FIELD(i32 %41, i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CMDDONE_DATALEN, align 4
  %47 = call i32 @MCDI_EVENT_FIELD(i32 %45, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CMDDONE_ERRNO, align 4
  %51 = call i32 @MCDI_EVENT_FIELD(i32 %49, i32 %50)
  %52 = call i32 @efx_mcdi_ev_cpl(%struct.efx_nic* %39, i32 %43, i32 %47, i32 %51)
  br label %99

53:                                               ; preds = %2
  %54 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @efx_mcdi_process_link_change(%struct.efx_nic* %54, i32* %55)
  br label %99

57:                                               ; preds = %2
  %58 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @efx_mcdi_sensor_event(%struct.efx_nic* %58, i32* %59)
  br label %99

61:                                               ; preds = %2
  %62 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %63 = load i32, i32* @hw, align 4
  %64 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %65 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_info(%struct.efx_nic* %62, i32 %63, i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %99

69:                                               ; preds = %2
  %70 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %71 = load i32, i32* @hw, align 4
  %72 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %73 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_info(%struct.efx_nic* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %77 = load i32, i32* @EIO, align 4
  %78 = call i32 @efx_mcdi_ev_death(%struct.efx_nic* %76, i32 %77)
  br label %99

79:                                               ; preds = %2
  br label %99

80:                                               ; preds = %2
  %81 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FLR_VF, align 4
  %85 = call i32 @MCDI_EVENT_FIELD(i32 %83, i32 %84)
  %86 = call i32 @efx_sriov_flr(%struct.efx_nic* %81, i32 %85)
  br label %99

87:                                               ; preds = %2, %2, %2
  %88 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @efx_ptp_event(%struct.efx_nic* %88, i32* %89)
  br label %99

91:                                               ; preds = %2
  %92 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %93 = load i32, i32* @hw, align 4
  %94 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %95 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @netif_err(%struct.efx_nic* %92, i32 %93, i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %91, %87, %80, %79, %69, %61, %57, %53, %38, %31, %20
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @efx_mcdi_ev_death(%struct.efx_nic*, i32) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @efx_mcdi_ev_cpl(%struct.efx_nic*, i32, i32, i32) #1

declare dso_local i32 @MCDI_EVENT_FIELD(i32, i32) #1

declare dso_local i32 @efx_mcdi_process_link_change(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_mcdi_sensor_event(%struct.efx_nic*, i32*) #1

declare dso_local i32 @efx_sriov_flr(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_ptp_event(%struct.efx_nic*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
