; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_debugfs.c_lpfc_debug_dump_all_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_debugfs.c_lpfc_debug_dump_all_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_debug_dump_all_queues(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = call i32 @lpfc_debug_dump_mbx_wq(%struct.lpfc_hba* %4)
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = call i32 @lpfc_debug_dump_els_wq(%struct.lpfc_hba* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %18, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @lpfc_debug_dump_fcp_wq(%struct.lpfc_hba* %15, i32 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = call i32 @lpfc_debug_dump_hdr_rq(%struct.lpfc_hba* %22)
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = call i32 @lpfc_debug_dump_dat_rq(%struct.lpfc_hba* %24)
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = call i32 @lpfc_debug_dump_mbx_cq(%struct.lpfc_hba* %26)
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = call i32 @lpfc_debug_dump_els_cq(%struct.lpfc_hba* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %40, %21
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @lpfc_debug_dump_fcp_cq(%struct.lpfc_hba* %37, i32 %38)
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %30

43:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %54, %43
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @lpfc_debug_dump_hba_eq(%struct.lpfc_hba* %51, i32 %52)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %44

57:                                               ; preds = %44
  ret void
}

declare dso_local i32 @lpfc_debug_dump_mbx_wq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_debug_dump_els_wq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_debug_dump_fcp_wq(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_debug_dump_hdr_rq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_debug_dump_dat_rq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_debug_dump_mbx_cq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_debug_dump_els_cq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_debug_dump_fcp_cq(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_debug_dump_hba_eq(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
