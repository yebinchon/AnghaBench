; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_read_phy_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_read_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_read_phy_reg\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_phy_igp, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @e1000_write_phy_reg_ex(%struct.e1000_hw* %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %15, %3
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %31 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %31, %32
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @e1000_read_phy_reg_ex(%struct.e1000_hw* %30, i32 %33, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_write_phy_reg_ex(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_read_phy_reg_ex(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
