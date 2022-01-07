; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_FillTSIdleBuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_FillTSIdleBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRingBufferDescriptor = type { i32, %struct.SBufferHeader* }
%struct.SBufferHeader = type { %struct.SBufferHeader*, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor*)* @FillTSIdleBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FillTSIdleBuffer(%struct.SRingBufferDescriptor* %0, %struct.SRingBufferDescriptor* %1) #0 {
  %3 = alloca %struct.SRingBufferDescriptor*, align 8
  %4 = alloca %struct.SRingBufferDescriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SBufferHeader*, align 8
  %8 = alloca i32, align 4
  store %struct.SRingBufferDescriptor* %0, %struct.SRingBufferDescriptor** %3, align 8
  store %struct.SRingBufferDescriptor* %1, %struct.SRingBufferDescriptor** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %10 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %13 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %12, i32 0, i32 1
  %14 = load %struct.SBufferHeader*, %struct.SBufferHeader** %13, align 8
  store %struct.SBufferHeader* %14, %struct.SBufferHeader** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %55, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %3, align 8
  %21 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %20, i32 0, i32 1
  %22 = load %struct.SBufferHeader*, %struct.SBufferHeader** %21, align 8
  %23 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.SBufferHeader*, %struct.SBufferHeader** %7, align 8
  %26 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %3, align 8
  %28 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %27, i32 0, i32 1
  %29 = load %struct.SBufferHeader*, %struct.SBufferHeader** %28, align 8
  %30 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.SBufferHeader*, %struct.SBufferHeader** %7, align 8
  %33 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %3, align 8
  %35 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %34, i32 0, i32 1
  %36 = load %struct.SBufferHeader*, %struct.SBufferHeader** %35, align 8
  %37 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.SBufferHeader*, %struct.SBufferHeader** %7, align 8
  %41 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %3, align 8
  %44 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %43, i32 0, i32 1
  %45 = load %struct.SBufferHeader*, %struct.SBufferHeader** %44, align 8
  %46 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.SBufferHeader*, %struct.SBufferHeader** %7, align 8
  %50 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.SBufferHeader*, %struct.SBufferHeader** %7, align 8
  %53 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %52, i32 0, i32 0
  %54 = load %struct.SBufferHeader*, %struct.SBufferHeader** %53, align 8
  store %struct.SBufferHeader* %54, %struct.SBufferHeader** %7, align 8
  br label %55

55:                                               ; preds = %19
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %15

58:                                               ; preds = %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
