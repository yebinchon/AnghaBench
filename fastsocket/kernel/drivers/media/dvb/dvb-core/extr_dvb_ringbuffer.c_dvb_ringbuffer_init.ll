; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i64, i32, i32, i64, i8*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_ringbuffer_init(%struct.dvb_ringbuffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dvb_ringbuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %19, i32 0, i32 2
  %21 = call i32 @init_waitqueue_head(i32* %20)
  %22 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_init(i32* %23)
  ret void
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
