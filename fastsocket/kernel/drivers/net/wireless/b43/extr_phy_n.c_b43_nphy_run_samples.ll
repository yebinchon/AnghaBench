; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_run_samples.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_run_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i64 }

@B43_NPHY_SAMP_DEPCNT = common dso_local global i32 0, align 4
@B43_NPHY_SAMP_LOOPCNT = common dso_local global i32 0, align 4
@B43_NPHY_SAMP_WAITCNT = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE_CAOVER = common dso_local global i32 0, align 4
@B43_NPHY_IQLOCAL_CMDGCTL = common dso_local global i32 0, align 4
@B43_NPHY_SAMP_CMD = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"run samples timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32, i32, i32)* @b43_nphy_run_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_run_samples(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.b43_wldev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.b43_phy_n*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.b43_phy_n*, %struct.b43_phy_n** %19, align 8
  store %struct.b43_phy_n* %20, %struct.b43_phy_n** %13, align 8
  %21 = load %struct.b43_phy_n*, %struct.b43_phy_n** %13, align 8
  %22 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %27 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %26, i32 1)
  br label %28

28:                                               ; preds = %25, %6
  %29 = load %struct.b43_phy_n*, %struct.b43_phy_n** %13, align 8
  %30 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, -2147483648
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %36 = call i32 @B43_NTAB16(i32 15, i32 87)
  %37 = call i32 @b43_ntab_read(%struct.b43_wldev* %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = and i32 %38, 65535
  %40 = or i32 %39, -2147483648
  %41 = load %struct.b43_phy_n*, %struct.b43_phy_n** %13, align 8
  %42 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %34, %28
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %45 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 25700, i32* %16, align 4
  br label %51

50:                                               ; preds = %43
  store i32 18247, i32* %16, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %53 = call i32 @B43_NTAB16(i32 15, i32 87)
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @b43_ntab_write(%struct.b43_wldev* %52, i32 %53, i32 %54)
  %56 = load %struct.b43_phy_n*, %struct.b43_phy_n** %13, align 8
  %57 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %62 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %61, i32 0)
  br label %63

63:                                               ; preds = %60, %51
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %65 = load i32, i32* @B43_NPHY_SAMP_DEPCNT, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @b43_phy_write(%struct.b43_wldev* %64, i32 %65, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 65535
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %73 = load i32, i32* @B43_NPHY_SAMP_LOOPCNT, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 1
  %76 = call i32 @b43_phy_write(%struct.b43_wldev* %72, i32 %73, i32 %75)
  br label %82

77:                                               ; preds = %63
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %79 = load i32, i32* @B43_NPHY_SAMP_LOOPCNT, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @b43_phy_write(%struct.b43_wldev* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %71
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %84 = load i32, i32* @B43_NPHY_SAMP_WAITCNT, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @b43_phy_write(%struct.b43_wldev* %83, i32 %84, i32 %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %88 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %89 = call i32 @b43_phy_read(%struct.b43_wldev* %87, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %91 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %92 = load i32, i32* @B43_NPHY_RFSEQMODE_CAOVER, align 4
  %93 = call i32 @b43_phy_set(%struct.b43_wldev* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %82
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %98 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %99 = call i32 @b43_phy_mask(%struct.b43_wldev* %97, i32 %98, i32 32767)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %101 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %102 = call i32 @b43_phy_set(%struct.b43_wldev* %100, i32 %101, i32 32768)
  br label %115

103:                                              ; preds = %82
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %108 = load i32, i32* @B43_NPHY_SAMP_CMD, align 4
  %109 = call i32 @b43_phy_write(%struct.b43_wldev* %107, i32 %108, i32 5)
  br label %114

110:                                              ; preds = %103
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %112 = load i32, i32* @B43_NPHY_SAMP_CMD, align 4
  %113 = call i32 @b43_phy_write(%struct.b43_wldev* %111, i32 %112, i32 1)
  br label %114

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %114, %96
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %128, %115
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %117, 100
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %121 = load i32, i32* @B43_NPHY_RFSEQST, align 4
  %122 = call i32 @b43_phy_read(%struct.b43_wldev* %120, i32 %121)
  %123 = and i32 %122, 1
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  store i32 0, i32* %14, align 4
  br label %131

126:                                              ; preds = %119
  %127 = call i32 @udelay(i32 10)
  br label %128

128:                                              ; preds = %126
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %116

131:                                              ; preds = %125, %116
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %136 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @b43err(i32 %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %139

139:                                              ; preds = %134, %131
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %141 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @b43_phy_write(%struct.b43_wldev* %140, i32 %141, i32 %142)
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_ntab_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
