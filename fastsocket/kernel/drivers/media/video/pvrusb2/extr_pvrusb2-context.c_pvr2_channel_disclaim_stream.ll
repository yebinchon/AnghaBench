; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_disclaim_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_disclaim_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_channel*)* @pvr2_channel_disclaim_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_channel_disclaim_stream(%struct.pvr2_channel* %0) #0 {
  %2 = alloca %struct.pvr2_channel*, align 8
  store %struct.pvr2_channel* %0, %struct.pvr2_channel** %2, align 8
  %3 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %4 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %10 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pvr2_stream_kill(i32 %13)
  %15 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %16 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.pvr2_channel*, %struct.pvr2_channel** %2, align 8
  %20 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %19, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %20, align 8
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @pvr2_stream_kill(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
