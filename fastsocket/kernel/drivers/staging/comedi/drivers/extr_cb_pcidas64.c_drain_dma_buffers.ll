; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_drain_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_drain_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64*, i64, i32, i32*, i8* }

@PLX_DMA1_PCI_ADDRESS_REG = common dso_local global i32 0, align 4
@PLX_DMA0_PCI_ADDRESS_REG = common dso_local global i32 0, align 4
@DMA_BUFFER_SIZE = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"next buffer addr 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pci addr reg 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @drain_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_dma_buffers(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.comedi_async*, %struct.comedi_async** %13, align 8
  store %struct.comedi_async* %14, %struct.comedi_async** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @PLX_DMA1_PCI_ADDRESS_REG, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %21, i64 %23
  store i8* %24, i8** %9, align 8
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @PLX_DMA0_PCI_ADDRESS_REG, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %29, i64 %31
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %25, %17
  store i32 0, i32* %7, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @readl(i8* %34)
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %145, %33
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i64, i64* %41, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %37, %47
  br i1 %48, label %64, label %49

49:                                               ; preds = %36
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %52 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %51)
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %54, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DMA_BUFFER_SIZE, align 8
  %62 = add i64 %60, %61
  %63 = icmp uge i64 %50, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %49, %36
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = call i32 @board(%struct.comedi_device* %66)
  %68 = call i32 @ai_dma_ring_count(i32 %67)
  %69 = icmp slt i32 %65, %68
  br label %70

70:                                               ; preds = %64, %49
  %71 = phi i1 [ false, %49 ], [ %69, %64 ]
  br i1 %71, label %72, label %148

72:                                               ; preds = %70
  %73 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %74 = call i32 @dma_transfer_size(%struct.comedi_device* %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %76 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TRIG_COUNT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %84 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %82, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %90 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %89)
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %88, %81
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %96 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, %94
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %72
  %101 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %105 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %104)
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %109 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %108)
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i32 @cfc_write_array_to_buffer(%struct.TYPE_6__* %103, i32 %113, i32 %117)
  %119 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %120 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %119)
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  %124 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %125 = call i32 @board(%struct.comedi_device* %124)
  %126 = call i32 @ai_dma_ring_count(i32 %125)
  %127 = sext i32 %126 to i64
  %128 = urem i64 %123, %127
  %129 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %130 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %129)
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i64 %128, i64* %131, align 8
  %132 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %133 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %132)
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %137 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %136)
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i64, i64* %135, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %141)
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %143)
  br label %145

145:                                              ; preds = %100
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %36

148:                                              ; preds = %70
  ret void
}

declare dso_local %struct.TYPE_5__* @priv(%struct.comedi_device*) #1

declare dso_local i64 @readl(i8*) #1

declare dso_local i32 @ai_dma_ring_count(i32) #1

declare dso_local i32 @board(%struct.comedi_device*) #1

declare dso_local i32 @dma_transfer_size(%struct.comedi_device*) #1

declare dso_local i32 @cfc_write_array_to_buffer(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
