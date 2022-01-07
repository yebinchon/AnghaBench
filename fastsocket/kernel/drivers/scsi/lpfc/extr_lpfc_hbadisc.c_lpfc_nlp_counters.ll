; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, i32, i32)* @lpfc_nlp_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nlp_counters(%struct.lpfc_vport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %9 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %8)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @spin_lock_irq(i32 %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %63 [
    i32 128, label %15
    i32 132, label %21
    i32 135, label %27
    i32 130, label %33
    i32 131, label %39
    i32 129, label %45
    i32 134, label %51
    i32 133, label %57
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %63

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %63

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %63

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %63

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %42 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %63

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %63

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %54 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %63

57:                                               ; preds = %3
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %3, %57, %51, %45, %39, %33, %27, %21, %15
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @spin_unlock_irq(i32 %66)
  ret void
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
