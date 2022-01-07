; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_get_irte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_get_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irte = type { i32 }
%struct.irq_2_iommu = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.irte* }

@irq_2_ir_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_irte(i32 %0, %struct.irte* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irte*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_2_iommu*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.irte* %1, %struct.irte** %5, align 8
  %9 = load %struct.irte*, %struct.irte** %5, align 8
  %10 = icmp ne %struct.irte* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @irq_2_ir_lock, i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.irq_2_iommu* @valid_irq_2_iommu(i32 %15)
  store %struct.irq_2_iommu* %16, %struct.irq_2_iommu** %7, align 8
  %17 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %7, align 8
  %18 = icmp ne %struct.irq_2_iommu* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %20)
  store i32 -1, i32* %3, align 4
  br label %45

22:                                               ; preds = %12
  %23 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %7, align 8
  %24 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %7, align 8
  %27 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.irte*, %struct.irte** %5, align 8
  %31 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %7, align 8
  %32 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.irte*, %struct.irte** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.irte, %struct.irte* %37, i64 %39
  %41 = bitcast %struct.irte* %30 to i8*
  %42 = bitcast %struct.irte* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %22, %19, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.irq_2_iommu* @valid_irq_2_iommu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
