; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_analog_stream_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_analog_stream_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"au0828_analog_stream_reset called\0A\00", align 1
@AU0828_SENSORCTRL_100 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au0828_analog_stream_reset(%struct.au0828_dev* %0) #0 {
  %2 = alloca %struct.au0828_dev*, align 8
  store %struct.au0828_dev* %0, %struct.au0828_dev** %2, align 8
  %3 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %5 = load i32, i32* @AU0828_SENSORCTRL_100, align 4
  %6 = call i32 @au0828_writereg(%struct.au0828_dev* %4, i32 %5, i32 0)
  %7 = call i32 @mdelay(i32 30)
  %8 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %9 = load i32, i32* @AU0828_SENSORCTRL_100, align 4
  %10 = call i32 @au0828_writereg(%struct.au0828_dev* %8, i32 %9, i32 179)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @au0828_writereg(%struct.au0828_dev*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
