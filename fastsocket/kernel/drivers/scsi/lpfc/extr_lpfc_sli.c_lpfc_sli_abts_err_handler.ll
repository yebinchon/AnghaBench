; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abts_err_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abts_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_vport = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"3092 Port generated ABTS async event on vpi %d rpi %d status 0x%x\0A\00", align 1
@IOSTAT_LOCAL_REJECT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"3095 Event Context not found, no action on vpi %d rpi %d status 0x%x, reason 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*)* @lpfc_sli_abts_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli_abts_err_handler(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_iocbq*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %4, align 8
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.lpfc_vport* null, %struct.lpfc_vport** %8, align 8
  %9 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = load i32, i32* @KERN_WARNING, align 4
  %21 = load i32, i32* @LOG_SLI, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %27)
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.lpfc_vport* @lpfc_find_vport_by_vpid(%struct.lpfc_hba* %29, i32 %30)
  store %struct.lpfc_vport* %31, %struct.lpfc_vport** %8, align 8
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %33 = icmp ne %struct.lpfc_vport* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.lpfc_nodelist* @lpfc_findnode_rpi(%struct.lpfc_vport* %36, i32 %37)
  store %struct.lpfc_nodelist* %38, %struct.lpfc_nodelist** %5, align 8
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %40 = icmp ne %struct.lpfc_nodelist* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %43 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %35
  br label %58

46:                                               ; preds = %41
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IOSTAT_LOCAL_REJECT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %56 = call i32 @lpfc_sli_abts_recover_port(%struct.lpfc_vport* %54, %struct.lpfc_nodelist* %55)
  br label %57

57:                                               ; preds = %53, %46
  br label %73

58:                                               ; preds = %45, %34
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = load i32, i32* @KERN_INFO, align 4
  %61 = load i32, i32* @LOG_SLI, align 4
  %62 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %4, align 8
  %67 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %58, %57
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local %struct.lpfc_vport* @lpfc_find_vport_by_vpid(%struct.lpfc_hba*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_rpi(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_sli_abts_recover_port(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
