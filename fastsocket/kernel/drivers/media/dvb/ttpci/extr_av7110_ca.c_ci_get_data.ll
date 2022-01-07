; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ca.c_ci_get_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ca.c_ci_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ci_get_data(%struct.dvb_ringbuffer* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_ringbuffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %8 = call i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %7)
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 2
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %29

13:                                               ; preds = %3
  %14 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 8
  %17 = call i32 @DVB_RINGBUFFER_WRITE_BYTE(%struct.dvb_ringbuffer* %14, i32 %16)
  %18 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = call i32 @DVB_RINGBUFFER_WRITE_BYTE(%struct.dvb_ringbuffer* %18, i32 %20)
  %22 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dvb_ringbuffer_write(%struct.dvb_ringbuffer* %22, i32* %23, i32 %24)
  %26 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %4, align 8
  %27 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %26, i32 0, i32 0
  %28 = call i32 @wake_up_interruptible(i32* %27)
  br label %29

29:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @dvb_ringbuffer_free(%struct.dvb_ringbuffer*) #1

declare dso_local i32 @DVB_RINGBUFFER_WRITE_BYTE(%struct.dvb_ringbuffer*, i32) #1

declare dso_local i32 @dvb_ringbuffer_write(%struct.dvb_ringbuffer*, i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
