; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_scmd_to_wqidx_distr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_scmd_to_wqidx_distr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.lpfc_vector_map_info* }
%struct.lpfc_vector_map_info = type { i32 }

@LPFC_FCP_SCHED_BY_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_scmd_to_wqidx_distr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_scmd_to_wqidx_distr(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vector_map_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LPFC_FCP_SCHED_BY_CPU, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = call i32 (...) @smp_processor_id()
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %23, align 8
  store %struct.lpfc_vector_map_info* %24, %struct.lpfc_vector_map_info** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %4, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %26, i64 %27
  store %struct.lpfc_vector_map_info* %28, %struct.lpfc_vector_map_info** %4, align 8
  %29 = load %struct.lpfc_vector_map_info*, %struct.lpfc_vector_map_info** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_vector_map_info, %struct.lpfc_vector_map_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %2, align 4
  br label %44

32:                                               ; preds = %12
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %1
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 2
  %37 = call i32 @atomic_add_return(i32 1, i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = srem i32 %38, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %34, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
