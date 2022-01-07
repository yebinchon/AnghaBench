; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_idmac_tx_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c_idmac_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.idmac_tx_desc = type { i32, i32* }
%struct.idmac_channel = type { i64, i32, %struct.TYPE_7__, i32, i32, i64*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { %struct.idmac_video_param }
%struct.idmac_video_param = type { i32, i32, i32, i32 }
%struct.idmac = type { i32 }
%struct.ipu = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Descriptor %p not prepared!\0A\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@IPU_CHANNEL_READY = common dso_local global i64 0, align 8
@IPU_ROTATE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Submitting sg %p\0A\00", align 1
@IPU_CHANNEL_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dma_async_tx_descriptor*)* @idmac_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @idmac_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.idmac_tx_desc*, align 8
  %5 = alloca %struct.idmac_channel*, align 8
  %6 = alloca %struct.idmac*, align 8
  %7 = alloca %struct.ipu*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.idmac_video_param*, align 8
  %13 = alloca i32, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %3, align 8
  %14 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %15 = call %struct.idmac_tx_desc* @to_tx_desc(%struct.dma_async_tx_descriptor* %14)
  store %struct.idmac_tx_desc* %15, %struct.idmac_tx_desc** %4, align 8
  %16 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %17 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = call %struct.idmac_channel* @to_idmac_chan(%struct.TYPE_8__* %18)
  store %struct.idmac_channel* %19, %struct.idmac_channel** %5, align 8
  %20 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %21 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.idmac* @to_idmac(i32 %24)
  store %struct.idmac* %25, %struct.idmac** %6, align 8
  %26 = load %struct.idmac*, %struct.idmac** %6, align 8
  %27 = call %struct.ipu* @to_ipu(%struct.idmac* %26)
  store %struct.ipu* %27, %struct.ipu** %7, align 8
  %28 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %29 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.device* %32, %struct.device** %8, align 8
  %33 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %4, align 8
  %34 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %33, i32 0, i32 0
  %35 = call i32 @list_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %1
  %38 = load %struct.device*, %struct.device** %8, align 8
  %39 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.dma_async_tx_descriptor* %39)
  %41 = load i64, i64* @EBUSY, align 8
  %42 = sub nsw i64 0, %41
  store i64 %42, i64* %2, align 8
  br label %205

43:                                               ; preds = %1
  %44 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %45 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %48 = call i32 @async_tx_clear_ack(%struct.dma_async_tx_descriptor* %47)
  %49 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %50 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPU_CHANNEL_READY, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %114

54:                                               ; preds = %43
  %55 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %56 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store %struct.idmac_video_param* %57, %struct.idmac_video_param** %12, align 8
  %58 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %4, align 8
  %59 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @sg_is_last(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %4, align 8
  %66 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = call i32 @sg_dma_address(i32* %68)
  br label %70

70:                                               ; preds = %64, %63
  %71 = phi i32 [ 0, %63 ], [ %69, %64 ]
  store i32 %71, i32* %13, align 4
  %72 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %73 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %72, i32 0, i32 5
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %70
  %79 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %80 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %79, i32 0, i32 5
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %78, %70
  %86 = phi i1 [ true, %70 ], [ %84, %78 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @WARN_ON(i32 %87)
  %89 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %90 = load %struct.idmac_video_param*, %struct.idmac_video_param** %12, align 8
  %91 = getelementptr inbounds %struct.idmac_video_param, %struct.idmac_video_param* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.idmac_video_param*, %struct.idmac_video_param** %12, align 8
  %94 = getelementptr inbounds %struct.idmac_video_param, %struct.idmac_video_param* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.idmac_video_param*, %struct.idmac_video_param** %12, align 8
  %97 = getelementptr inbounds %struct.idmac_video_param, %struct.idmac_video_param* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.idmac_video_param*, %struct.idmac_video_param** %12, align 8
  %100 = getelementptr inbounds %struct.idmac_video_param, %struct.idmac_video_param* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IPU_ROTATE_NONE, align 4
  %103 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %4, align 8
  %104 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = call i32 @sg_dma_address(i32* %106)
  %108 = load i32, i32* %13, align 4
  %109 = call i64 @ipu_init_channel_buffer(%struct.idmac_channel* %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 %102, i32 %107, i32 %108)
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %85
  br label %200

113:                                              ; preds = %85
  br label %114

114:                                              ; preds = %113, %43
  %115 = load %struct.device*, %struct.device** %8, align 8
  %116 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %4, align 8
  %117 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = call i32 @dev_dbg(%struct.device* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %119)
  %121 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %122 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %9, align 8
  %125 = load i64, i64* %9, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %9, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %114
  store i64 1, i64* %9, align 8
  br label %129

129:                                              ; preds = %128, %114
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %132 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i64 %130, i64* %133, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %136 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %138 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %137, i32 0, i32 3
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @spin_lock_irqsave(i32* %138, i64 %139)
  %141 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %4, align 8
  %142 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %141, i32 0, i32 0
  %143 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %144 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %143, i32 0, i32 4
  %145 = call i32 @list_add_tail(i32* %142, i32* %144)
  %146 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %147 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %4, align 8
  %148 = call i32 @ipu_submit_channel_buffers(%struct.idmac_channel* %146, %struct.idmac_tx_desc* %147)
  store i32 %148, i32* %11, align 4
  %149 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %150 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %149, i32 0, i32 3
  %151 = load i64, i64* %10, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  %153 = load i32, i32* %11, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %129
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %9, align 8
  br label %177

158:                                              ; preds = %129
  %159 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %160 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IPU_CHANNEL_ENABLED, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %158
  %165 = load %struct.idmac*, %struct.idmac** %6, align 8
  %166 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %167 = call i32 @ipu_enable_channel(%struct.idmac* %165, %struct.idmac_channel* %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %9, align 8
  br label %177

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %158
  %175 = load %struct.ipu*, %struct.ipu** %7, align 8
  %176 = call i32 @dump_idmac_reg(%struct.ipu* %175)
  br label %177

177:                                              ; preds = %174, %170, %155
  %178 = load i64, i64* %9, align 8
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %199

180:                                              ; preds = %177
  %181 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %182 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %181, i32 0, i32 3
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @spin_lock_irqsave(i32* %182, i64 %183)
  %185 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %4, align 8
  %186 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %185, i32 0, i32 0
  %187 = call i32 @list_del_init(i32* %186)
  %188 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %189 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %188, i32 0, i32 3
  %190 = load i64, i64* %10, align 8
  %191 = call i32 @spin_unlock_irqrestore(i32* %189, i64 %190)
  %192 = load i64, i64* %9, align 8
  %193 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %194 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %197 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  store i64 %195, i64* %198, align 8
  br label %199

199:                                              ; preds = %180, %177
  br label %200

200:                                              ; preds = %199, %112
  %201 = load %struct.idmac_channel*, %struct.idmac_channel** %5, align 8
  %202 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %201, i32 0, i32 1
  %203 = call i32 @mutex_unlock(i32* %202)
  %204 = load i64, i64* %9, align 8
  store i64 %204, i64* %2, align 8
  br label %205

205:                                              ; preds = %200, %37
  %206 = load i64, i64* %2, align 8
  ret i64 %206
}

declare dso_local %struct.idmac_tx_desc* @to_tx_desc(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.idmac_channel* @to_idmac_chan(%struct.TYPE_8__*) #1

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local %struct.ipu* @to_ipu(%struct.idmac*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @async_tx_clear_ack(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @sg_is_last(i32*) #1

declare dso_local i32 @sg_dma_address(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ipu_init_channel_buffer(%struct.idmac_channel*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ipu_submit_channel_buffers(%struct.idmac_channel*, %struct.idmac_tx_desc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipu_enable_channel(%struct.idmac*, %struct.idmac_channel*) #1

declare dso_local i32 @dump_idmac_reg(%struct.ipu*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
