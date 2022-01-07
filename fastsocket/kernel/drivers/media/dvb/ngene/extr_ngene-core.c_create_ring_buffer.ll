; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_create_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_create_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.SRingBufferDescriptor = type { i32, i32, i8*, %struct.SBufferHeader* }
%struct.SBufferHeader = type { %struct.TYPE_2__, %struct.SBufferHeader* }
%struct.TYPE_2__ = type { i8* }

@SIZEOF_SBufferHeader = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.SRingBufferDescriptor*, i32)* @create_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ring_buffer(%struct.pci_dev* %0, %struct.SRingBufferDescriptor* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.SRingBufferDescriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SBufferHeader*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.SBufferHeader*, align 8
  %16 = alloca %struct.SBufferHeader*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.SRingBufferDescriptor* %1, %struct.SRingBufferDescriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @SIZEOF_SBufferHeader, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %21 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %20, i32 0, i32 3
  store %struct.SBufferHeader* null, %struct.SBufferHeader** %21, align 8
  %22 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %23 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %25 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %24, i32 0, i32 2
  store i8* null, i8** %25, align 8
  %26 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %27 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 4096
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 4096, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.SBufferHeader* @pci_alloc_consistent(%struct.pci_dev* %32, i32 %33, i8** %8)
  store %struct.SBufferHeader* %34, %struct.SBufferHeader** %9, align 8
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %12, align 8
  %36 = load %struct.SBufferHeader*, %struct.SBufferHeader** %9, align 8
  %37 = icmp ne %struct.SBufferHeader* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %95

41:                                               ; preds = %31
  %42 = load %struct.SBufferHeader*, %struct.SBufferHeader** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @memset(%struct.SBufferHeader* %42, i32 0, i32 %43)
  %45 = load i8*, i8** %12, align 8
  store i8* %45, i8** %13, align 8
  %46 = load %struct.SBufferHeader*, %struct.SBufferHeader** %9, align 8
  store %struct.SBufferHeader* %46, %struct.SBufferHeader** %15, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %72, %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %54 = bitcast %struct.SBufferHeader* %53 to i32*
  %55 = load i32, i32* @SIZEOF_SBufferHeader, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = bitcast i32* %57 to %struct.SBufferHeader*
  store %struct.SBufferHeader* %58, %struct.SBufferHeader** %16, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* @SIZEOF_SBufferHeader, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  store i8* %62, i8** %14, align 8
  %63 = load %struct.SBufferHeader*, %struct.SBufferHeader** %16, align 8
  %64 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %65 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %64, i32 0, i32 1
  store %struct.SBufferHeader* %63, %struct.SBufferHeader** %65, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %68 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = load %struct.SBufferHeader*, %struct.SBufferHeader** %16, align 8
  store %struct.SBufferHeader* %70, %struct.SBufferHeader** %15, align 8
  %71 = load i8*, i8** %14, align 8
  store i8* %71, i8** %13, align 8
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %47

75:                                               ; preds = %47
  %76 = load %struct.SBufferHeader*, %struct.SBufferHeader** %9, align 8
  %77 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %78 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %77, i32 0, i32 1
  store %struct.SBufferHeader* %76, %struct.SBufferHeader** %78, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load %struct.SBufferHeader*, %struct.SBufferHeader** %15, align 8
  %81 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load %struct.SBufferHeader*, %struct.SBufferHeader** %9, align 8
  %84 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %85 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %84, i32 0, i32 3
  store %struct.SBufferHeader* %83, %struct.SBufferHeader** %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %88 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %91 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %6, align 8
  %94 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %75, %38
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.SBufferHeader* @pci_alloc_consistent(%struct.pci_dev*, i32, i8**) #1

declare dso_local i32 @memset(%struct.SBufferHeader*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
