; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_phy_rssiagc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_a.c_b43_phy_rssiagc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_TAB_RSSIAGC1_SIZE = common dso_local global i32 0, align 4
@B43_OFDMTAB_LNAHPFGAIN1 = common dso_local global i32 0, align 4
@B43_OFDMTAB_WRSSI = common dso_local global i32 0, align 4
@b43_tab_rssiagc1 = common dso_local global i32* null, align 8
@B43_TAB_RSSIAGC2_SIZE = common dso_local global i32 0, align 4
@b43_tab_rssiagc2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i64)* @b43_phy_rssiagc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_rssiagc(%struct.b43_wldev* %0, i64 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %61

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @B43_TAB_RSSIAGC1_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load i32, i32* @B43_OFDMTAB_LNAHPFGAIN1, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %20, i32 %21, i32 %22, i32 65528)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = load i32, i32* @B43_OFDMTAB_WRSSI, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %24, i32 %25, i32 %26, i32 65528)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %15

31:                                               ; preds = %15
  br label %60

32:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %56, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @B43_TAB_RSSIAGC1_SIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %39 = load i32, i32* @B43_OFDMTAB_LNAHPFGAIN1, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** @b43_tab_rssiagc1, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %38, i32 %39, i32 %40, i32 %45)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = load i32, i32* @B43_OFDMTAB_WRSSI, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32*, i32** @b43_tab_rssiagc1, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %47, i32 %48, i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %33

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59, %31
  br label %98

61:                                               ; preds = %2
  %62 = load i64, i64* %4, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %74, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @B43_TAB_RSSIAGC1_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* @B43_OFDMTAB_WRSSI, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %70, i32 %71, i32 %72, i32 2080)
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %65

77:                                               ; preds = %65
  br label %97

78:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @B43_TAB_RSSIAGC2_SIZE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %85 = load i32, i32* @B43_OFDMTAB_WRSSI, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32*, i32** @b43_tab_rssiagc2, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %84, i32 %85, i32 %86, i32 %91)
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %79

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97, %60
  ret void
}

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
