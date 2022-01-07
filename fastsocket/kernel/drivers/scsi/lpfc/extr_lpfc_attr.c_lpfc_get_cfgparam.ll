; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_cfgparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_get_cfgparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i64, i32, i64 }

@lpfc_fcp_io_sched = common dso_local global i32 0, align 4
@lpfc_fcp2_no_tgt_reset = common dso_local global i32 0, align 4
@lpfc_cr_delay = common dso_local global i32 0, align 4
@lpfc_cr_count = common dso_local global i32 0, align 4
@lpfc_multi_ring_support = common dso_local global i32 0, align 4
@lpfc_multi_ring_rctl = common dso_local global i32 0, align 4
@lpfc_multi_ring_type = common dso_local global i32 0, align 4
@lpfc_ack0 = common dso_local global i32 0, align 4
@lpfc_topology = common dso_local global i32 0, align 4
@lpfc_link_speed = common dso_local global i32 0, align 4
@lpfc_poll_tmo = common dso_local global i32 0, align 4
@lpfc_task_mgmt_tmo = common dso_local global i32 0, align 4
@lpfc_enable_npiv = common dso_local global i32 0, align 4
@lpfc_fcf_failover_policy = common dso_local global i32 0, align 4
@lpfc_enable_rrq = common dso_local global i32 0, align 4
@lpfc_use_msi = common dso_local global i32 0, align 4
@lpfc_fcp_imax = common dso_local global i32 0, align 4
@lpfc_fcp_cpu_map = common dso_local global i32 0, align 4
@lpfc_fcp_io_channel = common dso_local global i32 0, align 4
@lpfc_enable_hba_reset = common dso_local global i32 0, align 4
@lpfc_enable_hba_heartbeat = common dso_local global i32 0, align 4
@lpfc_enable_bg = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_poll = common dso_local global i64 0, align 8
@lpfc_sg_seg_cnt = common dso_local global i32 0, align 4
@lpfc_prot_sg_seg_cnt = common dso_local global i32 0, align 4
@lpfc_hba_queue_depth = common dso_local global i32 0, align 4
@lpfc_log_verbose = common dso_local global i32 0, align 4
@lpfc_aer_support = common dso_local global i32 0, align 4
@lpfc_sriov_nr_virtfn = common dso_local global i32 0, align 4
@lpfc_req_fw_upgrade = common dso_local global i32 0, align 4
@lpfc_suppress_link_up = common dso_local global i32 0, align 4
@lpfc_iocb_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_get_cfgparam(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %3 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %4 = load i32, i32* @lpfc_fcp_io_sched, align 4
  %5 = call i32 @lpfc_fcp_io_sched_init(%struct.lpfc_hba* %3, i32 %4)
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = load i32, i32* @lpfc_fcp2_no_tgt_reset, align 4
  %8 = call i32 @lpfc_fcp2_no_tgt_reset_init(%struct.lpfc_hba* %6, i32 %7)
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = load i32, i32* @lpfc_cr_delay, align 4
  %11 = call i32 @lpfc_cr_delay_init(%struct.lpfc_hba* %9, i32 %10)
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = load i32, i32* @lpfc_cr_count, align 4
  %14 = call i32 @lpfc_cr_count_init(%struct.lpfc_hba* %12, i32 %13)
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = load i32, i32* @lpfc_multi_ring_support, align 4
  %17 = call i32 @lpfc_multi_ring_support_init(%struct.lpfc_hba* %15, i32 %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = load i32, i32* @lpfc_multi_ring_rctl, align 4
  %20 = call i32 @lpfc_multi_ring_rctl_init(%struct.lpfc_hba* %18, i32 %19)
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = load i32, i32* @lpfc_multi_ring_type, align 4
  %23 = call i32 @lpfc_multi_ring_type_init(%struct.lpfc_hba* %21, i32 %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = load i32, i32* @lpfc_ack0, align 4
  %26 = call i32 @lpfc_ack0_init(%struct.lpfc_hba* %24, i32 %25)
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %28 = load i32, i32* @lpfc_topology, align 4
  %29 = call i32 @lpfc_topology_init(%struct.lpfc_hba* %27, i32 %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = load i32, i32* @lpfc_link_speed, align 4
  %32 = call i32 @lpfc_link_speed_init(%struct.lpfc_hba* %30, i32 %31)
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = load i32, i32* @lpfc_poll_tmo, align 4
  %35 = call i32 @lpfc_poll_tmo_init(%struct.lpfc_hba* %33, i32 %34)
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %37 = load i32, i32* @lpfc_task_mgmt_tmo, align 4
  %38 = call i32 @lpfc_task_mgmt_tmo_init(%struct.lpfc_hba* %36, i32 %37)
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = load i32, i32* @lpfc_enable_npiv, align 4
  %41 = call i32 @lpfc_enable_npiv_init(%struct.lpfc_hba* %39, i32 %40)
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %43 = load i32, i32* @lpfc_fcf_failover_policy, align 4
  %44 = call i32 @lpfc_fcf_failover_policy_init(%struct.lpfc_hba* %42, i32 %43)
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %46 = load i32, i32* @lpfc_enable_rrq, align 4
  %47 = call i32 @lpfc_enable_rrq_init(%struct.lpfc_hba* %45, i32 %46)
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %49 = load i32, i32* @lpfc_use_msi, align 4
  %50 = call i32 @lpfc_use_msi_init(%struct.lpfc_hba* %48, i32 %49)
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %52 = load i32, i32* @lpfc_fcp_imax, align 4
  %53 = call i32 @lpfc_fcp_imax_init(%struct.lpfc_hba* %51, i32 %52)
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %55 = load i32, i32* @lpfc_fcp_cpu_map, align 4
  %56 = call i32 @lpfc_fcp_cpu_map_init(%struct.lpfc_hba* %54, i32 %55)
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %58 = load i32, i32* @lpfc_fcp_io_channel, align 4
  %59 = call i32 @lpfc_fcp_io_channel_init(%struct.lpfc_hba* %57, i32 %58)
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %61 = load i32, i32* @lpfc_enable_hba_reset, align 4
  %62 = call i32 @lpfc_enable_hba_reset_init(%struct.lpfc_hba* %60, i32 %61)
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %64 = load i32, i32* @lpfc_enable_hba_heartbeat, align 4
  %65 = call i32 @lpfc_enable_hba_heartbeat_init(%struct.lpfc_hba* %63, i32 %64)
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %67 = load i32, i32* @lpfc_enable_bg, align 4
  %68 = call i32 @lpfc_enable_bg_init(%struct.lpfc_hba* %66, i32 %67)
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LPFC_SLI_REV4, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %1
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  br label %81

77:                                               ; preds = %1
  %78 = load i64, i64* @lpfc_poll, align 8
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %87 = load i32, i32* @lpfc_sg_seg_cnt, align 4
  %88 = call i32 @lpfc_sg_seg_cnt_init(%struct.lpfc_hba* %86, i32 %87)
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %90 = load i32, i32* @lpfc_prot_sg_seg_cnt, align 4
  %91 = call i32 @lpfc_prot_sg_seg_cnt_init(%struct.lpfc_hba* %89, i32 %90)
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %93 = load i32, i32* @lpfc_hba_queue_depth, align 4
  %94 = call i32 @lpfc_hba_queue_depth_init(%struct.lpfc_hba* %92, i32 %93)
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %96 = load i32, i32* @lpfc_log_verbose, align 4
  %97 = call i32 @lpfc_hba_log_verbose_init(%struct.lpfc_hba* %95, i32 %96)
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %99 = load i32, i32* @lpfc_aer_support, align 4
  %100 = call i32 @lpfc_aer_support_init(%struct.lpfc_hba* %98, i32 %99)
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %102 = load i32, i32* @lpfc_sriov_nr_virtfn, align 4
  %103 = call i32 @lpfc_sriov_nr_virtfn_init(%struct.lpfc_hba* %101, i32 %102)
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %105 = load i32, i32* @lpfc_req_fw_upgrade, align 4
  %106 = call i32 @lpfc_request_firmware_upgrade_init(%struct.lpfc_hba* %104, i32 %105)
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %108 = load i32, i32* @lpfc_suppress_link_up, align 4
  %109 = call i32 @lpfc_suppress_link_up_init(%struct.lpfc_hba* %107, i32 %108)
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %111 = load i32, i32* @lpfc_iocb_cnt, align 4
  %112 = call i32 @lpfc_iocb_cnt_init(%struct.lpfc_hba* %110, i32 %111)
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 3
  store i32 1, i32* %114, align 8
  ret void
}

declare dso_local i32 @lpfc_fcp_io_sched_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcp2_no_tgt_reset_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_cr_delay_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_cr_count_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_multi_ring_support_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_multi_ring_rctl_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_multi_ring_type_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_ack0_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_topology_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_link_speed_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_poll_tmo_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_task_mgmt_tmo_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_npiv_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcf_failover_policy_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_rrq_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_use_msi_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcp_imax_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcp_cpu_map_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_fcp_io_channel_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_hba_reset_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_hba_heartbeat_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_enable_bg_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sg_seg_cnt_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_prot_sg_seg_cnt_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_hba_queue_depth_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_hba_log_verbose_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_aer_support_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sriov_nr_virtfn_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_request_firmware_upgrade_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_suppress_link_up_init(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_iocb_cnt_init(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
