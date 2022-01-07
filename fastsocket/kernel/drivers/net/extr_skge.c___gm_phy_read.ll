; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c___gm_phy_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c___gm_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32 }

@GM_SMI_CTRL = common dso_local global i32 0, align 4
@GM_SMI_CT_OP_RD = common dso_local global i32 0, align 4
@PHY_RETRIES = common dso_local global i32 0, align 4
@GM_SMI_CT_RD_VAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@GM_SMI_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*, i32, i32, i32*)* @__gm_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gm_phy_read(%struct.skge_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  %13 = load i32, i32* @GM_SMI_CTRL, align 4
  %14 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %15 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @GM_SMI_CT_PHY_AD(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @GM_SMI_CT_REG_AD(i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* @GM_SMI_CT_OP_RD, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @gma_write16(%struct.skge_hw* %11, i32 %12, i32 %13, i32 %22)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %39, %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @PHY_RETRIES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = call i32 @udelay(i32 1)
  %30 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GM_SMI_CTRL, align 4
  %33 = call i32 @gma_read16(%struct.skge_hw* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @GM_SMI_CT_RD_VAL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %45

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %51

45:                                               ; preds = %37
  %46 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @GM_SMI_DATA, align 4
  %49 = call i32 @gma_read16(%struct.skge_hw* %46, i32 %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @gma_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @GM_SMI_CT_PHY_AD(i32) #1

declare dso_local i32 @GM_SMI_CT_REG_AD(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gma_read16(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
