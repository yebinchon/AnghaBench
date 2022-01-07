; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_4__, %struct.brcms_phy*, %struct.TYPE_3__*, i32*, i64 }
%struct.TYPE_4__ = type { i32 (%struct.brcms_phy.0*)* }
%struct.brcms_phy.0 = type opaque
%struct.TYPE_3__ = type { %struct.brcms_phy* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_detach(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca %struct.brcms_phy_pub*, align 8
  %3 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %2, align 8
  %4 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %5 = bitcast %struct.brcms_phy_pub* %4 to %struct.brcms_phy*
  store %struct.brcms_phy* %5, %struct.brcms_phy** %3, align 8
  %6 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %7 = icmp ne %struct.brcms_phy_pub* %6, null
  br i1 %7, label %8, label %78

8:                                                ; preds = %1
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %78

15:                                               ; preds = %8
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @wlapi_free_timer(i32* %23)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %31, align 8
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %34 = icmp eq %struct.brcms_phy* %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 1
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %37, align 8
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store %struct.brcms_phy* %38, %struct.brcms_phy** %42, align 8
  br label %61

43:                                               ; preds = %27
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %45 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %47, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 1
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %49, align 8
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = icmp eq %struct.brcms_phy* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %57, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 1
  store %struct.brcms_phy* null, %struct.brcms_phy** %59, align 8
  br label %60

60:                                               ; preds = %53, %43
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.brcms_phy.0*)*, i32 (%struct.brcms_phy.0*)** %64, align 8
  %66 = icmp ne i32 (%struct.brcms_phy.0*)* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.brcms_phy.0*)*, i32 (%struct.brcms_phy.0*)** %70, align 8
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %73 = bitcast %struct.brcms_phy* %72 to %struct.brcms_phy.0*
  %74 = call i32 %71(%struct.brcms_phy.0* %73)
  br label %75

75:                                               ; preds = %67, %61
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %77 = call i32 @kfree(%struct.brcms_phy* %76)
  br label %78

78:                                               ; preds = %14, %75, %1
  ret void
}

declare dso_local i32 @wlapi_free_timer(i32*) #1

declare dso_local i32 @kfree(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
