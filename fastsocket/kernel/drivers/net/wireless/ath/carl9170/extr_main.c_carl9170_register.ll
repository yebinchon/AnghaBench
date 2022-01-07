; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.ar9170 = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__, i32, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.ath_regulatory }
%struct.ath_regulatory = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@carl9170_reg_notifier = common dso_local global i32 0, align 4
@modparam_noht = common dso_local global i64 0, align 8
@carl9170_band_2GHz = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@carl9170_band_5GHz = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"Atheros AR9170 is registered as '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_register(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.ath_regulatory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %7 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %8 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store %struct.ath_regulatory* %9, %struct.ath_regulatory** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %11 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %144

18:                                               ; preds = %1
  %19 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %20 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BITS_PER_LONG, align 4
  %24 = call i32 @roundup(i32 %22, i32 %23)
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @kzalloc(i32 %27, i32 %28)
  %30 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %31 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %33 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %144

39:                                               ; preds = %18
  %40 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %41 = call i32 @carl9170_read_eeprom(%struct.ar9170* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %144

46:                                               ; preds = %39
  %47 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %48 = call i32 @carl9170_parse_eeprom(%struct.ar9170* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %144

53:                                               ; preds = %46
  %54 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %55 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %56 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %55, i32 0, i32 1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @carl9170_reg_notifier, align 4
  %61 = call i32 @ath_regd_init(%struct.ath_regulatory* %54, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %144

66:                                               ; preds = %53
  %67 = load i64, i64* @modparam_noht, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @carl9170_band_2GHz, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @carl9170_band_5GHz, i32 0, i32 0, i32 0), align 4
  br label %70

70:                                               ; preds = %69, %66
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %94, %70
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %74 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %81 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %80, i32 0, i32 3
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i32 %79, i32* %86, align 8
  %87 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %88 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %87, i32 0, i32 3
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %78
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %71

97:                                               ; preds = %71
  %98 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %99 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %98, i32 0, i32 1
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = call i32 @ieee80211_register_hw(%struct.TYPE_16__* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %144

106:                                              ; preds = %97
  %107 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %108 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %110 = call i32 @ath_is_world_regd(%struct.ath_regulatory* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %106
  %113 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %114 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %119 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @regulatory_hint(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %112, %106
  %123 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %124 = call i32 @carl9170_led_init(%struct.ar9170* %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %140

128:                                              ; preds = %122
  %129 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %130 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %129, i32 0, i32 2
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %134 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %133, i32 0, i32 1
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @wiphy_name(i32 %137)
  %139 = call i32 @dev_info(i32* %132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %138)
  store i32 0, i32* %2, align 4
  br label %144

140:                                              ; preds = %127
  %141 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %142 = call i32 @carl9170_unregister(%struct.ar9170* %141)
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %140, %128, %104, %64, %51, %44, %36, %15
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @carl9170_read_eeprom(%struct.ar9170*) #1

declare dso_local i32 @carl9170_parse_eeprom(%struct.ar9170*) #1

declare dso_local i32 @ath_regd_init(%struct.ath_regulatory*, i32, i32) #1

declare dso_local i32 @ieee80211_register_hw(%struct.TYPE_16__*) #1

declare dso_local i32 @ath_is_world_regd(%struct.ath_regulatory*) #1

declare dso_local i32 @regulatory_hint(i32, i32) #1

declare dso_local i32 @carl9170_led_init(%struct.ar9170*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @carl9170_unregister(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
