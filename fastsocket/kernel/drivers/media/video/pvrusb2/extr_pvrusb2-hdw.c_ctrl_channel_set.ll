; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_channel_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_channel_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32*, i32, i32, i64 }

@FREQTABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32, i32)* @ctrl_channel_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_channel_set(%struct.pvr2_ctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %11 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %10, i32 0, i32 0
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %11, align 8
  store %struct.pvr2_hdw* %12, %struct.pvr2_hdw** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @FREQTABLE_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %53

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %25 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %53

35:                                               ; preds = %23
  %36 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @pvr2_hdw_set_cur_freq(%struct.pvr2_hdw* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %20
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %41 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %52

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %51 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %34, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @pvr2_hdw_set_cur_freq(%struct.pvr2_hdw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
