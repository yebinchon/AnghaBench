; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_free_idlebuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_free_idlebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32 }
%struct.SRingBufferDescriptor = type { i32, %struct.SBufferHeader* }
%struct.SBufferHeader = type { %struct.TYPE_2__, i32*, i32*, %struct.SBufferHeader* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*, %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor*)* @free_idlebuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_idlebuffer(%struct.ngene* %0, %struct.SRingBufferDescriptor* %1, %struct.SRingBufferDescriptor* %2) #0 {
  %4 = alloca %struct.ngene*, align 8
  %5 = alloca %struct.SRingBufferDescriptor*, align 8
  %6 = alloca %struct.SRingBufferDescriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.SBufferHeader*, align 8
  store %struct.ngene* %0, %struct.ngene** %4, align 8
  store %struct.SRingBufferDescriptor* %1, %struct.SRingBufferDescriptor** %5, align 8
  store %struct.SRingBufferDescriptor* %2, %struct.SRingBufferDescriptor** %6, align 8
  %9 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %10 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %9, i32 0, i32 1
  %11 = load %struct.SBufferHeader*, %struct.SBufferHeader** %10, align 8
  store %struct.SBufferHeader* %11, %struct.SBufferHeader** %8, align 8
  %12 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %5, align 8
  %13 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %12, i32 0, i32 1
  %14 = load %struct.SBufferHeader*, %struct.SBufferHeader** %13, align 8
  %15 = icmp ne %struct.SBufferHeader* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.ngene*, %struct.ngene** %4, align 8
  %19 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %5, align 8
  %20 = call i32 @free_ringbuffer(%struct.ngene* %18, %struct.SRingBufferDescriptor* %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %38, %17
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %24 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.SBufferHeader*, %struct.SBufferHeader** %8, align 8
  %29 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.SBufferHeader*, %struct.SBufferHeader** %8, align 8
  %31 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.SBufferHeader*, %struct.SBufferHeader** %8, align 8
  %33 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.SBufferHeader*, %struct.SBufferHeader** %8, align 8
  %36 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load %struct.SBufferHeader*, %struct.SBufferHeader** %8, align 8
  %42 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %41, i32 0, i32 3
  %43 = load %struct.SBufferHeader*, %struct.SBufferHeader** %42, align 8
  store %struct.SBufferHeader* %43, %struct.SBufferHeader** %8, align 8
  br label %21

44:                                               ; preds = %16, %21
  ret void
}

declare dso_local i32 @free_ringbuffer(%struct.ngene*, %struct.SRingBufferDescriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
