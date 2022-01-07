; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_pa_override_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_pa_override_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_pa_override_nphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %57, label %8

8:                                                ; preds = %2
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %10 = call i8* @read_phy_reg(%struct.brcms_phy* %9, i32 145)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %15 = call i8* @read_phy_reg(%struct.brcms_phy* %14, i32 146)
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @NREV_GE(i32 %22, i32 7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  store i32 5248, i32* %5, align 4
  br label %50

26:                                               ; preds = %8
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %28 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @NREV_GE(i32 %30, i32 3)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @CHSPEC_IS5G(i32 %36)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1536, i32 1152
  store i32 %40, i32* %5, align 4
  br label %49

41:                                               ; preds = %26
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @CHSPEC_IS5G(i32 %44)
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 384, i32 288
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %41, %33
  br label %50

50:                                               ; preds = %49, %25
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @write_phy_reg(%struct.brcms_phy* %51, i32 145, i32 %52)
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @write_phy_reg(%struct.brcms_phy* %54, i32 146, i32 %55)
  br label %68

57:                                               ; preds = %2
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %60 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @write_phy_reg(%struct.brcms_phy* %58, i32 145, i32 %61)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @write_phy_reg(%struct.brcms_phy* %63, i32 146, i32 %66)
  br label %68

68:                                               ; preds = %57, %50
  ret void
}

declare dso_local i8* @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
