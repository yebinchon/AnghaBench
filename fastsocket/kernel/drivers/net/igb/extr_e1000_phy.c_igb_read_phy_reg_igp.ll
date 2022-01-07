; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_read_phy_reg_igp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_read_phy_reg_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_read_phy_reg_igp(%struct.e1000_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %11, align 8
  %13 = icmp ne i64 (%struct.e1000_hw.1*)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %63

15:                                               ; preds = %3
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.1*
  %23 = call i64 %20(%struct.e1000_hw.1* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %63

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %33 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @igb_write_phy_reg_mdic(%struct.e1000_hw* %32, i32 %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %42, align 8
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %45 = bitcast %struct.e1000_hw* %44 to %struct.e1000_hw.0*
  %46 = call i32 %43(%struct.e1000_hw.0* %45)
  br label %63

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %50 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %50, %51
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @igb_read_phy_reg_mdic(%struct.e1000_hw* %49, i32 %52, i32* %53)
  store i64 %54, i64* %7, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.0*
  %62 = call i32 %59(%struct.e1000_hw.0* %61)
  br label %63

63:                                               ; preds = %48, %38, %26, %14
  %64 = load i64, i64* %7, align 8
  ret i64 %64
}

declare dso_local i64 @igb_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @igb_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
