; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_set_default_framerate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_set_default_framerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vino_channel_settings = type { i64 }

@vino_data_norms = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*)* @vino_set_default_framerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_set_default_framerate(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  %3 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_data_norms, align 8
  %5 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %6 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @vino_set_framerate(%struct.vino_channel_settings* %3, i32 %10)
  ret void
}

declare dso_local i32 @vino_set_framerate(%struct.vino_channel_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
