; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_get_mimo_5g.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_get_mimo_5g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locale_mimo_info = type { i32 }

@g_mimo_5g_table = common dso_local global %struct.locale_mimo_info** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.locale_mimo_info* (i64)* @brcms_c_get_mimo_5g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.locale_mimo_info* @brcms_c_get_mimo_5g(i64 %0) #0 {
  %2 = alloca %struct.locale_mimo_info*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load %struct.locale_mimo_info**, %struct.locale_mimo_info*** @g_mimo_5g_table, align 8
  %6 = call i64 @ARRAY_SIZE(%struct.locale_mimo_info** %5)
  %7 = icmp uge i64 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.locale_mimo_info* null, %struct.locale_mimo_info** %2, align 8
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.locale_mimo_info**, %struct.locale_mimo_info*** @g_mimo_5g_table, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.locale_mimo_info*, %struct.locale_mimo_info** %10, i64 %11
  %13 = load %struct.locale_mimo_info*, %struct.locale_mimo_info** %12, align 8
  store %struct.locale_mimo_info* %13, %struct.locale_mimo_info** %2, align 8
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.locale_mimo_info*, %struct.locale_mimo_info** %2, align 8
  ret %struct.locale_mimo_info* %15
}

declare dso_local i64 @ARRAY_SIZE(%struct.locale_mimo_info**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
