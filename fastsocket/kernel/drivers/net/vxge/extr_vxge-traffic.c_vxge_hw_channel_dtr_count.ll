; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_channel_dtr_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_channel_dtr_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_channel = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_channel_dtr_count(%struct.__vxge_hw_channel* %0) #0 {
  %2 = alloca %struct.__vxge_hw_channel*, align 8
  store %struct.__vxge_hw_channel* %0, %struct.__vxge_hw_channel** %2, align 8
  %3 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %4 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %7 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %5, %8
  %10 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %11 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %14 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = add nsw i32 %9, %16
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
