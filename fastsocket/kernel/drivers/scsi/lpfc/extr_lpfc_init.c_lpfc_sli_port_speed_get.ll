; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli_port_speed_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli_port_speed_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_port_speed_get(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %6 = call i32 @lpfc_is_link_up(%struct.lpfc_hba* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %19 [
    i32 131, label %13
    i32 130, label %14
    i32 129, label %15
    i32 128, label %16
    i32 133, label %17
    i32 132, label %18
  ]

13:                                               ; preds = %9
  store i32 1000, i32* %4, align 4
  br label %20

14:                                               ; preds = %9
  store i32 2000, i32* %4, align 4
  br label %20

15:                                               ; preds = %9
  store i32 4000, i32* %4, align 4
  br label %20

16:                                               ; preds = %9
  store i32 8000, i32* %4, align 4
  br label %20

17:                                               ; preds = %9
  store i32 10000, i32* %4, align 4
  br label %20

18:                                               ; preds = %9
  store i32 16000, i32* %4, align 4
  br label %20

19:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @lpfc_is_link_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
