; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.efx_filter_spec = type { i32 }

@EFX_FILTER_PRI_REQUIRED = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@PTP_ADDRESS = common dso_local global i32 0, align 4
@PTP_EVENT_PORT = common dso_local global i32 0, align 4
@PTP_GENERAL_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ptp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_start(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ptp_data*, align 8
  %5 = alloca %struct.efx_filter_spec, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %8, align 8
  store %struct.efx_ptp_data* %9, %struct.efx_ptp_data** %4, align 8
  %10 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %11 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %13 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %14 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @efx_channel_get_rx_queue(i32 %15)
  %17 = call i32 @efx_rx_queue_index(i32 %16)
  %18 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %5, i32 %12, i32 0, i32 %17)
  %19 = load i32, i32* @IPPROTO_UDP, align 4
  %20 = load i32, i32* @PTP_ADDRESS, align 4
  %21 = call i32 @htonl(i32 %20)
  %22 = load i32, i32* @PTP_EVENT_PORT, align 4
  %23 = call i32 @htons(i32 %22)
  %24 = call i32 @efx_filter_set_ipv4_local(%struct.efx_filter_spec* %5, i32 %19, i32 %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %93

29:                                               ; preds = %1
  %30 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %31 = call i32 @efx_filter_insert_filter(%struct.efx_nic* %30, %struct.efx_filter_spec* %5, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %93

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %39 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %41 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %42 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @efx_channel_get_rx_queue(i32 %43)
  %45 = call i32 @efx_rx_queue_index(i32 %44)
  %46 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %5, i32 %40, i32 0, i32 %45)
  %47 = load i32, i32* @IPPROTO_UDP, align 4
  %48 = load i32, i32* @PTP_ADDRESS, align 4
  %49 = call i32 @htonl(i32 %48)
  %50 = load i32, i32* @PTP_GENERAL_PORT, align 4
  %51 = call i32 @htons(i32 %50)
  %52 = call i32 @efx_filter_set_ipv4_local(%struct.efx_filter_spec* %5, i32 %47, i32 %49, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %85

56:                                               ; preds = %36
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = call i32 @efx_filter_insert_filter(%struct.efx_nic* %57, %struct.efx_filter_spec* %5, i32 1)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %85

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %65 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %67 = call i32 @efx_ptp_enable(%struct.efx_nic* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %78

71:                                               ; preds = %62
  %72 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %73 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %75 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %77 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %76, i32 0, i32 3
  store i32 1, i32* %77, align 4
  store i32 0, i32* %2, align 4
  br label %93

78:                                               ; preds = %70
  %79 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %80 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %81 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %82 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @efx_filter_remove_id_safe(%struct.efx_nic* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %78, %61, %55
  %86 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %87 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %88 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %89 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @efx_filter_remove_id_safe(%struct.efx_nic* %86, i32 %87, i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %85, %71, %34, %27
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @efx_filter_init_rx(%struct.efx_filter_spec*, i32, i32, i32) #1

declare dso_local i32 @efx_rx_queue_index(i32) #1

declare dso_local i32 @efx_channel_get_rx_queue(i32) #1

declare dso_local i32 @efx_filter_set_ipv4_local(%struct.efx_filter_spec*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @efx_filter_insert_filter(%struct.efx_nic*, %struct.efx_filter_spec*, i32) #1

declare dso_local i32 @efx_ptp_enable(%struct.efx_nic*) #1

declare dso_local i32 @efx_filter_remove_id_safe(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
