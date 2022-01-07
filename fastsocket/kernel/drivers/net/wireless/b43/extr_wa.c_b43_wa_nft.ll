; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_nft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_nft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64, i32 }

@B43_PHYTYPE_A = common dso_local global i64 0, align 8
@B43_TAB_NOISEA2_SIZE = common dso_local global i32 0, align 4
@B43_OFDMTAB_AGC2 = common dso_local global i32 0, align 4
@b43_tab_noisea2 = common dso_local global i32* null, align 8
@B43_TAB_NOISEA3_SIZE = common dso_local global i32 0, align 4
@b43_tab_noisea3 = common dso_local global i32* null, align 8
@B43_TAB_NOISEG1_SIZE = common dso_local global i32 0, align 4
@b43_tab_noiseg1 = common dso_local global i32* null, align 8
@B43_TAB_NOISEG2_SIZE = common dso_local global i32 0, align 4
@b43_tab_noiseg2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wa_nft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wa_nft(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  store %struct.b43_phy* %6, %struct.b43_phy** %3, align 8
  %7 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %8 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @B43_PHYTYPE_A, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %1
  %13 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %14 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @B43_TAB_NOISEA2_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = load i32, i32* @B43_OFDMTAB_AGC2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** @b43_tab_noisea2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %23, i32 %24, i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %18

35:                                               ; preds = %18
  br label %55

36:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @B43_TAB_NOISEA3_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B43_OFDMTAB_AGC2, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32*, i32** @b43_tab_noisea3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %42, i32 %43, i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %37

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %35
  br label %100

56:                                               ; preds = %1
  %57 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %58 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %76, %61
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @B43_TAB_NOISEG1_SIZE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = load i32, i32* @B43_OFDMTAB_AGC2, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32*, i32** @b43_tab_noiseg1, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %67, i32 %68, i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %62

79:                                               ; preds = %62
  br label %99

80:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %95, %80
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @B43_TAB_NOISEG2_SIZE, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = load i32, i32* @B43_OFDMTAB_AGC2, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32*, i32** @b43_tab_noiseg2, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %86, i32 %87, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %81

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98, %79
  br label %100

100:                                              ; preds = %99, %55
  ret void
}

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
