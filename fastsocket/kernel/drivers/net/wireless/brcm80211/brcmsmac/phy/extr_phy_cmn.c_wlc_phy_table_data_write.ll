; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_table_data_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_table_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@BCM43224_CHIP_ID = common dso_local global i64 0, align 8
@NPHY_TBL_ID_ANTSWCTRLLUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_table_data_write(%struct.brcms_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BCM43224_CHIP_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %3
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %50

21:                                               ; preds = %14
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %30 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @read_phy_reg(%struct.brcms_phy* %28, i32 %31)
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %39, 10
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %40, %43
  %45 = call i32 @write_phy_reg(%struct.brcms_phy* %33, i32 %36, i32 %44)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %27, %21, %14, %3
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 16
  %60 = call i32 @write_phy_reg(%struct.brcms_phy* %54, i32 %57, i32 %59)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @write_phy_reg(%struct.brcms_phy* %61, i32 %64, i32 %65)
  br label %74

67:                                               ; preds = %50
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %70 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @write_phy_reg(%struct.brcms_phy* %68, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %53
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
