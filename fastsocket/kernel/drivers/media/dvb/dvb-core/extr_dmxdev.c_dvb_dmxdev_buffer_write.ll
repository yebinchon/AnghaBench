; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_buffer_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dmxdev.c_dvb_dmxdev_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"dmxdev: buffer overflow\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ringbuffer*, i32*, i64)* @dvb_dmxdev_buffer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_dmxdev_buffer_write(%struct.dvb_ringbuffer* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ringbuffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

12:                                               ; preds = %3
  %13 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %33

18:                                               ; preds = %12
  %19 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %5, align 8
  %20 = call i64 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EOVERFLOW, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %18
  %29 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @dvb_ringbuffer_write(%struct.dvb_ringbuffer* %29, i32* %30, i64 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %24, %17, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @dvb_ringbuffer_free(%struct.dvb_ringbuffer*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dvb_ringbuffer_write(%struct.dvb_ringbuffer*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
