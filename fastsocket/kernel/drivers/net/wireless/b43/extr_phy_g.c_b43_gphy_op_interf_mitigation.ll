; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_interf_mitigation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_interf_mitigation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i64, i64, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, i32, i32, i32 }

@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32)* @b43_gphy_op_interf_mitigation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_gphy_op_interf_mitigation(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_phy*, align 8
  %7 = alloca %struct.b43_phy_g*, align 8
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  store %struct.b43_phy* %10, %struct.b43_phy** %6, align 8
  %11 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %12 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %11, i32 0, i32 3
  %13 = load %struct.b43_phy_g*, %struct.b43_phy_g** %12, align 8
  store %struct.b43_phy_g* %13, %struct.b43_phy_g** %7, align 8
  %14 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @B43_PHYTYPE_G, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @B43_WARN_ON(i32 %19)
  %21 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %22 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %27 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %2
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %82

33:                                               ; preds = %25
  %34 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %35 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %48 [
    i32 131, label %37
    i32 129, label %47
    i32 128, label %47
    i32 130, label %47
  ]

37:                                               ; preds = %33
  %38 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %39 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %41 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 130, i32* %5, align 4
  br label %46

45:                                               ; preds = %37
  store i32 129, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %51

47:                                               ; preds = %33, %33, %33
  br label %51

48:                                               ; preds = %33
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %82

51:                                               ; preds = %47, %46
  %52 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %53 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %82

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 129
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @b43_radio_interference_mitigation_disable(%struct.b43_wldev* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %71 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %73 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  br label %78

74:                                               ; preds = %66
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @b43_radio_interference_mitigation_enable(%struct.b43_wldev* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %81 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %58, %48, %30
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_radio_interference_mitigation_disable(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_interference_mitigation_enable(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
