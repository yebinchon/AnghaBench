; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, %struct.ldc_iommu }
%struct.ldc_iommu = type { i32 }
%struct.ldc_trans_cookie = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldc_unmap(%struct.ldc_channel* %0, %struct.ldc_trans_cookie* %1, i32 %2) #0 {
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_trans_cookie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ldc_iommu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_trans_cookie* %1, %struct.ldc_trans_cookie** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %13 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %12, i32 0, i32 1
  store %struct.ldc_iommu* %13, %struct.ldc_iommu** %7, align 8
  %14 = load %struct.ldc_iommu*, %struct.ldc_iommu** %7, align 8
  %15 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %42, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.ldc_trans_cookie*, %struct.ldc_trans_cookie** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ldc_trans_cookie, %struct.ldc_trans_cookie* %23, i64 %25
  %27 = getelementptr inbounds %struct.ldc_trans_cookie, %struct.ldc_trans_cookie* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ldc_trans_cookie*, %struct.ldc_trans_cookie** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ldc_trans_cookie, %struct.ldc_trans_cookie* %29, i64 %31
  %33 = getelementptr inbounds %struct.ldc_trans_cookie, %struct.ldc_trans_cookie* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %36 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ldc_iommu*, %struct.ldc_iommu** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @free_npages(i32 %37, %struct.ldc_iommu* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %22
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load %struct.ldc_iommu*, %struct.ldc_iommu** %7, align 8
  %47 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %46, i32 0, i32 0
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @free_npages(i32, %struct.ldc_iommu*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
