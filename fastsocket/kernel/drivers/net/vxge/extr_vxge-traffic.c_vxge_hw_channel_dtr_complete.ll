; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_channel_dtr_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-traffic.c_vxge_hw_channel_dtr_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_channel = type { i64, i64, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vxge_hw_channel_dtr_complete(%struct.__vxge_hw_channel* %0) #0 {
  %2 = alloca %struct.__vxge_hw_channel*, align 8
  store %struct.__vxge_hw_channel* %0, %struct.__vxge_hw_channel** %2, align 8
  %3 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %4 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %3, i32 0, i32 3
  %5 = load i32**, i32*** %4, align 8
  %6 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %7 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32*, i32** %5, i64 %8
  store i32* null, i32** %9, align 8
  %10 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %11 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %15 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %20 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.__vxge_hw_channel*, %struct.__vxge_hw_channel** %2, align 8
  %23 = getelementptr inbounds %struct.__vxge_hw_channel, %struct.__vxge_hw_channel* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
