; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_set_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"0904 NPort state transition x%06x, %s -> %s\0A\00", align 1
@LPFC_DISC_TRC_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"node statechg    did:x%x old:%d ste:%d\00", align 1
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@NLP_TGT_NO_SCSIID = common dso_local global i32 0, align 4
@NLP_FC_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_nlp_set_state(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %7, align 8
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load i32, i32* @LOG_NODE, align 4
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @lpfc_nlp_state_name(i8* %22, i32 16, i32 %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @lpfc_nlp_state_name(i8* %25, i32 16, i32 %26)
  %28 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27)
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %30 = load i32, i32* @LPFC_DISC_TRC_NODE, align 4
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %32 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %29, i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %47 = call i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport* %45, %struct.lpfc_nodelist* %46)
  br label %48

48:                                               ; preds = %44, %40, %3
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* @NLP_TGT_NO_SCSIID, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @NLP_FC_NODE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %52, %48
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %67 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %66, i32 0, i32 1
  %68 = call i64 @list_empty(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @spin_lock_irq(i32 %73)
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %76 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %75, i32 0, i32 1
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %78 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %77, i32 0, i32 0
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %81 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @spin_unlock_irq(i32 %82)
  br label %92

84:                                               ; preds = %65
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @lpfc_nlp_counters(%struct.lpfc_vport* %88, i32 %89, i32 -1)
  br label %91

91:                                               ; preds = %87, %84
  br label %92

92:                                               ; preds = %91, %70
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %95 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @lpfc_nlp_counters(%struct.lpfc_vport* %96, i32 %97, i32 1)
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @lpfc_nlp_state_cleanup(%struct.lpfc_vport* %99, %struct.lpfc_nodelist* %100, i32 %101, i32 %102)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_nlp_state_name(i8*, i32, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_cancel_retry_delay_tmo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_counters(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_state_cleanup(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
