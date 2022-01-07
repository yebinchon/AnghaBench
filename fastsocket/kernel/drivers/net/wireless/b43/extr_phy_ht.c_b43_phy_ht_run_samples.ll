; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_run_samples.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_run_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_ht* }
%struct.b43_phy_ht = type { i64* }

@B43_PHY_HT_SAMP_DEP_CNT = common dso_local global i32 0, align 4
@B43_PHY_HT_SAMP_LOOP_CNT = common dso_local global i32 0, align 4
@B43_PHY_HT_SAMP_WAIT_CNT = common dso_local global i32 0, align 4
@B43_PHY_HT_RF_SEQ_MODE = common dso_local global i32 0, align 4
@B43_PHY_HT_RF_SEQ_MODE_CA_OVER = common dso_local global i32 0, align 4
@B43_PHY_HT_SAMP_CMD = common dso_local global i32 0, align 4
@B43_PHY_HT_IQLOCAL_CMDGCTL = common dso_local global i32 0, align 4
@B43_PHY_HT_RF_SEQ_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"run samples timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32)* @b43_phy_ht_run_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_run_samples(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_phy_ht*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %14, align 8
  store %struct.b43_phy_ht* %15, %struct.b43_phy_ht** %9, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %42, %4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %9, align 8
  %21 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 99, %31
  %33 = call i32 @B43_HTTAB16(i32 13, i32 %32)
  %34 = call i64 @b43_httab_read(%struct.b43_wldev* %29, i32 %33)
  %35 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %9, align 8
  %36 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 %34, i64* %40, align 8
  br label %41

41:                                               ; preds = %28, %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %47 = load i32, i32* @B43_PHY_HT_SAMP_DEP_CNT, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @b43_phy_write(%struct.b43_wldev* %46, i32 %47, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 65535
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %45
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %58 = load i32, i32* @B43_PHY_HT_SAMP_LOOP_CNT, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @b43_phy_write(%struct.b43_wldev* %57, i32 %58, i32 %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %62 = load i32, i32* @B43_PHY_HT_SAMP_WAIT_CNT, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @b43_phy_write(%struct.b43_wldev* %61, i32 %62, i32 %63)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %66 = load i32, i32* @B43_PHY_HT_RF_SEQ_MODE, align 4
  %67 = call i32 @b43_phy_read(%struct.b43_wldev* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %69 = load i32, i32* @B43_PHY_HT_RF_SEQ_MODE, align 4
  %70 = load i32, i32* @B43_PHY_HT_RF_SEQ_MODE_CA_OVER, align 4
  %71 = call i32 @b43_phy_set(%struct.b43_wldev* %68, i32 %69, i32 %70)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %73 = load i32, i32* @B43_PHY_HT_SAMP_CMD, align 4
  %74 = call i32 @b43_phy_mask(%struct.b43_wldev* %72, i32 %73, i32 -1)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %76 = load i32, i32* @B43_PHY_HT_SAMP_CMD, align 4
  %77 = call i32 @b43_phy_mask(%struct.b43_wldev* %75, i32 %76, i32 -1)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %79 = load i32, i32* @B43_PHY_HT_IQLOCAL_CMDGCTL, align 4
  %80 = call i32 @b43_phy_mask(%struct.b43_wldev* %78, i32 %79, i32 -1)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %82 = load i32, i32* @B43_PHY_HT_SAMP_CMD, align 4
  %83 = call i32 @b43_phy_set(%struct.b43_wldev* %81, i32 %82, i32 1)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %96, %56
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 100
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %89 = load i32, i32* @B43_PHY_HT_RF_SEQ_STATUS, align 4
  %90 = call i32 @b43_phy_read(%struct.b43_wldev* %88, i32 %89)
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %99

94:                                               ; preds = %87
  %95 = call i32 @udelay(i32 10)
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %84

99:                                               ; preds = %93, %84
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %104 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @b43err(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %107

107:                                              ; preds = %102, %99
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %109 = load i32, i32* @B43_PHY_HT_RF_SEQ_MODE, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @b43_phy_write(%struct.b43_wldev* %108, i32 %109, i32 %110)
  ret void
}

declare dso_local i64 @b43_httab_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @B43_HTTAB16(i32, i32) #1

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
