; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_aci_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_aci_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32)* @b43_gphy_aci_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_gphy_aci_detect(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca %struct.b43_phy_g*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  store %struct.b43_phy* %14, %struct.b43_phy** %5, align 8
  %15 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %16 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %15, i32 0, i32 0
  %17 = load %struct.b43_phy_g*, %struct.b43_phy_g** %16, align 8
  store %struct.b43_phy_g* %17, %struct.b43_phy_g** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = call i32 @b43_phy_read(%struct.b43_wldev* %18, i32 1027)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @b43_switch_channel(%struct.b43_wldev* %20, i32 %21)
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 65528
  %26 = or i32 %25, 5
  %27 = call i32 @b43_phy_write(%struct.b43_wldev* %23, i32 1027, i32 %26)
  %28 = load %struct.b43_phy_g*, %struct.b43_phy_g** %6, align 8
  %29 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = call i32 @b43_phy_read(%struct.b43_wldev* %33, i32 1162)
  %35 = and i32 %34, 63
  store i32 %35, i32* %9, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 63
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 32
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 64
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %39
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 100
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = call i32 @b43_phy_read(%struct.b43_wldev* %50, i32 1151)
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 63
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 32
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 64
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %12, align 4
  %68 = icmp sge i32 %67, 20
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %66
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %46

74:                                               ; preds = %46
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @b43_phy_write(%struct.b43_wldev* %75, i32 1027, i32 %76)
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
