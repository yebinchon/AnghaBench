; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_configure_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.TYPE_3__*, %struct.pch_gbe_hw }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pch_gbe_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"dma addr = 0x%08llx  size = 0x%08x\0A\00", align 1
@PCH_GBE_TX_DMA_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*)* @pch_gbe_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_configure_tx(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca %struct.pch_gbe_adapter*, align 8
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %2, align 8
  %7 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %7, i32 0, i32 1
  store %struct.pch_gbe_hw* %8, %struct.pch_gbe_hw** %3, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %18)
  %20 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 16
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %33 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = call i32 @iowrite32(i64 %31, i32* %35)
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = call i32 @iowrite32(i64 %37, i32* %41)
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = call i32 @iowrite32(i64 %43, i32* %47)
  %49 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i64 @ioread32(i32* %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* @PCH_GBE_TX_DMA_EN, align 8
  %55 = load i64, i64* %6, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @iowrite32(i64 %57, i32* %61)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

declare dso_local i64 @ioread32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
