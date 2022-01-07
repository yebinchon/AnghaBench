; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-io.c_pvr2_stream_set_buffer_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-io.c_pvr2_stream_set_buffer_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_stream = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_stream_set_buffer_count(%struct.pvr2_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pvr2_stream* %0, %struct.pvr2_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %8 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %15 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %20 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %22 = call i32 @pvr2_stream_achieve_buffer_count(%struct.pvr2_stream* %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %17
  %24 = load %struct.pvr2_stream*, %struct.pvr2_stream** %4, align 8
  %25 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pvr2_stream_achieve_buffer_count(%struct.pvr2_stream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
