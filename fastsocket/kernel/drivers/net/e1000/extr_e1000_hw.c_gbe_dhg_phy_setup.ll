; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_gbe_dhg_phy_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_gbe_dhg_phy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"e1000_copper_link_rtl_setup failed!\0A\00", align 1
@CTL_AUX = common dso_local global i32 0, align 4
@E1000_CTL_AUX_RMII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error Resetting the PHY\0A\00", align 1
@E1000_ERR_PHY_TYPE = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @gbe_dhg_phy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbe_dhg_phy_setup(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %46 [
    i32 128, label %9
    i32 129, label %18
  ]

9:                                                ; preds = %1
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = call i32 @e1000_copper_link_rtl_setup(%struct.e1000_hw* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %9
  br label %49

18:                                               ; preds = %1
  %19 = load i32, i32* @CTL_AUX, align 4
  %20 = call i32 @er32(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @E1000_CTL_AUX_RMII, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @CTL_AUX, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ew32(i32 %24, i32 %25)
  %27 = call i32 (...) @E1000_WRITE_FLUSH()
  %28 = load i32, i32* @CTL_AUX, align 4
  %29 = call i32 @er32(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, -3
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @CTL_AUX, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ew32(i32 %34, i32 %35)
  %37 = call i32 (...) @E1000_WRITE_FLUSH()
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = call i32 @e1000_copper_link_rtl_setup(%struct.e1000_hw* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %18
  br label %49

46:                                               ; preds = %1
  %47 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @E1000_ERR_PHY_TYPE, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %45, %17
  %50 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %46, %42, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @e1000_copper_link_rtl_setup(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
