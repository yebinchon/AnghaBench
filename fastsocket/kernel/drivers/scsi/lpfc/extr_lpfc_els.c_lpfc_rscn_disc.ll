; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rscn_disc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_rscn_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*)* @lpfc_rscn_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_rscn_disc(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %3 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %4 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %3)
  %5 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %11 = call i64 @lpfc_els_disc_plogi(%struct.lpfc_vport* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %18

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %1
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %17 = call i32 @lpfc_end_rscn(%struct.lpfc_vport* %16)
  br label %18

18:                                               ; preds = %15, %13
  ret void
}

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_els_disc_plogi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_end_rscn(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
