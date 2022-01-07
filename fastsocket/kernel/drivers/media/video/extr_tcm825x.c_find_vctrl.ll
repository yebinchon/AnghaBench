; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_find_vctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_find_vctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcontrol = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@V4L2_CID_BASE = common dso_local global i32 0, align 4
@video_control = common dso_local global %struct.vcontrol* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vcontrol* (i32)* @find_vctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vcontrol* @find_vctrl(i32 %0) #0 {
  %2 = alloca %struct.vcontrol*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @V4L2_CID_BASE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.vcontrol* null, %struct.vcontrol** %2, align 8
  br label %35

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %31, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.vcontrol*, %struct.vcontrol** @video_control, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.vcontrol* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load %struct.vcontrol*, %struct.vcontrol** @video_control, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.vcontrol, %struct.vcontrol* %16, i64 %18
  %20 = getelementptr inbounds %struct.vcontrol, %struct.vcontrol* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.vcontrol*, %struct.vcontrol** @video_control, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.vcontrol, %struct.vcontrol* %26, i64 %28
  store %struct.vcontrol* %29, %struct.vcontrol** %2, align 8
  br label %35

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %10

34:                                               ; preds = %10
  store %struct.vcontrol* null, %struct.vcontrol** %2, align 8
  br label %35

35:                                               ; preds = %34, %25, %8
  %36 = load %struct.vcontrol*, %struct.vcontrol** %2, align 8
  ret %struct.vcontrol* %36
}

declare dso_local i32 @ARRAY_SIZE(%struct.vcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
