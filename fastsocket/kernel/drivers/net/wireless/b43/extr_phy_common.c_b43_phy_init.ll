; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32, %struct.b43_phy_operations* }
%struct.b43_phy_operations = type { {}*, i32 (%struct.b43_wldev*, i32)*, {}*, {}* }

@.str = private unnamed_addr constant [17 x i8] c"PHY init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"PHY init: Channel switch to default failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_phy_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca %struct.b43_phy_operations*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  store %struct.b43_phy* %8, %struct.b43_phy** %4, align 8
  %9 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %10 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %9, i32 0, i32 1
  %11 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %10, align 8
  store %struct.b43_phy_operations* %11, %struct.b43_phy_operations** %5, align 8
  %12 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %13 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %12, i32 0, i32 3
  %14 = bitcast {}** %13 to i32 (%struct.b43_wldev*)**
  %15 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %14, align 8
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %17 = call i32 %15(%struct.b43_wldev* %16)
  %18 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %21 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %20, i32 0, i32 1
  %22 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %21, align 8
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = call i32 %22(%struct.b43_wldev* %23, i32 0)
  %25 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %26 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.b43_wldev*)**
  %28 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %27, align 8
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = call i32 %28(%struct.b43_wldev* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @b43err(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %69

38:                                               ; preds = %1
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %41 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %40, i32 0, i32 3
  %42 = bitcast {}** %41 to i32 (%struct.b43_wldev*)**
  %43 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %42, align 8
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = call i32 %43(%struct.b43_wldev* %44)
  %46 = call i32 @b43_switch_channel(%struct.b43_wldev* %39, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @b43err(i32 %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %55

54:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %76

55:                                               ; preds = %49
  %56 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %57 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %56, i32 0, i32 2
  %58 = bitcast {}** %57 to i32 (%struct.b43_wldev*)**
  %59 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %58, align 8
  %60 = icmp ne i32 (%struct.b43_wldev*)* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %63 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %62, i32 0, i32 2
  %64 = bitcast {}** %63 to i32 (%struct.b43_wldev*)**
  %65 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %64, align 8
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = call i32 %65(%struct.b43_wldev* %66)
  br label %68

68:                                               ; preds = %61, %55
  br label %69

69:                                               ; preds = %68, %33
  %70 = load %struct.b43_phy_operations*, %struct.b43_phy_operations** %5, align 8
  %71 = getelementptr inbounds %struct.b43_phy_operations, %struct.b43_phy_operations* %70, i32 0, i32 1
  %72 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %71, align 8
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = call i32 %72(%struct.b43_wldev* %73, i32 1)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %69, %54
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
