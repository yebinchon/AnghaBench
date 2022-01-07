; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_init_vpi_cmpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_init_vpi_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.lpfc_vport* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_nodelist = type { i32 }
%struct.Scsi_Host = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"2609 Init VPI mailbox failed 0x%x\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4
@LPFC_FDISC = common dso_local global i64 0, align 8
@Fabric_DID = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"2731 Cannot find fabric controller node\0A\00", align 1
@LS_NPIV_FAB_SUPPORTED = common dso_local global i32 0, align 4
@FC_VPORT_NO_FABRIC_SUPP = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"2606 No NPIV Fabric support\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_init_vpi_cmpl(%struct.lpfc_hba* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %5, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load i32, i32* @LOG_MBOX, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mempool_free(%struct.TYPE_8__* %29, i32 %32)
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %35 = load i32, i32* @FC_VPORT_FAILED, align 4
  %36 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %34, i32 %35)
  br label %109

37:                                               ; preds = %2
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @spin_lock_irq(i32 %40)
  %42 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @spin_unlock_irq(i32 %50)
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 2
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %53, align 8
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %56 = icmp eq %struct.lpfc_vport* %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %37
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LPFC_FDISC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %57, %37
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %65 = load i32, i32* @Fabric_DID, align 4
  %66 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %64, i32 %65)
  store %struct.lpfc_nodelist* %66, %struct.lpfc_nodelist** %6, align 8
  %67 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %68 = icmp ne %struct.lpfc_nodelist* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %71 = load i32, i32* @KERN_ERR, align 4
  %72 = load i32, i32* @LOG_DISCOVERY, align 4
  %73 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %78 = call i32 @lpfc_register_new_vport(%struct.lpfc_hba* %75, %struct.lpfc_vport* %76, %struct.lpfc_nodelist* %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mempool_free(%struct.TYPE_8__* %80, i32 %83)
  br label %109

85:                                               ; preds = %57
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @LS_NPIV_FAB_SUPPORTED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %94 = call i32 @lpfc_initial_fdisc(%struct.lpfc_vport* %93)
  br label %103

95:                                               ; preds = %85
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %97 = load i32, i32* @FC_VPORT_NO_FABRIC_SUPP, align 4
  %98 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %96, i32 %97)
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %100 = load i32, i32* @KERN_ERR, align 4
  %101 = load i32, i32* @LOG_ELS, align 4
  %102 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %95, %92
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @mempool_free(%struct.TYPE_8__* %104, i32 %107)
  br label %109

109:                                              ; preds = %103, %79, %19
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_register_new_vport(%struct.lpfc_hba*, %struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_initial_fdisc(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
