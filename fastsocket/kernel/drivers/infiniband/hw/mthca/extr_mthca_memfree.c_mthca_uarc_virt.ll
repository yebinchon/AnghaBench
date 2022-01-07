; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_uarc_virt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_memfree.c_mthca_uarc_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mthca_uar = type { i32 }

@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mthca_dev*, %struct.mthca_uar*, i32)* @mthca_uarc_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mthca_uarc_virt(%struct.mthca_dev* %0, %struct.mthca_uar* %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_uar*, align 8
  %6 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_uar* %1, %struct.mthca_uar** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mthca_uar*, %struct.mthca_uar** %5, align 8
  %12 = getelementptr inbounds %struct.mthca_uar, %struct.mthca_uar* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %13, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %10, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
