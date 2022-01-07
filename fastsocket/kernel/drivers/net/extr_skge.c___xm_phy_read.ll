; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c___xm_phy_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c___xm_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32, i64 }

@XM_PHY_ADDR = common dso_local global i32 0, align 4
@XM_PHY_DATA = common dso_local global i32 0, align 4
@SK_PHY_XMAC = common dso_local global i64 0, align 8
@PHY_RETRIES = common dso_local global i32 0, align 4
@XM_MMU_CMD = common dso_local global i32 0, align 4
@XM_MMU_PHY_RDY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*, i32, i32, i32*)* @__xm_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xm_phy_read(%struct.skge_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.skge_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @XM_PHY_ADDR, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %16 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %14, %17
  %19 = call i32 @xm_write16(%struct.skge_hw* %11, i32 %12, i32 %13, i32 %18)
  %20 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @XM_PHY_DATA, align 4
  %23 = call i32 @xm_read16(%struct.skge_hw* %20, i32 %21, i32 %22)
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %26 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SK_PHY_XMAC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %53

31:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @PHY_RETRIES, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @XM_MMU_CMD, align 4
  %40 = call i32 @xm_read16(%struct.skge_hw* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @XM_MMU_PHY_RDY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %53

45:                                               ; preds = %36
  %46 = call i32 @udelay(i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %59

53:                                               ; preds = %44, %30
  %54 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @XM_PHY_DATA, align 4
  %57 = call i32 @xm_read16(%struct.skge_hw* %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
