; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_AllocateRingBuffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_AllocateRingBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.SRingBufferDescriptor = type { i32, i32, i32, i32, i32, %struct.SBufferHeader*, i8* }
%struct.SBufferHeader = type { %struct.TYPE_2__, %struct.HW_SCATTER_GATHER_ELEMENT*, i8*, %struct.HW_SCATTER_GATHER_ELEMENT*, i8*, %struct.SBufferHeader* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.HW_SCATTER_GATHER_ELEMENT = type { i32, i32 }

@NUM_SCATTER_GATHER_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OVERFLOW_BUFFER_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*, %struct.SRingBufferDescriptor*, i32, i32)* @AllocateRingBuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocateRingBuffers(%struct.pci_dev* %0, i8* %1, %struct.SRingBufferDescriptor* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SRingBufferDescriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.HW_SCATTER_GATHER_ELEMENT*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.SBufferHeader*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.SRingBufferDescriptor* %2, %struct.SRingBufferDescriptor** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %25 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @NUM_SCATTER_GATHER_ENTRIES, align 4
  %31 = mul nsw i32 %30, 2
  br label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @NUM_SCATTER_GATHER_ENTRIES, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %31, %29 ], [ %33, %32 ]
  %36 = mul nsw i32 %26, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 4096
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 4096, i32* %16, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call i8* @pci_alloc_consistent(%struct.pci_dev* %44, i32 %45, i8** %12)
  store i8* %46, i8** %21, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %17, align 4
  %49 = load i8*, i8** %21, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %172

54:                                               ; preds = %43
  %55 = load i8*, i8** %21, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @memset(i8* %55, i32 0, i32 %56)
  %58 = load i8*, i8** %21, align 8
  %59 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %60 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %63 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %66 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %69 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %72 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %21, align 8
  %74 = bitcast i8* %73 to %struct.HW_SCATTER_GATHER_ELEMENT*
  store %struct.HW_SCATTER_GATHER_ELEMENT* %74, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %19, align 4
  %76 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %77 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %76, i32 0, i32 5
  %78 = load %struct.SBufferHeader*, %struct.SBufferHeader** %77, align 8
  store %struct.SBufferHeader* %78, %struct.SBufferHeader** %20, align 8
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %164, %54
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.SRingBufferDescriptor*, %struct.SRingBufferDescriptor** %9, align 8
  %82 = getelementptr inbounds %struct.SRingBufferDescriptor, %struct.SRingBufferDescriptor* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %170

85:                                               ; preds = %79
  %86 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i8* @pci_alloc_consistent(%struct.pci_dev* %86, i32 %87, i8** %12)
  store i8* %88, i8** %23, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %22, align 4
  %91 = load i8*, i8** %23, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %172

96:                                               ; preds = %85
  %97 = load i8*, i8** %23, align 8
  %98 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %99 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %102 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %105 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %107 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %108 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %107, i32 0, i32 3
  store %struct.HW_SCATTER_GATHER_ELEMENT* %106, %struct.HW_SCATTER_GATHER_ELEMENT** %108, align 8
  %109 = load i32, i32* %19, align 4
  %110 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %111 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* @NUM_SCATTER_GATHER_ENTRIES, align 4
  %114 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %115 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %118 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %117, i64 1
  store %struct.HW_SCATTER_GATHER_ELEMENT* %118, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %119 = load i32, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %120, 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %96
  br label %164

126:                                              ; preds = %96
  %127 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i8* @pci_alloc_consistent(%struct.pci_dev* %127, i32 %128, i8** %12)
  store i8* %129, i8** %23, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = ptrtoint i8* %130 to i32
  store i32 %131, i32* %22, align 4
  %132 = load i8*, i8** %23, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %172

137:                                              ; preds = %126
  %138 = load i8*, i8** %23, align 8
  %139 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %140 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* %22, align 4
  %142 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %143 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %146 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %148 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %149 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %148, i32 0, i32 1
  store %struct.HW_SCATTER_GATHER_ELEMENT* %147, %struct.HW_SCATTER_GATHER_ELEMENT** %149, align 8
  %150 = load i32, i32* %19, align 4
  %151 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %152 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 8
  %154 = load i32, i32* @NUM_SCATTER_GATHER_ENTRIES, align 4
  %155 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %156 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  store i32 %154, i32* %157, align 4
  %158 = load %struct.HW_SCATTER_GATHER_ELEMENT*, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %159 = getelementptr inbounds %struct.HW_SCATTER_GATHER_ELEMENT, %struct.HW_SCATTER_GATHER_ELEMENT* %158, i64 1
  store %struct.HW_SCATTER_GATHER_ELEMENT* %159, %struct.HW_SCATTER_GATHER_ELEMENT** %18, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = add i64 %161, 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %19, align 4
  br label %164

164:                                              ; preds = %137, %125
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  %167 = load %struct.SBufferHeader*, %struct.SBufferHeader** %20, align 8
  %168 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %167, i32 0, i32 5
  %169 = load %struct.SBufferHeader*, %struct.SBufferHeader** %168, align 8
  store %struct.SBufferHeader* %169, %struct.SBufferHeader** %20, align 8
  br label %79

170:                                              ; preds = %79
  %171 = load i32, i32* %15, align 4
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %170, %134, %93, %51
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
