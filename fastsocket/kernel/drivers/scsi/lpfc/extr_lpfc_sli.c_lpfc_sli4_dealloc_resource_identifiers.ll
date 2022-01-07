; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_dealloc_resource_identifiers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_dealloc_resource_identifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@LPFC_RSC_TYPE_FCOE_VPI = common dso_local global i32 0, align 4
@LPFC_RSC_TYPE_FCOE_RPI = common dso_local global i32 0, align 4
@LPFC_RSC_TYPE_FCOE_XRI = common dso_local global i32 0, align 4
@LPFC_RSC_TYPE_FCOE_VFI = common dso_local global i32 0, align 4
@lpfc_vpi_rsrc_rdy = common dso_local global i32 0, align 4
@lpfc_vfi_rsrc_rdy = common dso_local global i32 0, align 4
@lpfc_idx_rsrc_rdy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_dealloc_resource_identifiers(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %3 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %4 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VPI, align 4
  %11 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %9, i32 %10)
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = load i32, i32* @LPFC_RSC_TYPE_FCOE_RPI, align 4
  %14 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %12, i32 %13)
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = load i32, i32* @LPFC_RSC_TYPE_FCOE_XRI, align 4
  %17 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %15, i32 %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = load i32, i32* @LPFC_RSC_TYPE_FCOE_VFI, align 4
  %20 = call i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba* %18, i32 %19)
  br label %69

21:                                               ; preds = %1
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @kfree(i32 %32)
  %34 = load i32, i32* @lpfc_vpi_rsrc_rdy, align 4
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @bf_set(i32 %34, i32* %37, i32 0)
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @kfree(i32 %42)
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @kfree(i32 %52)
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @kfree(i32 %57)
  %59 = load i32, i32* @lpfc_vfi_rsrc_rdy, align 4
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @bf_set(i32 %59, i32* %62, i32 0)
  %64 = load i32, i32* @lpfc_idx_rsrc_rdy, align 4
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @bf_set(i32 %64, i32* %67, i32 0)
  br label %69

69:                                               ; preds = %21, %8
  ret i32 0
}

declare dso_local i32 @lpfc_sli4_dealloc_extent(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @bf_set(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
