; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_get_host_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_fcoe.c_bnx2fc_get_host_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_host_statistics = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fcoe_port = type { %struct.bnx2fc_interface* }
%struct.bnx2fc_interface = type { %struct.bnx2fc_hba* }
%struct.bnx2fc_hba = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }
%struct.fcoe_statistics_params = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FW stat req timed out\0A\00", align 1
@rx_stat2 = common dso_local global i32 0, align 4
@fc_crc_cnt = common dso_local global i32 0, align 4
@tx_stat = common dso_local global i32 0, align 4
@fcoe_tx_pkt_cnt = common dso_local global i32 0, align 4
@fcoe_tx_byte_cnt = common dso_local global i32 0, align 4
@rx_stat0 = common dso_local global i32 0, align 4
@fcoe_rx_pkt_cnt = common dso_local global i32 0, align 4
@fcoe_rx_byte_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_host_statistics* (%struct.Scsi_Host*)* @bnx2fc_get_host_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_host_statistics* @bnx2fc_get_host_stats(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.fc_host_statistics*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.fc_host_statistics*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fcoe_port*, align 8
  %7 = alloca %struct.bnx2fc_interface*, align 8
  %8 = alloca %struct.bnx2fc_hba*, align 8
  %9 = alloca %struct.fcoe_statistics_params*, align 8
  %10 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.fc_lport* %12, %struct.fc_lport** %5, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %14 = call %struct.fcoe_port* @lport_priv(%struct.fc_lport* %13)
  store %struct.fcoe_port* %14, %struct.fcoe_port** %6, align 8
  %15 = load %struct.fcoe_port*, %struct.fcoe_port** %6, align 8
  %16 = getelementptr inbounds %struct.fcoe_port, %struct.fcoe_port* %15, i32 0, i32 0
  %17 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %16, align 8
  store %struct.bnx2fc_interface* %17, %struct.bnx2fc_interface** %7, align 8
  %18 = load %struct.bnx2fc_interface*, %struct.bnx2fc_interface** %7, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_interface, %struct.bnx2fc_interface* %18, i32 0, i32 0
  %20 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %19, align 8
  store %struct.bnx2fc_hba* %20, %struct.bnx2fc_hba** %8, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %22 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.fcoe_statistics_params*
  store %struct.fcoe_statistics_params* %24, %struct.fcoe_statistics_params** %9, align 8
  %25 = load %struct.fcoe_statistics_params*, %struct.fcoe_statistics_params** %9, align 8
  %26 = icmp ne %struct.fcoe_statistics_params* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store %struct.fc_host_statistics* null, %struct.fc_host_statistics** %2, align 8
  br label %139

28:                                               ; preds = %1
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %30 = call %struct.fc_host_statistics* @fc_get_host_stats(%struct.Scsi_Host* %29)
  store %struct.fc_host_statistics* %30, %struct.fc_host_statistics** %4, align 8
  %31 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %32 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %31, i32 0, i32 3
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %35 = call i64 @bnx2fc_send_stat_req(%struct.bnx2fc_hba* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  store %struct.fc_host_statistics* %38, %struct.fc_host_statistics** %2, align 8
  br label %139

39:                                               ; preds = %28
  %40 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %41 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %40, i32 0, i32 3
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 2, %42
  %44 = call i32 @wait_for_completion_timeout(i32* %41, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %49 = call i32 @BNX2FC_HBA_DBG(%struct.fc_lport* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  store %struct.fc_host_statistics* %50, %struct.fc_host_statistics** %2, align 8
  br label %139

51:                                               ; preds = %39
  %52 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %53 = load i32, i32* @rx_stat2, align 4
  %54 = load i32, i32* @fc_crc_cnt, align 4
  %55 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %52, i32 %53, i32 %54)
  %56 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %57 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %61 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 8
  %66 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %67 = load i32, i32* @tx_stat, align 4
  %68 = load i32, i32* @fcoe_tx_pkt_cnt, align 4
  %69 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %66, i32 %67, i32 %68)
  %70 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %71 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %75 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %81 = load i32, i32* @tx_stat, align 4
  %82 = load i32, i32* @fcoe_tx_byte_cnt, align 4
  %83 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %80, i32 %81, i32 %82)
  %84 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %85 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sdiv i32 %87, 4
  %89 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %90 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %94 = load i32, i32* @rx_stat0, align 4
  %95 = load i32, i32* @fcoe_rx_pkt_cnt, align 4
  %96 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %93, i32 %94, i32 %95)
  %97 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %98 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %102 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  %107 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %108 = load i32, i32* @rx_stat0, align 4
  %109 = load i32, i32* @fcoe_rx_byte_cnt, align 4
  %110 = call i32 @BNX2FC_STATS(%struct.bnx2fc_hba* %107, i32 %108, i32 %109)
  %111 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %112 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, 4
  %116 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %117 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %121 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %120, i32 0, i32 7
  store i64 0, i64* %121, align 8
  %122 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %123 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %122, i32 0, i32 6
  store i64 0, i64* %123, align 8
  %124 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %125 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %124, i32 0, i32 5
  store i64 0, i64* %125, align 8
  %126 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %127 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  %128 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %129 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  %131 = getelementptr inbounds %struct.fc_host_statistics, %struct.fc_host_statistics* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  %132 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %133 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %132, i32 0, i32 1
  %134 = load %struct.bnx2fc_hba*, %struct.bnx2fc_hba** %8, align 8
  %135 = getelementptr inbounds %struct.bnx2fc_hba, %struct.bnx2fc_hba* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @memcpy(i32* %133, i64 %136, i32 4)
  %138 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %4, align 8
  store %struct.fc_host_statistics* %138, %struct.fc_host_statistics** %2, align 8
  br label %139

139:                                              ; preds = %51, %47, %37, %27
  %140 = load %struct.fc_host_statistics*, %struct.fc_host_statistics** %2, align 8
  ret %struct.fc_host_statistics* %140
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.fcoe_port* @lport_priv(%struct.fc_lport*) #1

declare dso_local %struct.fc_host_statistics* @fc_get_host_stats(%struct.Scsi_Host*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @bnx2fc_send_stat_req(%struct.bnx2fc_hba*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @BNX2FC_HBA_DBG(%struct.fc_lport*, i8*) #1

declare dso_local i32 @BNX2FC_STATS(%struct.bnx2fc_hba*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
