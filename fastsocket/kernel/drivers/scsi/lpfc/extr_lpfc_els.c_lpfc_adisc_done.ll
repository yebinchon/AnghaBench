; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_adisc_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_adisc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64, i64, i64, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64 }
%struct.Scsi_Host = type { i32 }

@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@FC_ABORT_DISCOVERY = common dso_local global i32 0, align 4
@FC_NDISC_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*)* @lpfc_adisc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_adisc_done(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %5 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %6 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %7, i32 0, i32 5
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  store %struct.lpfc_hba* %9, %struct.lpfc_hba** %4, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FC_RSCN_MODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LPFC_SLI_REV4, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %32 = call i32 @lpfc_issue_reg_vpi(%struct.lpfc_hba* %30, %struct.lpfc_vport* %31)
  br label %98

33:                                               ; preds = %23, %16, %1
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %35 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LPFC_VPORT_READY, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %95

39:                                               ; preds = %33
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %41 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %48 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %46, %struct.lpfc_vport* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %51 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FC_ABORT_DISCOVERY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %91, label %56

56:                                               ; preds = %49
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %58 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %60 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %65 = call i32 @lpfc_els_disc_plogi(%struct.lpfc_vport* %64)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %68 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %66
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @spin_lock_irq(i32 %74)
  %76 = load i32, i32* @FC_NDISC_ACTIVE, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %79 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @spin_unlock_irq(i32 %84)
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %87 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %86)
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %89 = call i32 @lpfc_end_rscn(%struct.lpfc_vport* %88)
  br label %90

90:                                               ; preds = %71, %66
  br label %91

91:                                               ; preds = %90, %49
  %92 = load i64, i64* @LPFC_VPORT_READY, align 8
  %93 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %94 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  br label %98

95:                                               ; preds = %33
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %97 = call i32 @lpfc_rscn_disc(%struct.lpfc_vport* %96)
  br label %98

98:                                               ; preds = %29, %95, %91
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_reg_vpi(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_disc_plogi(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_end_rscn(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_rscn_disc(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
