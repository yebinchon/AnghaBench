; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_start_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54usb.c_p54u_start_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.p54u_priv = type { i32 (%struct.ieee80211_hw*)*, %struct.TYPE_4__*, %struct.TYPE_5__, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.ieee80211_hw* }

@p54u_fwlist = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [63 x i8] c"wrong firmware, please get a firmware for \22%s\22 and try again.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54u_priv*)* @p54u_start_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54u_start_ops(%struct.p54u_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54u_priv*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.p54u_priv* %0, %struct.p54u_priv** %3, align 8
  %6 = load %struct.p54u_priv*, %struct.p54u_priv** %3, align 8
  %7 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = load %struct.p54u_priv*, %struct.p54u_priv** %3, align 8
  %12 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @p54_parse_firmware(%struct.ieee80211_hw* %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.p54u_priv*, %struct.p54u_priv** %3, align 8
  %20 = call i32 @p54_find_type(%struct.p54u_priv* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %87

24:                                               ; preds = %18
  %25 = load %struct.p54u_priv*, %struct.p54u_priv** %3, align 8
  %26 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p54u_fwlist, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %24
  %37 = load %struct.p54u_priv*, %struct.p54u_priv** %3, align 8
  %38 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @p54u_fwlist, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %87

50:                                               ; preds = %24
  %51 = load %struct.p54u_priv*, %struct.p54u_priv** %3, align 8
  %52 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %51, i32 0, i32 0
  %53 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %52, align 8
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = call i32 %53(%struct.ieee80211_hw* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %87

59:                                               ; preds = %50
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %61 = call i32 @p54u_open(%struct.ieee80211_hw* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %87

65:                                               ; preds = %59
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %67 = call i32 @p54_read_eeprom(%struct.ieee80211_hw* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %84

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %73 = call i32 @p54u_stop(%struct.ieee80211_hw* %72)
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %75 = load %struct.p54u_priv*, %struct.p54u_priv** %3, align 8
  %76 = getelementptr inbounds %struct.p54u_priv, %struct.p54u_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @p54_register_common(%struct.ieee80211_hw* %74, i32* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %84

83:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %89

84:                                               ; preds = %82, %70
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %86 = call i32 @p54u_stop(%struct.ieee80211_hw* %85)
  br label %87

87:                                               ; preds = %84, %64, %58, %36, %23, %17
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @p54_parse_firmware(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @p54_find_type(%struct.p54u_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @p54u_open(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54_read_eeprom(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54u_stop(%struct.ieee80211_hw*) #1

declare dso_local i32 @p54_register_common(%struct.ieee80211_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
