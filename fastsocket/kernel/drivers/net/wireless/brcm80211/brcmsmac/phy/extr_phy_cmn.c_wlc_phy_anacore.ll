; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_anacore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_anacore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_anacore(%struct.brcms_phy_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %7 = bitcast %struct.brcms_phy_pub* %6 to %struct.brcms_phy*
  store %struct.brcms_phy* %7, %struct.brcms_phy** %5, align 8
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %9 = call i64 @ISNPHY(%struct.brcms_phy* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @NREV_GE(i32 %18, i32 3)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %23 = call i32 @write_phy_reg(%struct.brcms_phy* %22, i32 166, i32 13)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %25 = call i32 @write_phy_reg(%struct.brcms_phy* %24, i32 143, i32 0)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %27 = call i32 @write_phy_reg(%struct.brcms_phy* %26, i32 167, i32 13)
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %29 = call i32 @write_phy_reg(%struct.brcms_phy* %28, i32 165, i32 0)
  br label %33

30:                                               ; preds = %14
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %32 = call i32 @write_phy_reg(%struct.brcms_phy* %31, i32 165, i32 0)
  br label %33

33:                                               ; preds = %30, %21
  br label %54

34:                                               ; preds = %11
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @NREV_GE(i32 %38, i32 3)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %43 = call i32 @write_phy_reg(%struct.brcms_phy* %42, i32 143, i32 2047)
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %45 = call i32 @write_phy_reg(%struct.brcms_phy* %44, i32 166, i32 253)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %47 = call i32 @write_phy_reg(%struct.brcms_phy* %46, i32 165, i32 2047)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %49 = call i32 @write_phy_reg(%struct.brcms_phy* %48, i32 167, i32 253)
  br label %53

50:                                               ; preds = %34
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %52 = call i32 @write_phy_reg(%struct.brcms_phy* %51, i32 165, i32 32767)
  br label %53

53:                                               ; preds = %50, %41
  br label %54

54:                                               ; preds = %53, %33
  br label %72

55:                                               ; preds = %2
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %57 = call i64 @ISLCNPHY(%struct.brcms_phy* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %64 = call i32 @and_phy_reg(%struct.brcms_phy* %63, i32 1083, i32 -8)
  br label %70

65:                                               ; preds = %59
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %67 = call i32 @or_phy_reg(%struct.brcms_phy* %66, i32 1084, i32 7)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %69 = call i32 @or_phy_reg(%struct.brcms_phy* %68, i32 1083, i32 7)
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %54
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
