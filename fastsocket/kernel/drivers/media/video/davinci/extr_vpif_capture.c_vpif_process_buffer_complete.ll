; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_process_buffer_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_process_buffer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_obj = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.common_obj*)* @vpif_process_buffer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_process_buffer_complete(%struct.common_obj* %0) #0 {
  %2 = alloca %struct.common_obj*, align 8
  store %struct.common_obj* %0, %struct.common_obj** %2, align 8
  %3 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %4 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = call i32 @do_gettimeofday(i32* %6)
  %8 = load i32, i32* @VIDEOBUF_DONE, align 4
  %9 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %10 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %8, i32* %12, align 4
  %13 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %14 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @wake_up_interruptible(i32* %16)
  %18 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.common_obj*, %struct.common_obj** %2, align 8
  %22 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %21, i32 0, i32 1
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  ret void
}

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
