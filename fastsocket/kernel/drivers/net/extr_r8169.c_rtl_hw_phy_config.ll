; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_phy_config(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtl8169_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %4)
  store %struct.rtl8169_private* %5, %struct.rtl8169_private** %3, align 8
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %7 = call i32 @rtl8169_print_mac_version(%struct.rtl8169_private* %6)
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %9 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %95 [
    i32 163, label %11
    i32 162, label %12
    i32 161, label %12
    i32 160, label %15
    i32 159, label %18
    i32 158, label %21
    i32 157, label %24
    i32 156, label %24
    i32 155, label %24
    i32 154, label %27
    i32 153, label %30
    i32 152, label %33
    i32 151, label %36
    i32 150, label %39
    i32 149, label %42
    i32 148, label %45
    i32 147, label %48
    i32 146, label %51
    i32 145, label %51
    i32 144, label %54
    i32 143, label %57
    i32 142, label %60
    i32 141, label %63
    i32 140, label %66
    i32 139, label %66
    i32 138, label %69
    i32 137, label %70
    i32 136, label %70
    i32 135, label %73
    i32 134, label %76
    i32 133, label %79
    i32 132, label %82
    i32 131, label %85
    i32 130, label %88
    i32 129, label %91
    i32 128, label %94
  ]

11:                                               ; preds = %1
  br label %96

12:                                               ; preds = %1, %1
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %14 = call i32 @rtl8169s_hw_phy_config(%struct.rtl8169_private* %13)
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %17 = call i32 @rtl8169sb_hw_phy_config(%struct.rtl8169_private* %16)
  br label %96

18:                                               ; preds = %1
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %20 = call i32 @rtl8169scd_hw_phy_config(%struct.rtl8169_private* %19)
  br label %96

21:                                               ; preds = %1
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %23 = call i32 @rtl8169sce_hw_phy_config(%struct.rtl8169_private* %22)
  br label %96

24:                                               ; preds = %1, %1, %1
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %26 = call i32 @rtl8102e_hw_phy_config(%struct.rtl8169_private* %25)
  br label %96

27:                                               ; preds = %1
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %29 = call i32 @rtl8168bb_hw_phy_config(%struct.rtl8169_private* %28)
  br label %96

30:                                               ; preds = %1
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %32 = call i32 @rtl8168bef_hw_phy_config(%struct.rtl8169_private* %31)
  br label %96

33:                                               ; preds = %1
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %35 = call i32 @rtl8168bef_hw_phy_config(%struct.rtl8169_private* %34)
  br label %96

36:                                               ; preds = %1
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %38 = call i32 @rtl8168cp_1_hw_phy_config(%struct.rtl8169_private* %37)
  br label %96

39:                                               ; preds = %1
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %41 = call i32 @rtl8168c_1_hw_phy_config(%struct.rtl8169_private* %40)
  br label %96

42:                                               ; preds = %1
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %44 = call i32 @rtl8168c_2_hw_phy_config(%struct.rtl8169_private* %43)
  br label %96

45:                                               ; preds = %1
  %46 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %47 = call i32 @rtl8168c_3_hw_phy_config(%struct.rtl8169_private* %46)
  br label %96

48:                                               ; preds = %1
  %49 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %50 = call i32 @rtl8168c_4_hw_phy_config(%struct.rtl8169_private* %49)
  br label %96

51:                                               ; preds = %1, %1
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %53 = call i32 @rtl8168cp_2_hw_phy_config(%struct.rtl8169_private* %52)
  br label %96

54:                                               ; preds = %1
  %55 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %56 = call i32 @rtl8168d_1_hw_phy_config(%struct.rtl8169_private* %55)
  br label %96

57:                                               ; preds = %1
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %59 = call i32 @rtl8168d_2_hw_phy_config(%struct.rtl8169_private* %58)
  br label %96

60:                                               ; preds = %1
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %62 = call i32 @rtl8168d_3_hw_phy_config(%struct.rtl8169_private* %61)
  br label %96

63:                                               ; preds = %1
  %64 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %65 = call i32 @rtl8168d_4_hw_phy_config(%struct.rtl8169_private* %64)
  br label %96

66:                                               ; preds = %1, %1
  %67 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %68 = call i32 @rtl8105e_hw_phy_config(%struct.rtl8169_private* %67)
  br label %96

69:                                               ; preds = %1
  br label %96

70:                                               ; preds = %1, %1
  %71 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %72 = call i32 @rtl8168e_1_hw_phy_config(%struct.rtl8169_private* %71)
  br label %96

73:                                               ; preds = %1
  %74 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %75 = call i32 @rtl8168e_2_hw_phy_config(%struct.rtl8169_private* %74)
  br label %96

76:                                               ; preds = %1
  %77 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %78 = call i32 @rtl8168f_1_hw_phy_config(%struct.rtl8169_private* %77)
  br label %96

79:                                               ; preds = %1
  %80 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %81 = call i32 @rtl8168f_2_hw_phy_config(%struct.rtl8169_private* %80)
  br label %96

82:                                               ; preds = %1
  %83 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %84 = call i32 @rtl8402_hw_phy_config(%struct.rtl8169_private* %83)
  br label %96

85:                                               ; preds = %1
  %86 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %87 = call i32 @rtl8411_hw_phy_config(%struct.rtl8169_private* %86)
  br label %96

88:                                               ; preds = %1
  %89 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %90 = call i32 @rtl8106e_hw_phy_config(%struct.rtl8169_private* %89)
  br label %96

91:                                               ; preds = %1
  %92 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %93 = call i32 @rtl8168g_1_hw_phy_config(%struct.rtl8169_private* %92)
  br label %96

94:                                               ; preds = %1
  br label %95

95:                                               ; preds = %1, %94
  br label %96

96:                                               ; preds = %95, %91, %88, %85, %82, %79, %76, %73, %70, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %11
  ret void
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8169_print_mac_version(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8169s_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8169sb_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8169scd_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8169sce_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8102e_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168bb_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168bef_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168cp_1_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168c_1_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168c_2_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168c_3_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168c_4_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168cp_2_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168d_1_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168d_2_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168d_3_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168d_4_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8105e_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168e_1_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168e_2_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168f_1_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168f_2_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8402_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8411_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8106e_hw_phy_config(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168g_1_hw_phy_config(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
