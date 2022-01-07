; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_main.c_wl127x_prepare_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_main.c_wl127x_prepare_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.wl12xx_priv*, %struct.wl1271_acx_mem_map*, %struct.TYPE_3__ }
%struct.wl12xx_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.wl1271_acx_mem_map = type { i32 }
%struct.TYPE_3__ = type { i64 }

@CHIP_ID_128X_PG20 = common dso_local global i64 0, align 8
@RX_MEM_BLOCK_MASK = common dso_local global i32 0, align 4
@WL1271_SLV_REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i32, i32)* @wl127x_prepare_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl127x_prepare_read(%struct.wl1271* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1271_acx_mem_map*, align 8
  %10 = alloca %struct.wl12xx_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_ID_128X_PG20, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %3
  %19 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 1
  %21 = load %struct.wl1271_acx_mem_map*, %struct.wl1271_acx_mem_map** %20, align 8
  store %struct.wl1271_acx_mem_map* %21, %struct.wl1271_acx_mem_map** %9, align 8
  %22 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %23, align 8
  store %struct.wl12xx_priv* %24, %struct.wl12xx_priv** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @RX_MEM_BLOCK_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.wl1271_acx_mem_map*, %struct.wl1271_acx_mem_map** %9, align 8
  %32 = getelementptr inbounds %struct.wl1271_acx_mem_map, %struct.wl1271_acx_mem_map* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  %35 = add nsw i64 %30, %34
  %36 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %10, align 8
  %37 = getelementptr inbounds %struct.wl12xx_priv, %struct.wl12xx_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 8
  %40 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %10, align 8
  %41 = getelementptr inbounds %struct.wl12xx_priv, %struct.wl12xx_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 4
  %46 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %10, align 8
  %47 = getelementptr inbounds %struct.wl12xx_priv, %struct.wl12xx_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 %45, i64* %49, align 8
  %50 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %51 = load i32, i32* @WL1271_SLV_REG_DATA, align 4
  %52 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %10, align 8
  %53 = getelementptr inbounds %struct.wl12xx_priv, %struct.wl12xx_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = call i32 @wlcore_write(%struct.wl1271* %50, i32 %51, %struct.TYPE_4__* %54, i32 16, i32 0)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %18
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %18
  br label %61

61:                                               ; preds = %60, %3
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @wlcore_write(%struct.wl1271*, i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
