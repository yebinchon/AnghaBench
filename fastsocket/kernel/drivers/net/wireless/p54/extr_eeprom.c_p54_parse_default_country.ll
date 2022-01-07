; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_eeprom.c_p54_parse_default_country.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_eeprom.c_p54_parse_default_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.pda_country = type { i64, i32 }

@.str = private unnamed_addr constant [71 x i8] c"found possible invalid default country eeprom entry. (entry size: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"country:\00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"please report this issue.\0A\00", align 1
@PDR_COUNTRY_CERT_CODE_PSEUDO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i8*, i32)* @p54_parse_default_country to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_parse_default_country(%struct.ieee80211_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pda_country*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 %9, 16
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i8*, ...) @wiphy_err(i32 %14, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8* %18, i32 %19)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @wiphy_err(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %42

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.pda_country*
  store %struct.pda_country* %27, %struct.pda_country** %7, align 8
  %28 = load %struct.pda_country*, %struct.pda_country** %7, align 8
  %29 = getelementptr inbounds %struct.pda_country, %struct.pda_country* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PDR_COUNTRY_CERT_CODE_PSEUDO, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pda_country*, %struct.pda_country** %7, align 8
  %38 = getelementptr inbounds %struct.pda_country, %struct.pda_country* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @regulatory_hint(i32 %36, i32 %39)
  br label %42

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %11, %41, %33
  ret void
}

declare dso_local i32 @wiphy_err(i32, i8*, ...) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

declare dso_local i32 @regulatory_hint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
