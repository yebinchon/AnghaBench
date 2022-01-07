; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_set_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-io.c_pvr2_buffer_set_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_buffer = type { i32, i64, i32, %struct.pvr2_stream* }
%struct.pvr2_stream = type { i64, i32, %struct.pvr2_buffer*, i32 }

@PVR2_TRACE_BUF_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"/*---TRACE_FLOW---*/ bufferState    %p %6s --> %6s\00", align 1
@pvr2_buffer_state_ready = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"/*---TRACE_FLOW---*/ bufferPool     %8s inc cap=%07d cnt=%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_buffer*)* @pvr2_buffer_set_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_buffer_set_ready(%struct.pvr2_buffer* %0) #0 {
  %2 = alloca %struct.pvr2_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.pvr2_stream*, align 8
  store %struct.pvr2_buffer* %0, %struct.pvr2_buffer** %2, align 8
  %6 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %7 = call i32 @BUFFER_CHECK(%struct.pvr2_buffer* %6)
  %8 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %8, i32 0, i32 3
  %10 = load %struct.pvr2_stream*, %struct.pvr2_stream** %9, align 8
  store %struct.pvr2_stream* %10, %struct.pvr2_stream** %5, align 8
  %11 = load i32, i32* @PVR2_TRACE_BUF_FLOW, align 4
  %12 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %13 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.pvr2_buffer* @pvr2_buffer_state_decode(i32 %15)
  %17 = load i32, i32* @pvr2_buffer_state_ready, align 4
  %18 = call %struct.pvr2_buffer* @pvr2_buffer_state_decode(i32 %17)
  %19 = call i32 @pvr2_trace(i32 %11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.pvr2_buffer* %12, %struct.pvr2_buffer* %16, %struct.pvr2_buffer* %18)
  %20 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %21 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %25 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %30 = call i32 @pvr2_buffer_remove(%struct.pvr2_buffer* %29)
  %31 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %32 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %31, i32 0, i32 2
  %33 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %34 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %33, i32 0, i32 3
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load i32, i32* @pvr2_buffer_state_ready, align 4
  %37 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %40 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %44 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %47 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %46, i32 0, i32 2
  %48 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %47, align 8
  %49 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %48, i64 %45
  store %struct.pvr2_buffer* %49, %struct.pvr2_buffer** %47, align 8
  %50 = load i32, i32* @PVR2_TRACE_BUF_FLOW, align 4
  %51 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %2, align 8
  %52 = getelementptr inbounds %struct.pvr2_buffer, %struct.pvr2_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.pvr2_buffer* @pvr2_buffer_state_decode(i32 %53)
  %55 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %56 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %55, i32 0, i32 2
  %57 = load %struct.pvr2_buffer*, %struct.pvr2_buffer** %56, align 8
  %58 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %59 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.pvr2_buffer*
  %62 = call i32 @pvr2_trace(i32 %50, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), %struct.pvr2_buffer* %54, %struct.pvr2_buffer* %57, %struct.pvr2_buffer* %61)
  %63 = load %struct.pvr2_stream*, %struct.pvr2_stream** %5, align 8
  %64 = getelementptr inbounds %struct.pvr2_stream, %struct.pvr2_stream* %63, i32 0, i32 1
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @BUFFER_CHECK(%struct.pvr2_buffer*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_buffer*, %struct.pvr2_buffer*, %struct.pvr2_buffer*) #1

declare dso_local %struct.pvr2_buffer* @pvr2_buffer_state_decode(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pvr2_buffer_remove(%struct.pvr2_buffer*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
