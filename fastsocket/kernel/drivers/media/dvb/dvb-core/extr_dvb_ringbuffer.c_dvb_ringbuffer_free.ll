; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ringbuffer.c_dvb_ringbuffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ringbuffer = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dvb_ringbuffer_free(%struct.dvb_ringbuffer* %0) #0 {
  %2 = alloca %struct.dvb_ringbuffer*, align 8
  %3 = alloca i64, align 8
  store %struct.dvb_ringbuffer* %0, %struct.dvb_ringbuffer** %2, align 8
  %4 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.dvb_ringbuffer*, %struct.dvb_ringbuffer** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_ringbuffer, %struct.dvb_ringbuffer* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add nsw i64 %17, %16
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i64, i64* %3, align 8
  %21 = sub nsw i64 %20, 1
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
