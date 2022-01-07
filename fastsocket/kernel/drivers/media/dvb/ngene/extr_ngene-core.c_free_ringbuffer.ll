; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_free_ringbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_free_ringbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32 }
%struct.SRingBufferDescriptor = type { i64, i32, %struct.SBufferHeader*, i32, i32, %struct.SBufferHeader*, i32, i32, i32 }
%struct.SBufferHeader = type { %struct.TYPE_4__*, %struct.SBufferHeader*, %struct.TYPE_3__*, %struct.SBufferHeader*, %struct.SBufferHeader* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene*, %struct.SRingBufferDescriptor*)* @free_ringbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ringbuffer(%struct.ngene* %0, %struct.SRingBufferDescriptor* %1) #0 {
  %3 = alloca %struct.ngene*, align 8
  %4 = alloca %struct.SRingBufferDescriptor*, align 8
  %5 = alloca %struct.SBufferHeader*, align 8
  %6 = alloca i64, align 8
  store %struct.ngene* %0, %struct.ngene** %3, align 8
  store %struct.SRingBufferDescriptor* %1, %struct.SRingBufferDescriptor** %4, align 8
  %7 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %8 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %7, i32 0, i32 2
  %9 = load %struct.SBufferHeader*, %struct.SBufferHeader** %8, align 8
  store %struct.SBufferHeader* %9, %struct.SBufferHeader** %5, align 8
  %10 = load %struct.SBufferHeader*, %struct.SBufferHeader** %5, align 8
  %11 = icmp ne %struct.SBufferHeader* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %102

13:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %63, %13
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %17 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %14
  %21 = load %struct.SBufferHeader*, %struct.SBufferHeader** %5, align 8
  %22 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %21, i32 0, i32 3
  %23 = load %struct.SBufferHeader*, %struct.SBufferHeader** %22, align 8
  %24 = icmp ne %struct.SBufferHeader* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.ngene*, %struct.ngene** %3, align 8
  %27 = getelementptr inbounds %struct.ngene, %struct.ngene* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %30 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.SBufferHeader*, %struct.SBufferHeader** %5, align 8
  %33 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %32, i32 0, i32 3
  %34 = load %struct.SBufferHeader*, %struct.SBufferHeader** %33, align 8
  %35 = load %struct.SBufferHeader*, %struct.SBufferHeader** %5, align 8
  %36 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_free_consistent(i32 %28, i32 %31, %struct.SBufferHeader* %34, i32 %39)
  br label %41

41:                                               ; preds = %25, %20
  %42 = load %struct.SBufferHeader*, %struct.SBufferHeader** %5, align 8
  %43 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %42, i32 0, i32 1
  %44 = load %struct.SBufferHeader*, %struct.SBufferHeader** %43, align 8
  %45 = icmp ne %struct.SBufferHeader* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.ngene*, %struct.ngene** %3, align 8
  %48 = getelementptr inbounds %struct.ngene, %struct.ngene* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %51 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.SBufferHeader*, %struct.SBufferHeader** %5, align 8
  %54 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %53, i32 0, i32 1
  %55 = load %struct.SBufferHeader*, %struct.SBufferHeader** %54, align 8
  %56 = load %struct.SBufferHeader*, %struct.SBufferHeader** %5, align 8
  %57 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pci_free_consistent(i32 %49, i32 %52, %struct.SBufferHeader* %55, i32 %60)
  br label %62

62:                                               ; preds = %46, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %6, align 8
  %66 = load %struct.SBufferHeader*, %struct.SBufferHeader** %5, align 8
  %67 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %66, i32 0, i32 4
  %68 = load %struct.SBufferHeader*, %struct.SBufferHeader** %67, align 8
  store %struct.SBufferHeader* %68, %struct.SBufferHeader** %5, align 8
  br label %14

69:                                               ; preds = %14
  %70 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %71 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %70, i32 0, i32 5
  %72 = load %struct.SBufferHeader*, %struct.SBufferHeader** %71, align 8
  %73 = icmp ne %struct.SBufferHeader* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load %struct.ngene*, %struct.ngene** %3, align 8
  %76 = getelementptr inbounds %struct.ngene, %struct.ngene* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %79 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %82 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %81, i32 0, i32 5
  %83 = load %struct.SBufferHeader*, %struct.SBufferHeader** %82, align 8
  %84 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %85 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pci_free_consistent(i32 %77, i32 %80, %struct.SBufferHeader* %83, i32 %86)
  br label %88

88:                                               ; preds = %74, %69
  %89 = load %struct.ngene*, %struct.ngene** %3, align 8
  %90 = getelementptr inbounds %struct.ngene, %struct.ngene* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %93 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %96 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %95, i32 0, i32 2
  %97 = load %struct.SBufferHeader*, %struct.SBufferHeader** %96, align 8
  %98 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %4, align 8
  %99 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pci_free_consistent(i32 %91, i32 %94, %struct.SBufferHeader* %97, i32 %100)
  br label %102

102:                                              ; preds = %88, %12
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.SBufferHeader*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
