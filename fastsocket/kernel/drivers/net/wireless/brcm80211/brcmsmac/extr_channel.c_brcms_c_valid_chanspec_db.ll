; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_valid_chanspec_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_valid_chanspec_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_cm_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_valid_chanspec_db(%struct.brcms_cm_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_cm_info*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_cm_info* %0, %struct.brcms_cm_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @brcms_c_valid_chanspec_ext(%struct.brcms_cm_info* %5, i32 %6)
  ret i32 %7
}

declare dso_local i32 @brcms_c_valid_chanspec_ext(%struct.brcms_cm_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
