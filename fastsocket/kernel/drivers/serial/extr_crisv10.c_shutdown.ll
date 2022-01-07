; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e100_serial = type { i32*, i32, i32, %struct.TYPE_8__, %struct.TYPE_5__, i32, i32, i64, i64, i8**, i64, i8**, %struct.etrax_dma_descr* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.etrax_dma_descr = type { i64 }
%struct.etrax_recv_buffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"shutdown %i\0A\00", align 1
@REG_TR_CTRL = common dso_local global i64 0, align 8
@R_DMA_CH6_CMD = common dso_local global i32 0, align 4
@cmd = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@SERIAL_RECV_DESCRIPTORS = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e100_serial*)* @shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown(%struct.e100_serial* %0) #0 {
  %2 = alloca %struct.e100_serial*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.etrax_dma_descr*, align 8
  %5 = alloca %struct.etrax_recv_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.e100_serial* %0, %struct.e100_serial** %2, align 8
  %7 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %8 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %7, i32 0, i32 12
  %9 = load %struct.etrax_dma_descr*, %struct.etrax_dma_descr** %8, align 8
  store %struct.etrax_dma_descr* %9, %struct.etrax_dma_descr** %4, align 8
  %10 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %11 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %14 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DEBUG_LOG(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @DFLOW(i32 %16)
  %18 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %19 = call i32 @e100_disable_rx(%struct.e100_serial* %18)
  %20 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %21 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, -65
  store i32 %23, i32* %21, align 8
  %24 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %25 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @REG_TR_CTRL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %30 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %29, i32 0, i32 10
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %1
  %34 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %35 = call i32 @e100_disable_rxdma_irq(%struct.e100_serial* %34)
  %36 = load i32, i32* @R_DMA_CH6_CMD, align 4
  %37 = load i32, i32* @cmd, align 4
  %38 = load i32, i32* @reset, align 4
  %39 = call i8* @IO_STATE(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %41 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %40, i32 0, i32 11
  %42 = load i8**, i8*** %41, align 8
  store i8* %39, i8** %42, align 8
  %43 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %44 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %43, i32 0, i32 10
  store i64 0, i64* %44, align 8
  br label %48

45:                                               ; preds = %1
  %46 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %47 = call i32 @e100_disable_serial_data_irq(%struct.e100_serial* %46)
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %50 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %55 = call i32 @e100_disable_txdma_irq(%struct.e100_serial* %54)
  %56 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %57 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @R_DMA_CH6_CMD, align 4
  %59 = load i32, i32* @cmd, align 4
  %60 = load i32, i32* @reset, align 4
  %61 = call i8* @IO_STATE(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %63 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %62, i32 0, i32 9
  %64 = load i8**, i8*** %63, align 8
  store i8* %61, i8** %64, align 8
  %65 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %66 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  br label %72

67:                                               ; preds = %48
  %68 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %69 = call i32 @e100_disable_serial_tx_ready_irq(%struct.e100_serial* %68)
  %70 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %71 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %67, %53
  %73 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %74 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %177

80:                                               ; preds = %72
  %81 = load i64, i64* %3, align 8
  %82 = call i32 @local_irq_save(i64 %81)
  %83 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %84 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %90 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = ptrtoint i32* %92 to i64
  %94 = call i32 @free_page(i64 %93)
  %95 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %96 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %88, %80
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %128, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SERIAL_RECV_DESCRIPTORS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %131

103:                                              ; preds = %99
  %104 = load %struct.etrax_dma_descr*, %struct.etrax_dma_descr** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.etrax_dma_descr, %struct.etrax_dma_descr* %104, i64 %106
  %108 = getelementptr inbounds %struct.etrax_dma_descr, %struct.etrax_dma_descr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %103
  %112 = load %struct.etrax_dma_descr*, %struct.etrax_dma_descr** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.etrax_dma_descr, %struct.etrax_dma_descr* %112, i64 %114
  %116 = getelementptr inbounds %struct.etrax_dma_descr, %struct.etrax_dma_descr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call %struct.etrax_recv_buffer* @phys_to_virt(i64 %117)
  %119 = getelementptr inbounds %struct.etrax_recv_buffer, %struct.etrax_recv_buffer* %118, i64 -4
  store %struct.etrax_recv_buffer* %119, %struct.etrax_recv_buffer** %5, align 8
  %120 = load %struct.etrax_recv_buffer*, %struct.etrax_recv_buffer** %5, align 8
  %121 = call i32 @kfree(%struct.etrax_recv_buffer* %120)
  %122 = load %struct.etrax_dma_descr*, %struct.etrax_dma_descr** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.etrax_dma_descr, %struct.etrax_dma_descr* %122, i64 %124
  %126 = getelementptr inbounds %struct.etrax_dma_descr, %struct.etrax_dma_descr* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %111, %103
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %99

131:                                              ; preds = %99
  %132 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %133 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = icmp ne %struct.TYPE_7__* %135, null
  br i1 %136, label %137, label %149

137:                                              ; preds = %131
  %138 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %139 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @HUPCL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %137, %131
  %150 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %151 = call i32 @e100_dtr(%struct.e100_serial* %150, i32 0)
  %152 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %153 = call i32 @e100_rts(%struct.e100_serial* %152, i32 0)
  br label %154

154:                                              ; preds = %149, %137
  %155 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %156 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = icmp ne %struct.TYPE_7__* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %154
  %161 = load i32, i32* @TTY_IO_ERROR, align 4
  %162 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %163 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = call i32 @set_bit(i32 %161, i32* %166)
  br label %168

168:                                              ; preds = %160, %154
  %169 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.e100_serial*, %struct.e100_serial** %2, align 8
  %172 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i64, i64* %3, align 8
  %176 = call i32 @local_irq_restore(i64 %175)
  br label %177

177:                                              ; preds = %168, %79
  ret void
}

declare dso_local i32 @DFLOW(i32) #1

declare dso_local i32 @DEBUG_LOG(i32, i8*, i32) #1

declare dso_local i32 @e100_disable_rx(%struct.e100_serial*) #1

declare dso_local i32 @e100_disable_rxdma_irq(%struct.e100_serial*) #1

declare dso_local i8* @IO_STATE(i32, i32, i32) #1

declare dso_local i32 @e100_disable_serial_data_irq(%struct.e100_serial*) #1

declare dso_local i32 @e100_disable_txdma_irq(%struct.e100_serial*) #1

declare dso_local i32 @e100_disable_serial_tx_ready_irq(%struct.e100_serial*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local %struct.etrax_recv_buffer* @phys_to_virt(i64) #1

declare dso_local i32 @kfree(%struct.etrax_recv_buffer*) #1

declare dso_local i32 @e100_dtr(%struct.e100_serial*, i32) #1

declare dso_local i32 @e100_rts(%struct.e100_serial*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
