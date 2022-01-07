; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_iommu_flushall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_iommu_flushall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu*)* @iommu_flushall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_flushall(%struct.iommu* %0) #0 {
  %2 = alloca %struct.iommu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.iommu* %0, %struct.iommu** %2, align 8
  %5 = load %struct.iommu*, %struct.iommu** %2, align 8
  %6 = getelementptr inbounds %struct.iommu, %struct.iommu* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.iommu*, %struct.iommu** %2, align 8
  %11 = getelementptr inbounds %struct.iommu, %struct.iommu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @iommu_write(i64 %12, i32 -1)
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.iommu*, %struct.iommu** %2, align 8
  %16 = getelementptr inbounds %struct.iommu, %struct.iommu* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %26, %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @iommu_write(i64 %22, i32 0)
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 8
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %18

29:                                               ; preds = %18
  %30 = load %struct.iommu*, %struct.iommu** %2, align 8
  %31 = getelementptr inbounds %struct.iommu, %struct.iommu* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @iommu_read(i32 %32)
  br label %34

34:                                               ; preds = %29, %9
  ret void
}

declare dso_local i32 @iommu_write(i64, i32) #1

declare dso_local i32 @iommu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
