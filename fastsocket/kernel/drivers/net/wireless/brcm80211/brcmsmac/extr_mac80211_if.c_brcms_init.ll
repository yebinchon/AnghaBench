; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Initializing wl%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_init(%struct.brcms_info* %0) #0 {
  %2 = alloca %struct.brcms_info*, align 8
  store %struct.brcms_info* %0, %struct.brcms_info** %2, align 8
  %3 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %4 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %3, i32 0, i32 1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %11 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @brcms_dbg_info(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %17 = call i32 @brcms_reset(%struct.brcms_info* %16)
  %18 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load %struct.brcms_info*, %struct.brcms_info** %2, align 8
  %22 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @brcms_c_init(%struct.TYPE_6__* %20, i32 %23)
  ret void
}

declare dso_local i32 @brcms_dbg_info(i32, i8*, i32) #1

declare dso_local i32 @brcms_reset(%struct.brcms_info*) #1

declare dso_local i32 @brcms_c_init(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
