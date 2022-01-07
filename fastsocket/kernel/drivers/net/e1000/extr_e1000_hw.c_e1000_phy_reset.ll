; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"e1000_phy_reset\00", align 1
@PHY_CTRL = common dso_local global i32 0, align 4
@MII_CR_RESET = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_phy_reset(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %18 [
    i32 128, label %10
  ]

10:                                               ; preds = %1
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = call i32 @e1000_phy_hw_reset(%struct.e1000_hw* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %10
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = load i32, i32* @PHY_CTRL, align 4
  %21 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %19, i32 %20, i32* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %18
  %27 = load i32, i32* @MII_CR_RESET, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* @PHY_CTRL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %26
  %39 = call i32 @udelay(i32 1)
  br label %40

40:                                               ; preds = %38, %17
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = call i32 @e1000_phy_init_script(%struct.e1000_hw* %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %36, %24, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_phy_hw_reset(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_phy_init_script(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
