; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli_enable_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LPFC_INTR_ERROR = common dso_local global i32 0, align 4
@LPFC_SLI_REV3 = common dso_local global i32 0, align 4
@MSIX = common dso_local global i64 0, align 8
@NONE = common dso_local global i64 0, align 8
@MSI = common dso_local global i64 0, align 8
@lpfc_sli_intr_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@LPFC_DRIVER_NAME = common dso_local global i32 0, align 4
@INTx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_sli_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_enable_intr(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @LPFC_INTR_ERROR, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %12 = load i32, i32* @LPFC_SLI_REV3, align 4
  %13 = call i32 @lpfc_sli_config_port(%struct.lpfc_hba* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %10
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = call i32 @lpfc_sli_enable_msix(%struct.lpfc_hba* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* @MSIX, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  store i32 2, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %16
  br label %26

26:                                               ; preds = %25, %10
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 1
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %38 = call i32 @lpfc_sli_enable_msi(%struct.lpfc_hba* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* @MSI, align 8
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %30, %27
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @lpfc_sli_intr_handler, align 4
  %59 = load i32, i32* @IRQF_SHARED, align 4
  %60 = load i32, i32* @LPFC_DRIVER_NAME, align 4
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = call i32 @request_irq(i32 %57, i32 %58, i32 %59, i32 %60, %struct.lpfc_hba* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %52
  %66 = load i64, i64* @INTx, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %52
  br label %70

70:                                               ; preds = %69, %46
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @lpfc_sli_config_port(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli_enable_msix(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_enable_msi(%struct.lpfc_hba*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
