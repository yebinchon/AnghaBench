; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_send_times.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_send_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.pps_event_time = type { %struct.timespec }
%struct.timespec = type { i32, i32 }

@SYNCHRONISE_PERIOD_NS = common dso_local global i32 0, align 4
@SYNCHRONISATION_GRANULARITY_NS = common dso_local global i32 0, align 4
@MC_NANOSECOND_BITS = common dso_local global i32 0, align 4
@FR_CZ_MC_TREG_SMEM = common dso_local global i64 0, align 8
@MC_SMEM_P0_PTP_TIME_OFST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.pps_event_time*)* @efx_ptp_send_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ptp_send_times(%struct.efx_nic* %0, %struct.pps_event_time* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.pps_event_time*, align 8
  %5 = alloca %struct.pps_event_time, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.efx_ptp_data*, align 8
  %8 = alloca %struct.timespec, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.pps_event_time* %1, %struct.pps_event_time** %4, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 0
  %14 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %13, align 8
  store %struct.efx_ptp_data* %14, %struct.efx_ptp_data** %7, align 8
  %15 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %7, align 8
  %16 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = call i32 @pps_get_ts(%struct.pps_event_time* %5)
  %20 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %21 = bitcast %struct.timespec* %8 to i8*
  %22 = bitcast %struct.timespec* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 8, i1 false)
  %23 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %24 = bitcast %struct.timespec* %6 to i8*
  %25 = bitcast %struct.timespec* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 8, i1 false)
  %26 = load i32, i32* @SYNCHRONISE_PERIOD_NS, align 4
  %27 = call i32 @timespec_add_ns(%struct.timespec* %6, i32 %26)
  br label %28

28:                                               ; preds = %58, %2
  %29 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %30 = call i64 @timespec_compare(%struct.timespec* %29, %struct.timespec* %6)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ACCESS_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ false, %28 ], [ %36, %32 ]
  br i1 %38, label %39, label %75

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %41 = bitcast %struct.timespec* %10 to i8*
  %42 = bitcast %struct.timespec* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = load i32, i32* @SYNCHRONISATION_GRANULARITY_NS, align 4
  %44 = call i32 @timespec_add_ns(%struct.timespec* %10, i32 %43)
  br label %45

45:                                               ; preds = %56, %39
  %46 = call i32 @pps_get_ts(%struct.pps_event_time* %5)
  br label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %49 = call i64 @timespec_compare(%struct.timespec* %48, %struct.timespec* %10)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ACCESS_ONCE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i1 [ false, %47 ], [ %55, %51 ]
  br i1 %57, label %45, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MC_NANOSECOND_BITS, align 4
  %63 = shl i32 %61, %62
  %64 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %5, i32 0, i32 0
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @cpu_to_le32(i32 %69)
  %71 = load i64, i64* @FR_CZ_MC_TREG_SMEM, align 8
  %72 = load i64, i64* @MC_SMEM_P0_PTP_TIME_OFST, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @_efx_writed(%struct.efx_nic* %68, i32 %70, i64 %73)
  br label %28

75:                                               ; preds = %37
  %76 = load %struct.pps_event_time*, %struct.pps_event_time** %4, align 8
  %77 = bitcast %struct.pps_event_time* %76 to i8*
  %78 = bitcast %struct.pps_event_time* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 8, i1 false)
  ret void
}

declare dso_local i32 @pps_get_ts(%struct.pps_event_time*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec_add_ns(%struct.timespec*, i32) #1

declare dso_local i64 @timespec_compare(%struct.timespec*, %struct.timespec*) #1

declare dso_local i64 @ACCESS_ONCE(i32) #1

declare dso_local i32 @_efx_writed(%struct.efx_nic*, i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
