; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_op_software_rfkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_op_software_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MAC not suspended\0A\00", align 1
@B43_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_CHIP0PU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_op_software_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_op_software_rfkill(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %7 = call i32 @b43_read32(%struct.b43_wldev* %5, i32 %6)
  %8 = load i32, i32* @B43_MACCTL_ENABLED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @b43err(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %22 = load i32, i32* @B43_NPHY_RFCTL_CMD_CHIP0PU, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @b43_phy_mask(%struct.b43_wldev* %20, i32 %21, i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 7
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %65

31:                                               ; preds = %19
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %33 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 3
  br i1 %36, label %37, label %64

37:                                               ; preds = %31
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = call i32 @b43_radio_mask(%struct.b43_wldev* %38, i32 9, i32 -3)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = call i32 @b43_radio_write(%struct.b43_wldev* %40, i32 8269, i32 0)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = call i32 @b43_radio_write(%struct.b43_wldev* %42, i32 8275, i32 0)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = call i32 @b43_radio_write(%struct.b43_wldev* %44, i32 8280, i32 0)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %47 = call i32 @b43_radio_write(%struct.b43_wldev* %46, i32 8286, i32 0)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = call i32 @b43_radio_mask(%struct.b43_wldev* %48, i32 8290, i32 -241)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = call i32 @b43_radio_write(%struct.b43_wldev* %50, i32 8292, i32 0)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = call i32 @b43_radio_write(%struct.b43_wldev* %52, i32 12365, i32 0)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %55 = call i32 @b43_radio_write(%struct.b43_wldev* %54, i32 12371, i32 0)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %57 = call i32 @b43_radio_write(%struct.b43_wldev* %56, i32 12376, i32 0)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %59 = call i32 @b43_radio_write(%struct.b43_wldev* %58, i32 12382, i32 0)
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = call i32 @b43_radio_mask(%struct.b43_wldev* %60, i32 12386, i32 -241)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %63 = call i32 @b43_radio_write(%struct.b43_wldev* %62, i32 12388, i32 0)
  br label %64

64:                                               ; preds = %37, %31
  br label %65

65:                                               ; preds = %64, %30
  br label %101

66:                                               ; preds = %16
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %70, 7
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = call i32 @b43_radio_2057_init(%struct.b43_wldev* %73)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %77 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @b43_switch_channel(%struct.b43_wldev* %75, i32 %79)
  br label %100

81:                                               ; preds = %66
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %83 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 3
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %89 = call i32 @b43_radio_init2056(%struct.b43_wldev* %88)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @b43_switch_channel(%struct.b43_wldev* %90, i32 %94)
  br label %99

96:                                               ; preds = %81
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %98 = call i32 @b43_radio_init2055(%struct.b43_wldev* %97)
  br label %99

99:                                               ; preds = %96, %87
  br label %100

100:                                              ; preds = %99, %72
  br label %101

101:                                              ; preds = %100, %65
  ret void
}

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_2057_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_init2056(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_init2055(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
