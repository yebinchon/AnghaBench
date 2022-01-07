; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_qi_flush_iec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_qi_flush_iec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }
%struct.qi_desc = type { i32, i64 }

@QI_IEC_TYPE = common dso_local global i32 0, align 4
@QI_IEC_SELECTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*, i32, i32)* @qi_flush_iec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qi_flush_iec(%struct.intel_iommu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qi_desc, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @QI_IEC_IIDEX(i32 %8)
  %10 = load i32, i32* @QI_IEC_TYPE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @QI_IEC_IM(i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @QI_IEC_SELECTIVE, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.qi_desc, %struct.qi_desc* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.qi_desc, %struct.qi_desc* %7, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %20 = call i32 @qi_submit_sync(%struct.qi_desc* %7, %struct.intel_iommu* %19)
  ret i32 %20
}

declare dso_local i32 @QI_IEC_IIDEX(i32) #1

declare dso_local i32 @QI_IEC_IM(i32) #1

declare dso_local i32 @qi_submit_sync(%struct.qi_desc*, %struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
