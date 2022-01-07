; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_check_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_check_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_HEARTBEAT_CHECK_RETRY_COUNT = common dso_local global i32 0, align 4
@QLCNIC_PEG_ALIVE_COUNTER = common dso_local global i32 0, align 4
@QLCNIC_HEARTBEAT_PERIOD_MSECS = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"firmware hang detected\0A\00", align 1
@QLCNIC_PEG_HALT_STATUS1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [172 x i8] c"Dumping HW/FW registers\0APEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\0APEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\0APEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\0APEG_NET_4_PC: 0x%x\0A\00", align 1
@QLCNIC_PEG_HALT_STATUS2 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_0 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_1 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_2 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_3 = common dso_local global i32 0, align 4
@QLC_83XX_CRB_PEG_NET_4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Device is being reset err code 0x00006700.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_check_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_check_heartbeat(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load i32, i32* @EIO, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @QLCNIC_HEARTBEAT_CHECK_RETRY_COUNT, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = load i32, i32* @QLCNIC_PEG_ALIVE_COUNTER, align 4
  %12 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %10, i32 %11)
  %13 = ptrtoint i8* %12 to i64
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i32, i32* @QLCNIC_HEARTBEAT_PERIOD_MSECS, align 4
  %18 = call i32 @msleep(i32 %17)
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %20 = load i32, i32* @QLCNIC_PEG_ALIVE_COUNTER, align 4
  %21 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  store i32 %29, i32* %6, align 4
  br label %35

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %16, label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %35
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %45 = call i32 @qlcnic_83xx_take_eport_out_of_reset(%struct.qlcnic_adapter* %44)
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %47 = call i32 @qlcnic_83xx_disable_pause_frames(%struct.qlcnic_adapter* %46)
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %49 = load i32, i32* @QLCNIC_PEG_HALT_STATUS1, align 4
  %50 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %48, i32 %49)
  %51 = ptrtoint i8* %50 to i64
  store i64 %51, i64* %4, align 8
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %58 = load i32, i32* @QLCNIC_PEG_HALT_STATUS2, align 4
  %59 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %57, i32 %58)
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %61 = load i32, i32* @QLC_83XX_CRB_PEG_NET_0, align 4
  %62 = call i32 @QLCRD32(%struct.qlcnic_adapter* %60, i32 %61)
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %64 = load i32, i32* @QLC_83XX_CRB_PEG_NET_1, align 4
  %65 = call i32 @QLCRD32(%struct.qlcnic_adapter* %63, i32 %64)
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %67 = load i32, i32* @QLC_83XX_CRB_PEG_NET_2, align 4
  %68 = call i32 @QLCRD32(%struct.qlcnic_adapter* %66, i32 %67)
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %70 = load i32, i32* @QLC_83XX_CRB_PEG_NET_3, align 4
  %71 = call i32 @QLCRD32(%struct.qlcnic_adapter* %69, i32 %70)
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %73 = load i32, i32* @QLC_83XX_CRB_PEG_NET_4, align 4
  %74 = call i32 @QLCRD32(%struct.qlcnic_adapter* %72, i32 %73)
  %75 = call i32 @dev_info(i32* %55, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.1, i64 0, i64 0), i64 %56, i8* %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74)
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @QLCNIC_FWERROR_CODE(i64 %76)
  %78 = icmp eq i32 %77, 103
  br i1 %78, label %79, label %85

79:                                               ; preds = %38
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %79, %38
  br label %86

86:                                               ; preds = %85, %35
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_83xx_take_eport_out_of_reset(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_disable_pause_frames(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCNIC_FWERROR_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
