; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prlo_npr_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prlo_npr_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32 }

@NLP_LOGO_ACC = common dso_local global i32 0, align 4
@ELS_CMD_ACC = common dso_local global i32 0, align 4
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_NPR_ADISC = common dso_local global i32 0, align 4
@ELS_CMD_PLOGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_rcv_prlo_npr_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_rcv_prlo_npr_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %14, %struct.lpfc_iocbq** %10, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @spin_lock_irq(i32 %17)
  %19 = load i32, i32* @NLP_LOGO_ACC, align 4
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @spin_unlock_irq(i32 %26)
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %29 = load i32, i32* @ELS_CMD_ACC, align 4
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %32 = call i32 @lpfc_els_rsp_acc(%struct.lpfc_vport* %28, i32 %29, %struct.lpfc_iocbq* %30, %struct.lpfc_nodelist* %31, i32* null)
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %34 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NLP_DELAY_TMO, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %4
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 3
  %42 = load i64, i64* @jiffies, align 8
  %43 = call i64 @msecs_to_jiffies(i32 1000)
  %44 = add nsw i64 %42, %43
  %45 = call i32 @mod_timer(i32* %41, i64 %44)
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @spin_lock_irq(i32 %48)
  %50 = load i32, i32* @NLP_DELAY_TMO, align 4
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %52 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @NLP_NPR_ADISC, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %58 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @spin_unlock_irq(i32 %63)
  %65 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %83

68:                                               ; preds = %4
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @spin_lock_irq(i32 %71)
  %73 = load i32, i32* @NLP_NPR_ADISC, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %76 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %80 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @spin_unlock_irq(i32 %81)
  br label %83

83:                                               ; preds = %68, %39
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %85 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  ret i32 %86
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_els_rsp_acc(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
