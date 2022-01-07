; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_configure_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.TYPE_3__*, %struct.pch_gbe_hw }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pch_gbe_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"dma adr = 0x%08llx  size = 0x%08x\0A\00", align 1
@PCH_GBE_RX_DMA_EN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"MAC_RX_EN reg = 0x%08x  DMA_CTRL reg = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*)* @pch_gbe_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_configure_rx(%struct.pch_gbe_adapter* %0) #0 {
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
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %18)
  %20 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %21 = call i32 @pch_gbe_mac_force_mac_fc(%struct.pch_gbe_hw* %20)
  %22 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %23 = call i32 @pch_gbe_disable_mac_rx(%struct.pch_gbe_hw* %22)
  %24 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %25 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = call i64 @ioread32(i32* %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* @PCH_GBE_RX_DMA_EN, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %35 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = call i32 @iowrite32(i64 %33, i32* %37)
  %39 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %40 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = call i64 @ioread32(i32* %42)
  %44 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = call i64 @ioread32(i32* %47)
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %48)
  %50 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %4, align 8
  %55 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %59, 16
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %63 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = call i32 @iowrite32(i64 %61, i32* %65)
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %69 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = call i32 @iowrite32(i64 %67, i32* %71)
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %73, %74
  %76 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @iowrite32(i64 %75, i32* %79)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @pch_gbe_mac_force_mac_fc(%struct.pch_gbe_hw*) #1

declare dso_local i32 @pch_gbe_disable_mac_rx(%struct.pch_gbe_hw*) #1

declare dso_local i64 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
