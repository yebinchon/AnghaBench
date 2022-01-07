; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_drain_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_drain_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, %struct.TYPE_6__*, i32*, i8* }
%struct.TYPE_6__ = type { i64, i32 }

@PLX_DMA1_PCI_ADDRESS_REG = common dso_local global i32 0, align 4
@PLX_DMA0_PCI_ADDRESS_REG = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"next desc addr 0x%lx\0A\00", align 1
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
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.comedi_async*, %struct.comedi_async** %13, align 8
  store %struct.comedi_async* %14, %struct.comedi_async** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 6
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* @PLX_DMA1_PCI_ADDRESS_REG, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %21, i64 %23
  store i8* %24, i8** %9, align 8
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 6
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

36:                                               ; preds = %162, %33
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %39 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %43 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le32_to_cpu(i32 %48)
  %50 = icmp ult i64 %37, %49
  br i1 %50, label %72, label %51

51:                                               ; preds = %36
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %54 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %58 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @le32_to_cpu(i32 %63)
  %65 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %66 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %65)
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add i64 %64, %69
  %71 = icmp uge i64 %52, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %51, %36
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %75 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %74)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %73, %77
  br label %79

79:                                               ; preds = %72, %51
  %80 = phi i1 [ false, %51 ], [ %78, %72 ]
  br i1 %80, label %81, label %165

81:                                               ; preds = %79
  %82 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %83 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = udiv i64 %86, 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %8, align 4
  %89 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %90 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TRIG_COUNT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %81
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %98 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %97)
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %96, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %104 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %103)
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %102, %95
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %110 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %109)
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, %108
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %107, %81
  %115 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %119 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %118)
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %123 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %122)
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @cfc_write_array_to_buffer(%struct.TYPE_8__* %117, i32 %127, i32 %131)
  %133 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %134 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %133)
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %139 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %138)
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %144 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %143)
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = urem i64 %146, %142
  store i64 %147, i64* %145, align 8
  %148 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %149 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %148)
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %153 = call %struct.TYPE_7__* @priv(%struct.comedi_device* %152)
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %158)
  %160 = load i64, i64* %6, align 8
  %161 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %160)
  br label %162

162:                                              ; preds = %114
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %36

165:                                              ; preds = %79
  ret void
}

declare dso_local %struct.TYPE_7__* @priv(%struct.comedi_device*) #1

declare dso_local i64 @readl(i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cfc_write_array_to_buffer(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
