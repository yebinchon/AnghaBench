; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_set_interval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_set_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32 }

@BPLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i16, i16)* @adm8211_set_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8211_set_interval(%struct.ieee80211_hw* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.adm8211_priv*, align 8
  %8 = alloca i16, align 2
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  store %struct.adm8211_priv* %11, %struct.adm8211_priv** %7, align 8
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = shl i32 %13, 16
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %8, align 2
  %19 = load i32, i32* @BPLI, align 4
  %20 = load i16, i16* %8, align 2
  %21 = call i32 @ADM8211_CSR_WRITE(i32 %19, i16 zeroext %20)
  ret void
}

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
