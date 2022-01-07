; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_target_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_target_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.lpfc_rport_data*, %struct.Scsi_Host* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_scsi_event_header = type { i32, i32, i64, i32, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"0799 Target Reset rport failure: rdata x%p\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"0722 Target Reset rport failure: rdata x%p\0A\00", align 1
@FC_REG_SCSI_EVENT = common dso_local global i32 0, align 4
@LPFC_EVENT_TGTRESET = common dso_local global i32 0, align 4
@LPFC_NL_VENDOR_ID = common dso_local global i32 0, align 4
@FCP_TARGET_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"0723 SCSI layer issued Target Reset (%d, %d) return x%x\0A\00", align 1
@LPFC_CTX_TGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @lpfc_target_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_target_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_rport_data*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_scsi_event_header, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %4, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %21, %struct.lpfc_vport** %5, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %25, align 8
  store %struct.lpfc_rport_data* %26, %struct.lpfc_rport_data** %6, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %37 = load i32, i32* @SUCCESS, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %39 = icmp ne %struct.lpfc_rport_data* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %1
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load i32, i32* @LOG_FCP, align 4
  %44 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %45 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.lpfc_rport_data* %44)
  %46 = load i32, i32* @FAILED, align 4
  store i32 %46, i32* %2, align 4
  br label %115

47:                                               ; preds = %1
  %48 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %49 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %48, i32 0, i32 0
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %49, align 8
  store %struct.lpfc_nodelist* %50, %struct.lpfc_nodelist** %7, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %52 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @SUCCESS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %2, align 4
  br label %115

61:                                               ; preds = %55, %47
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = call i32 @lpfc_chk_tgt_mapped(%struct.lpfc_vport* %62, %struct.scsi_cmnd* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @FAILED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load i32, i32* @LOG_FCP, align 4
  %72 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %73 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.lpfc_rport_data* %72)
  %74 = load i32, i32* @FAILED, align 4
  store i32 %74, i32* %2, align 4
  br label %115

75:                                               ; preds = %61
  %76 = load i32, i32* @FC_REG_SCSI_EVENT, align 4
  %77 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 4
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @LPFC_EVENT_TGTRESET, align 4
  %79 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %84 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %83, i32 0, i32 1
  %85 = call i32 @memcpy(i32 %82, i32* %84, i32 4)
  %86 = getelementptr inbounds %struct.lpfc_scsi_event_header, %struct.lpfc_scsi_event_header* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %89 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %88, i32 0, i32 0
  %90 = call i32 @memcpy(i32 %87, i32* %89, i32 4)
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %92 = call i32 (...) @fc_get_event_number()
  %93 = bitcast %struct.lpfc_scsi_event_header* %10 to i8*
  %94 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %95 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %91, i32 %92, i32 24, i8* %93, i32 %94)
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %97 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @FCP_TARGET_RESET, align 4
  %101 = call i32 @lpfc_send_taskmgmt(%struct.lpfc_vport* %96, %struct.lpfc_rport_data* %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %103 = load i32, i32* @KERN_ERR, align 4
  %104 = load i32, i32* @LOG_FCP, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @LPFC_CTX_TGT, align 4
  %113 = call i32 @lpfc_reset_flush_io_context(%struct.lpfc_vport* %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %75, %68, %59, %40
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_chk_tgt_mapped(%struct.lpfc_vport*, %struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

declare dso_local i32 @lpfc_send_taskmgmt(%struct.lpfc_vport*, %struct.lpfc_rport_data*, i32, i32, i32) #1

declare dso_local i32 @lpfc_reset_flush_io_context(%struct.lpfc_vport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
