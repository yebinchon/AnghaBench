; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_plogi_npr_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_plogi_npr_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.lpfc_iocbq* }
%struct.Scsi_Host = type { i32 }

@NLP_DEFER_RM = common dso_local global i32 0, align 4
@NLP_STE_FREED_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_plogi_npr_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_plogi_npr_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %15 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %17, %struct.lpfc_iocbq** %10, align 8
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %20, align 8
  store %struct.lpfc_iocbq* %21, %struct.lpfc_iocbq** %11, align 8
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 0
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %12, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %4
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @spin_lock_irq(i32 %31)
  %33 = load i32, i32* @NLP_DEFER_RM, align 4
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %35 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @spin_unlock_irq(i32 %40)
  %42 = load i32, i32* @NLP_STE_FREED_NODE, align 4
  store i32 %42, i32* %5, align 4
  br label %47

43:                                               ; preds = %4
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %45 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %28
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
