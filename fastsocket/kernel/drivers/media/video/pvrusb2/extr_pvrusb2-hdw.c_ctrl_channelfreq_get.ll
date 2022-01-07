; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_channelfreq_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_channelfreq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32, i32* }

@FREQTABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32*)* @ctrl_channelfreq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_channelfreq_get(%struct.pvr2_ctrl* %0, i32* %1) #0 {
  %3 = alloca %struct.pvr2_ctrl*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %6, i32 0, i32 0
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %7, align 8
  store %struct.pvr2_hdw* %8, %struct.pvr2_hdw** %5, align 8
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %10 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %15 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FREQTABLE_SIZE, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %21 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  br label %33

31:                                               ; preds = %13, %2
  %32 = load i32*, i32** %4, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %19
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
