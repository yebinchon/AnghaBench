; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_setup_copper_link_82575.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_setup_copper_link_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }

@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_82580_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@E1000_82580_PM_GO_LINKD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error resetting the PHY.\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @igb_setup_copper_link_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igb_setup_copper_link_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load i32, i32* @E1000_CTRL, align 4
  %7 = call i32 @rd32(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @E1000_CTRL_SLU, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %12 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @E1000_CTRL, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @wr32(i32 %17, i32 %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %34 [
    i32 135, label %24
    i32 132, label %24
    i32 134, label %24
    i32 133, label %24
  ]

24:                                               ; preds = %1, %1, %1, %1
  %25 = load i32, i32* @E1000_82580_PHY_POWER_MGMT, align 4
  %26 = call i32 @rd32(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @E1000_82580_PM_GO_LINKD, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @E1000_82580_PHY_POWER_MGMT, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @wr32(i32 %31, i32 %32)
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %24
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = call i64 @igb_setup_serdes_link_82575(%struct.e1000_hw* %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %99

41:                                               ; preds = %35
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = call i64 @igb_sgmii_active_82575(%struct.e1000_hw* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = call i32 @msleep(i32 300)
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %56, align 8
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = bitcast %struct.e1000_hw* %58 to %struct.e1000_hw.0*
  %60 = call i64 %57(%struct.e1000_hw.0* %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = call i32 @hw_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %99

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %45, %41
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %89 [
    i32 130, label %71
    i32 128, label %71
    i32 129, label %83
    i32 131, label %86
  ]

71:                                               ; preds = %66, %66
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %79 [
    i32 138, label %76
    i32 137, label %76
    i32 136, label %76
    i32 139, label %76
  ]

76:                                               ; preds = %71, %71, %71, %71
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %78 = call i64 @igb_copper_link_setup_m88_gen2(%struct.e1000_hw* %77)
  store i64 %78, i64* %4, align 8
  br label %82

79:                                               ; preds = %71
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = call i64 @igb_copper_link_setup_m88(%struct.e1000_hw* %80)
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %79, %76
  br label %92

83:                                               ; preds = %66
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %85 = call i64 @igb_copper_link_setup_igp(%struct.e1000_hw* %84)
  store i64 %85, i64* %4, align 8
  br label %92

86:                                               ; preds = %66
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = call i64 @igb_copper_link_setup_82580(%struct.e1000_hw* %87)
  store i64 %88, i64* %4, align 8
  br label %92

89:                                               ; preds = %66
  %90 = load i64, i64* @E1000_ERR_PHY, align 8
  %91 = sub nsw i64 0, %90
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %89, %86, %83, %82
  %93 = load i64, i64* %4, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %99

96:                                               ; preds = %92
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %98 = call i64 @igb_setup_copper_link(%struct.e1000_hw* %97)
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %96, %95, %63, %40
  %100 = load i64, i64* %4, align 8
  ret i64 %100
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i64 @igb_setup_serdes_link_82575(%struct.e1000_hw*) #1

declare dso_local i64 @igb_sgmii_active_82575(%struct.e1000_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i64 @igb_copper_link_setup_m88_gen2(%struct.e1000_hw*) #1

declare dso_local i64 @igb_copper_link_setup_m88(%struct.e1000_hw*) #1

declare dso_local i64 @igb_copper_link_setup_igp(%struct.e1000_hw*) #1

declare dso_local i64 @igb_copper_link_setup_82580(%struct.e1000_hw*) #1

declare dso_local i64 @igb_setup_copper_link(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
