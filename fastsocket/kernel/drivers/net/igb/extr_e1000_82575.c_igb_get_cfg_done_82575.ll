; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_get_cfg_done_82575.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_get_cfg_done_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@PHY_CFG_TIMEOUT = common dso_local global i64 0, align 8
@E1000_NVM_CFG_DONE_PORT_0 = common dso_local global i32 0, align 4
@E1000_NVM_CFG_DONE_PORT_1 = common dso_local global i32 0, align 4
@E1000_FUNC_2 = common dso_local global i32 0, align 4
@E1000_NVM_CFG_DONE_PORT_2 = common dso_local global i32 0, align 4
@E1000_FUNC_3 = common dso_local global i32 0, align 4
@E1000_NVM_CFG_DONE_PORT_3 = common dso_local global i32 0, align 4
@E1000_EEMNGCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MNG configuration cycle has not completed.\0A\00", align 1
@E1000_EECD = common dso_local global i32 0, align 4
@E1000_EECD_PRES = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_get_cfg_done_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_get_cfg_done_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i64, i64* @PHY_CFG_TIMEOUT, align 8
  store i64 %6, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_0, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_1, align 4
  store i32 %14, i32* %5, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @E1000_FUNC_2, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_2, align 4
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @E1000_FUNC_3, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_3, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %24
  br label %34

34:                                               ; preds = %33, %22
  br label %35

35:                                               ; preds = %34, %13
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* @E1000_EEMNGCTL, align 4
  %41 = call i32 @rd32(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %50

46:                                               ; preds = %39
  %47 = call i32 @msleep(i32 1)
  %48 = load i64, i64* %3, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %3, align 8
  br label %36

50:                                               ; preds = %45, %36
  %51 = load i64, i64* %3, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 @hw_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* @E1000_EECD, align 4
  %57 = call i32 @rd32(i32 %56)
  %58 = load i32, i32* @E1000_EECD_PRES, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @e1000_phy_igp_3, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = call i32 @igb_phy_init_script_igp3(%struct.e1000_hw* %69)
  br label %71

71:                                               ; preds = %68, %61, %55
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @igb_phy_init_script_igp3(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
