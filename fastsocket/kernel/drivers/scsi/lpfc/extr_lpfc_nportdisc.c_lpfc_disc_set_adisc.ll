; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_disc_set_adisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_disc_set_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_NPR_ADISC = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*)* @lpfc_disc_set_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_disc_set_adisc(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %8 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %7)
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %6, align 8
  %9 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %10 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @NLP_NPR_ADISC, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FC_PT2PT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %22
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FC_RSCN_MODE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %43 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NLP_FCP_TARGET, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %48, %34
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @spin_lock_irq(i32 %58)
  %60 = load i32, i32* @NLP_NPR_ADISC, align 4
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @spin_unlock_irq(i32 %67)
  store i32 1, i32* %3, align 4
  br label %80

69:                                               ; preds = %48, %41
  br label %70

70:                                               ; preds = %69, %22
  %71 = load i32, i32* @NLP_NPR_ADISC, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %74 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %78 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %79 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %77, %struct.lpfc_nodelist* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %70, %55, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
