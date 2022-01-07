; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_enable_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.lpfc_hba* }
%struct.TYPE_4__ = type { i32 }

@LPFC_INTR_ERROR = common dso_local global i32 0, align 4
@MSIX = common dso_local global i64 0, align 8
@NONE = common dso_local global i64 0, align 8
@MSI = common dso_local global i64 0, align 8
@lpfc_sli4_intr_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@LPFC_DRIVER_NAME = common dso_local global i32 0, align 4
@INTx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32)* @lpfc_sli4_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_enable_intr(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @LPFC_INTR_ERROR, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = call i32 @lpfc_sli4_enable_msix(%struct.lpfc_hba* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* @MSIX, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  store i32 2, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  br label %24

24:                                               ; preds = %23, %11
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = call i32 @lpfc_sli4_enable_msi(%struct.lpfc_hba* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @MSI, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %28, %25
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %44
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @lpfc_sli4_intr_handler, align 4
  %57 = load i32, i32* @IRQF_SHARED, align 4
  %58 = load i32, i32* @LPFC_DRIVER_NAME, align 4
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = call i32 @request_irq(i32 %55, i32 %56, i32 %57, i32 %58, %struct.lpfc_hba* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %105, label %63

63:                                               ; preds = %50
  %64 = load i64, i64* @INTx, align 8
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %101, %63
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %74, i32* %82, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store %struct.lpfc_hba* %83, %struct.lpfc_hba** %91, align 8
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = call i32 @atomic_set(i32* %99, i32 1)
  br label %101

101:                                              ; preds = %73
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %67

104:                                              ; preds = %67
  br label %105

105:                                              ; preds = %104, %50
  br label %106

106:                                              ; preds = %105, %44
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @lpfc_sli4_enable_msix(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_enable_msi(%struct.lpfc_hba*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.lpfc_hba*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
