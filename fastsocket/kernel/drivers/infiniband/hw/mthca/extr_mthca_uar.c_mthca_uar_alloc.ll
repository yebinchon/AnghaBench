; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_uar.c_mthca_uar_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_uar.c_mthca_uar_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mthca_uar = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_uar_alloc(%struct.mthca_dev* %0, %struct.mthca_uar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_uar*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_uar* %1, %struct.mthca_uar** %5, align 8
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %7 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @mthca_alloc(i32* %8)
  %10 = load %struct.mthca_uar*, %struct.mthca_uar** %5, align 8
  %11 = getelementptr inbounds %struct.mthca_uar, %struct.mthca_uar* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.mthca_uar*, %struct.mthca_uar** %5, align 8
  %13 = getelementptr inbounds %struct.mthca_uar, %struct.mthca_uar* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_resource_start(i32 %22, i32 2)
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = load %struct.mthca_uar*, %struct.mthca_uar** %5, align 8
  %27 = getelementptr inbounds %struct.mthca_uar, %struct.mthca_uar* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load %struct.mthca_uar*, %struct.mthca_uar** %5, align 8
  %31 = getelementptr inbounds %struct.mthca_uar, %struct.mthca_uar* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @mthca_alloc(i32*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
