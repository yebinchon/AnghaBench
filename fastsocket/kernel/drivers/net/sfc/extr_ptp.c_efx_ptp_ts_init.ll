; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_ts_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_ts_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hwtstamp_config }
%struct.hwtstamp_config = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i64 0, align 8
@HWTSTAMP_TX_ON = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@MC_CMD_PTP_MODE_V1 = common dso_local global i32 0, align 4
@MC_CMD_PTP_MODE_V2_ENHANCED = common dso_local global i32 0, align 4
@MC_CMD_PTP_MODE_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.hwtstamp_config*)* @efx_ptp_ts_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_ts_init(%struct.efx_nic* %0, %struct.hwtstamp_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.hwtstamp_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.hwtstamp_config* %1, %struct.hwtstamp_config** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %10 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %91

16:                                               ; preds = %2
  %17 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %18 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HWTSTAMP_TX_OFF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %24 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HWTSTAMP_TX_ON, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %91

31:                                               ; preds = %22, %16
  %32 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %38 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %52 [
    i32 140, label %40
    i32 138, label %41
    i32 137, label %41
    i32 139, label %41
    i32 130, label %45
    i32 129, label %45
    i32 131, label %45
    i32 135, label %49
    i32 128, label %49
    i32 136, label %49
    i32 133, label %49
    i32 132, label %49
    i32 134, label %49
  ]

40:                                               ; preds = %31
  br label %55

41:                                               ; preds = %31, %31, %31
  %42 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %43 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %42, i32 0, i32 1
  store i32 138, i32* %43, align 8
  %44 = load i32, i32* @MC_CMD_PTP_MODE_V1, align 4
  store i32 %44, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %55

45:                                               ; preds = %31, %31, %31
  %46 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %47 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %46, i32 0, i32 1
  store i32 130, i32* %47, align 8
  %48 = load i32, i32* @MC_CMD_PTP_MODE_V2_ENHANCED, align 4
  store i32 %48, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %55

49:                                               ; preds = %31, %31, %31, %31, %31, %31
  %50 = load i32, i32* @ERANGE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %91

52:                                               ; preds = %31
  %53 = load i32, i32* @ERANGE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %91

55:                                               ; preds = %45, %41, %40
  %56 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %57 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HWTSTAMP_TX_OFF, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @efx_ptp_change_mode(%struct.efx_nic* %63, i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @MC_CMD_PTP_MODE_V2_ENHANCED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MC_CMD_PTP_MODE_V2, align 4
  %77 = call i32 @efx_ptp_change_mode(%struct.efx_nic* %74, i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %73, %69, %62
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %91

83:                                               ; preds = %78
  %84 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %85 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %5, align 8
  %89 = bitcast %struct.hwtstamp_config* %87 to i8*
  %90 = bitcast %struct.hwtstamp_config* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 24, i1 false)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %83, %81, %52, %49, %28, %13
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @efx_ptp_change_mode(%struct.efx_nic*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
