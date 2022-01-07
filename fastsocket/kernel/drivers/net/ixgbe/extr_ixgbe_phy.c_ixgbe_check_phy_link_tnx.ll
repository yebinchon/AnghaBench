; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_check_phy_link_tnx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_check_phy_link_tnx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@IXGBE_MDIO_VENDOR_SPECIFIC_1_LINK_STATUS = common dso_local global i32 0, align 4
@IXGBE_MDIO_VENDOR_SPECIFIC_1_SPEED_STATUS = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_check_phy_link_tnx(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 10, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %51, %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = call i32 @udelay(i32 10)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %25, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %28 = bitcast %struct.ixgbe_hw* %27 to %struct.ixgbe_hw.0*
  %29 = load i32, i32* @MDIO_STAT1, align 4
  %30 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %31 = call i32 %26(%struct.ixgbe_hw.0* %28, i32 %29, i32 %30, i32* %12)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_LINK_STATUS, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_SPEED_STATUS, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_LINK_STATUS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %20
  %42 = load i32*, i32** %6, align 8
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @IXGBE_MDIO_VENDOR_SPECIFIC_1_SPEED_STATUS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %41
  br label %54

50:                                               ; preds = %20
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %16

54:                                               ; preds = %49, %16
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
