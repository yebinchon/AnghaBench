; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_bar2_register_memmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_bar2_register_memmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@LPFC_VIR_FUNC_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LPFC_VFR_PAGE_SIZE = common dso_local global i32 0, align 4
@LPFC_ULP0_RQ_DOORBELL = common dso_local global i64 0, align 8
@LPFC_ULP0_WQ_DOORBELL = common dso_local global i64 0, align 8
@LPFC_EQCQ_DOORBELL = common dso_local global i64 0, align 8
@LPFC_MQ_DOORBELL = common dso_local global i64 0, align 8
@LPFC_BMBX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_sli4_bar2_register_memmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bar2_register_memmap(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @LPFC_VIR_FUNC_MAX, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %83

12:                                               ; preds = %2
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @LPFC_VFR_PAGE_SIZE, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  %22 = load i64, i64* @LPFC_ULP0_RQ_DOORBELL, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i64 %23, i64* %26, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @LPFC_VFR_PAGE_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = load i64, i64* @LPFC_ULP0_WQ_DOORBELL, align 8
  %37 = add nsw i64 %35, %36
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store i64 %37, i64* %40, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @LPFC_VFR_PAGE_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = load i64, i64* @LPFC_EQCQ_DOORBELL, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i64 %51, i64* %54, align 8
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @LPFC_VFR_PAGE_SIZE, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = load i64, i64* @LPFC_MQ_DOORBELL, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i64 %65, i64* %68, align 8
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @LPFC_VFR_PAGE_SIZE, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %72, %76
  %78 = load i64, i64* @LPFC_BMBX, align 8
  %79 = add nsw i64 %77, %78
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %12, %9
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
