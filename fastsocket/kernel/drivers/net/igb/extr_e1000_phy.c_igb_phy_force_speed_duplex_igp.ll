; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_phy_force_speed_duplex_igp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_phy_force_speed_duplex_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@PHY_CONTROL = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_CTRL = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_AUTO_MDIX = common dso_local global i32 0, align 4
@IGP01E1000_PSCR_FORCE_MDI_MDIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"IGP PSCR: %X\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Waiting for forced speed/duplex link on IGP phy.\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Link taking longer than expected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_phy_force_speed_duplex_igp(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %3, align 8
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %11, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = bitcast %struct.e1000_hw* %13 to %struct.e1000_hw.1*
  %15 = load i32, i32* @PHY_CONTROL, align 4
  %16 = call i64 %12(%struct.e1000_hw.1* %14, i32 %15, i32* %5)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %98

20:                                               ; preds = %1
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = call i32 @igb_phy_force_speed_duplex_setup(%struct.e1000_hw* %21, i32* %5)
  %23 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.0*
  %29 = load i32, i32* @PHY_CONTROL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 %26(%struct.e1000_hw.0* %28, i32 %29, i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %98

35:                                               ; preds = %20
  %36 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %38, align 8
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %41 = bitcast %struct.e1000_hw* %40 to %struct.e1000_hw.1*
  %42 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %43 = call i64 %39(%struct.e1000_hw.1* %41, i32 %42, i32* %5)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %98

47:                                               ; preds = %35
  %48 = load i32, i32* @IGP01E1000_PSCR_AUTO_MDIX, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @IGP01E1000_PSCR_FORCE_MDI_MDIX, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.0*
  %62 = load i32, i32* @IGP01E1000_PHY_PORT_CTRL, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 %59(%struct.e1000_hw.0* %61, i32 %62, i32 %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %47
  br label %98

68:                                               ; preds = %47
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = call i32 @udelay(i32 1)
  %72 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %68
  %77 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %79 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %80 = call i64 @igb_phy_has_link(%struct.e1000_hw* %78, i32 %79, i32 10000, i32* %6)
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %98

84:                                               ; preds = %76
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %91 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %92 = call i64 @igb_phy_has_link(%struct.e1000_hw* %90, i32 %91, i32 10000, i32* %6)
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %4, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %98

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %68
  br label %98

98:                                               ; preds = %97, %95, %83, %67, %46, %34, %19
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i32 @igb_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @hw_dbg(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @igb_phy_has_link(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
