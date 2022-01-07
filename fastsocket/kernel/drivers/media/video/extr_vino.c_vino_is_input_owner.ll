; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_is_input_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_is_input_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.vino_channel_settings = type { i32, i32 }

@vino_drvdata = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_channel_settings*)* @vino_is_input_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_is_input_owner(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vino_channel_settings*, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %3, align 8
  %4 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %5 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %25 [
    i32 130, label %7
    i32 128, label %7
    i32 129, label %16
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %12 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %21 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %16, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
