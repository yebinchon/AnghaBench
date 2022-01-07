; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00mac.c_rt2x00mac_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rt2x00_dev*, i32)* }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_PSPOLL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@CAPABILITY_CONTROL_FILTERS = common dso_local global i32 0, align 4
@CAPABILITY_CONTROL_FILTER_PSPOLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00mac_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2x00_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %11, align 8
  store %struct.rt2x00_dev* %12, %struct.rt2x00_dev** %9, align 8
  %13 = load i32, i32* @FIF_ALLMULTI, align 4
  %14 = load i32, i32* @FIF_FCSFAIL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FIF_PLCPFAIL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FIF_CONTROL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FIF_PSPOLL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FIF_OTHER_BSS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %25 = or i32 %23, %24
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @FIF_ALLMULTI, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FIF_OTHER_BSS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38, %4
  %45 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %46 = load i32, i32* @FIF_OTHER_BSS, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %44, %38
  %52 = load i32, i32* @CAPABILITY_CONTROL_FILTERS, align 4
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %54 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %53, i32 0, i32 2
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FIF_CONTROL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FIF_PSPOLL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63, %57
  %70 = load i32, i32* @FIF_CONTROL, align 4
  %71 = load i32, i32* @FIF_PSPOLL, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %63
  br label %77

77:                                               ; preds = %76, %51
  %78 = load i32, i32* @CAPABILITY_CONTROL_FILTER_PSPOLL, align 4
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %80 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %79, i32 0, i32 2
  %81 = call i32 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %77
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FIF_CONTROL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i32, i32* @FIF_PSPOLL, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %83
  br label %95

95:                                               ; preds = %94, %77
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %97 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %119

103:                                              ; preds = %95
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %107 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %109 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32 (%struct.rt2x00_dev*, i32)*, i32 (%struct.rt2x00_dev*, i32)** %113, align 8
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 %114(%struct.rt2x00_dev* %115, i32 %117)
  br label %119

119:                                              ; preds = %103, %102
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
