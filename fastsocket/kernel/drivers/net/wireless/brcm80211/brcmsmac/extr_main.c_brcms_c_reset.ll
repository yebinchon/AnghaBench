; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"wl%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_reset(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %3 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %4 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %9 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @brcms_dbg_info(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %15 = call i32 @brcms_c_statsupd(%struct.brcms_c_info* %14)
  %16 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %17 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memset(i32 %20, i32 0, i32 4)
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i32 @brcms_b_reset(%struct.TYPE_6__* %24)
  ret void
}

declare dso_local i32 @brcms_dbg_info(i32, i8*, i32) #1

declare dso_local i32 @brcms_c_statsupd(%struct.brcms_c_info*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @brcms_b_reset(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
