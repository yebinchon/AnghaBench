; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_fcf_rr_next_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_sli4_fcf_rr_next_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.TYPE_6__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@LPFC_FCOE_FCF_NEXT_NONE = common dso_local global i32 0, align 4
@HBA_DEVLOSS_TMO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"2872 Devloss tmo with no eligible FCF, unregister in-use FCF (x%x) and rescan FCF table\0A\00", align 1
@FCF_RR_INPROG = common dso_local global i32 0, align 4
@FCF_AVAILABLE = common dso_local global i32 0, align 4
@FCF_SCAN_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"2865 No FCF available, stop roundrobin FCF failover and change port state:x%x/x%x\0A\00", align 1
@LPFC_VPORT_UNKNOWN = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"2794 Try FLOGI roundrobin FCF failover to (x%x)\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"2761 FLOGI roundrobin FCF failover failed (rc:x%x) to read FCF (x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_fcf_rr_next_proc(%struct.lpfc_vport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 0
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  store %struct.lpfc_hba* %10, %struct.lpfc_hba** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LPFC_FCOE_FCF_NEXT_NONE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %2
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 3
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HBA_DEVLOSS_TMO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %14
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 3
  %27 = call i32 @spin_unlock_irq(i32* %26)
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %29 = load i32, i32* @KERN_INFO, align 4
  %30 = load i32, i32* @LOG_FIP, align 4
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %38 = call i32 @lpfc_unregister_fcf_rescan(%struct.lpfc_hba* %37)
  br label %102

39:                                               ; preds = %14
  %40 = load i32, i32* @FCF_RR_INPROG, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @FCF_AVAILABLE, align 4
  %47 = load i32, i32* @FCF_SCAN_DONE, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 3
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %59 = load i32, i32* @KERN_INFO, align 4
  %60 = load i32, i32* @LOG_FIP, align 4
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @LPFC_VPORT_UNKNOWN, align 4
  %67 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* @LPFC_VPORT_UNKNOWN, align 4
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  br label %102

73:                                               ; preds = %2
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %75 = load i32, i32* @KERN_INFO, align 4
  %76 = load i32, i32* @LOG_FIP, align 4
  %77 = load i32, i32* @LOG_ELS, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %74, i32 %75, i32 %78, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @lpfc_sli4_fcf_rr_read_fcf_rec(%struct.lpfc_hba* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %73
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %88 = load i32, i32* @KERN_WARNING, align 4
  %89 = load i32, i32* @LOG_FIP, align 4
  %90 = load i32, i32* @LOG_ELS, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %97)
  br label %100

99:                                               ; preds = %73
  br label %102

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %105

102:                                              ; preds = %99, %39, %24
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %104 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %103)
  store i32 1, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %101
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_unregister_fcf_rescan(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_fcf_rr_read_fcf_rec(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
