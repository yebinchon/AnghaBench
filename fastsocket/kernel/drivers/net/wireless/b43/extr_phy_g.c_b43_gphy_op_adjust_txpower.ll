; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_adjust_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_adjust_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_6__*, %struct.b43_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.b43_phy = type { i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@B43_TXCTL_PA2DB = common dso_local global i32 0, align 4
@B43_TXCTL_TXMIX = common dso_local global i32 0, align 4
@B43_BFL_PACTRL = common dso_local global i32 0, align 4
@B43_DBG_XMITPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Adjusting TX power\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_gphy_op_adjust_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_gphy_op_adjust_txpower(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 2
  store %struct.b43_phy* %9, %struct.b43_phy** %3, align 8
  %10 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %11 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %10, i32 0, i32 2
  %12 = load %struct.b43_phy_g*, %struct.b43_phy_g** %11, align 8
  store %struct.b43_phy_g* %12, %struct.b43_phy_g** %4, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = call i32 @b43_mac_suspend(%struct.b43_wldev* %13)
  %15 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %16 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %20 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %27 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %31 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @b43_put_attenuation_into_ranges(%struct.b43_wldev* %37, i32* %6, i32* %5)
  %39 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %40 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %7, align 4
  %42 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %43 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 8272
  br i1 %45, label %46, label %106

46:                                               ; preds = %1
  %47 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %48 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %106

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %54, label %84

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* @B43_TXCTL_PA2DB, align 4
  %59 = load i32, i32* @B43_TXCTL_TXMIX, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %6, align 4
  br label %83

65:                                               ; preds = %54
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @B43_BFL_PACTRL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %77, 2
  %79 = mul nsw i32 4, %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  store i32 2, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %65
  br label %83

83:                                               ; preds = %82, %57
  br label %105

84:                                               ; preds = %51
  %85 = load i32, i32* %5, align 4
  %86 = icmp sgt i32 %85, 4
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 3
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %94, 3
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %6, align 4
  br label %103

98:                                               ; preds = %90
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 %99, 2
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %101, 2
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %87, %84
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105, %46, %1
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %109 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = call i32 @b43_put_attenuation_into_ranges(%struct.b43_wldev* %110, i32* %6, i32* %5)
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %114 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %118 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %121 = load i32, i32* @B43_DBG_XMITPOWER, align 4
  %122 = call i64 @b43_debug(%struct.b43_wldev* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %106
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %126 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @b43dbg(i32 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %129

129:                                              ; preds = %124, %106
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = call i32 @b43_phy_lock(%struct.b43_wldev* %130)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = call i32 @b43_radio_lock(%struct.b43_wldev* %132)
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %136 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %135, i32 0, i32 2
  %137 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %138 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %137, i32 0, i32 1
  %139 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %140 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @b43_set_txpower_g(%struct.b43_wldev* %134, %struct.TYPE_7__* %136, %struct.TYPE_8__* %138, i32 %141)
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %144 = call i32 @b43_radio_unlock(%struct.b43_wldev* %143)
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %146 = call i32 @b43_phy_unlock(%struct.b43_wldev* %145)
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %148 = call i32 @b43_mac_enable(%struct.b43_wldev* %147)
  ret void
}

declare dso_local i32 @b43_mac_suspend(%struct.b43_wldev*) #1

declare dso_local i32 @b43_put_attenuation_into_ranges(%struct.b43_wldev*, i32*, i32*) #1

declare dso_local i64 @b43_debug(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @b43_phy_lock(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_lock(%struct.b43_wldev*) #1

declare dso_local i32 @b43_set_txpower_g(%struct.b43_wldev*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @b43_radio_unlock(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_unlock(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mac_enable(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
