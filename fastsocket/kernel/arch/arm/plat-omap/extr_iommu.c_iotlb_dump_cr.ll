; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu.c_iotlb_dump_cr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu.c_iotlb_dump_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.iommu*, %struct.cr_regs*, i8*)* }
%struct.iommu = type { i32 }
%struct.cr_regs = type { i32 }

@arch_iommu = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu*, %struct.cr_regs*, i8*)* @iotlb_dump_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iotlb_dump_cr(%struct.iommu* %0, %struct.cr_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.iommu*, align 8
  %5 = alloca %struct.cr_regs*, align 8
  %6 = alloca i8*, align 8
  store %struct.iommu* %0, %struct.iommu** %4, align 8
  store %struct.cr_regs* %1, %struct.cr_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.cr_regs*, %struct.cr_regs** %5, align 8
  %8 = icmp ne %struct.cr_regs* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i1 [ true, %3 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arch_iommu, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.iommu*, %struct.cr_regs*, i8*)*, i32 (%struct.iommu*, %struct.cr_regs*, i8*)** %18, align 8
  %20 = load %struct.iommu*, %struct.iommu** %4, align 8
  %21 = load %struct.cr_regs*, %struct.cr_regs** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 %19(%struct.iommu* %20, %struct.cr_regs* %21, i8* %22)
  ret i32 %23
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
