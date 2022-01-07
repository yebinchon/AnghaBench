; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_ao_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_load_ao_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.comedi_cmd = type { i64 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32*, i32* }
%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [40 x i8] c"attempting to load ao buffer %i (0x%x)\0A\00", align 1
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@bytes_in_sample = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"loading %i bytes\0A\00", align 1
@PLX_END_OF_CHAIN_BIT = common dso_local global i32 0, align 4
@AO_DMA_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @load_ao_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_ao_dma_buffer(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %11 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = call i32 @prev_ao_dma_index(%struct.comedi_device* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %24)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @comedi_buf_read_n_available(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %2
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TRIG_COUNT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ugt i32 %44, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %51)
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %43, %37
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @bytes_in_sample, align 4
  %58 = urem i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %151

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i8*, i32, ...) @DEBUG_PRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %71 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %70)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @cfc_read_array_from_buffer(%struct.TYPE_6__* %69, i32 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %83 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i8* %81, i8** %89, align 8
  %90 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %91 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %90)
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @le32_to_cpu(i8* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @PLX_END_OF_CHAIN_BIT, align 4
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %106 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %105)
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i8* %104, i8** %112, align 8
  %113 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %114 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %113)
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @le32_to_cpu(i8* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* @PLX_END_OF_CHAIN_BIT, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %9, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i8* @cpu_to_le32(i32 %127)
  %129 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %130 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %129)
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i8* %128, i8** %136, align 8
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  %139 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %140 = urem i32 %138, %139
  %141 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %142 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %141)
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %146 = call %struct.TYPE_5__* @priv(%struct.comedi_device* %145)
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub i32 %148, %144
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %64, %63
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_5__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @prev_ao_dma_index(%struct.comedi_device*) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32, ...) #1

declare dso_local i32 @comedi_buf_read_n_available(i32) #1

declare dso_local i32 @cfc_read_array_from_buffer(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
