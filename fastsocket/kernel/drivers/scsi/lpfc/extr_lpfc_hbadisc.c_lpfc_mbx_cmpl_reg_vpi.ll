; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_reg_vpi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_cmpl_reg_vpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.lpfc_vport* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_vport = type { i32, i32, i64, i64, i32, i32 }
%struct.Scsi_Host = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"0912 cmpl_reg_vpi, mb status = 0x%x\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@FC_FABRIC = common dso_local global i32 0, align 4
@FC_PUBLIC_LOOP = common dso_local global i32 0, align 4
@LPFC_VPI_REGISTERED = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@LPFC_VPORT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_8__*)* @lpfc_mbx_cmpl_reg_vpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_cmpl_reg_vpi(%struct.lpfc_hba* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %5, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %12 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %48 [
    i32 17, label %19
    i32 38401, label %19
    i32 38402, label %19
  ]

19:                                               ; preds = %2, %2, %2
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %21 = load i32, i32* @KERN_INFO, align 4
  %22 = load i32, i32* @LOG_NODE, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %28 = load i32, i32* @FC_VPORT_FAILED, align 4
  %29 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %27, i32 %28)
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @spin_lock_irq(i32 %32)
  %34 = load i32, i32* @FC_FABRIC, align 4
  %35 = load i32, i32* @FC_PUBLIC_LOOP, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @spin_unlock_irq(i32 %44)
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %47 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %46, i32 0, i32 5
  store i32 0, i32* %47, align 4
  br label %103

48:                                               ; preds = %2
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @spin_lock_irq(i32 %51)
  %53 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %55 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %61 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @spin_unlock_irq(i32 %66)
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %71 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %48
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %76 = call i32 @lpfc_els_disc_plogi(%struct.lpfc_vport* %75)
  br label %77

77:                                               ; preds = %74, %48
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %79 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %77
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %84 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @spin_lock_irq(i32 %85)
  %87 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @spin_unlock_irq(i32 %95)
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %98 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %97)
  br label %99

99:                                               ; preds = %82, %77
  %100 = load i32, i32* @LPFC_VPORT_READY, align 4
  %101 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %102 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %19
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @mempool_free(%struct.TYPE_8__* %104, i32 %107)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_els_disc_plogi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
