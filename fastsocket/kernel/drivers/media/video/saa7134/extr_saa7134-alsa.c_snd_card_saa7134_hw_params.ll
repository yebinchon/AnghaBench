; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i32* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.TYPE_12__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_10__, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32*, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_card_saa7134_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_saa7134_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.saa7134_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.TYPE_12__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %14 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %16 = call i32 @params_periods(%struct.snd_pcm_hw_params* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %17, 256
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp ugt i32 %20, 65536
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %211

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %211

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul i32 %32, %33
  %35 = icmp ugt i32 %34, 1048576
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %211

39:                                               ; preds = %31
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %41, align 8
  store %struct.saa7134_dev* %42, %struct.saa7134_dev** %7, align 8
  %43 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %44 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %51 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %211

57:                                               ; preds = %49, %39
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %86

64:                                               ; preds = %57
  %65 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %66 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %69 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = call i32 @saa7134_pgtable_free(%struct.TYPE_14__* %67, i32* %70)
  %72 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %73 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %77 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = call i32 @videobuf_dma_unmap(i32* %75, %struct.TYPE_13__* %78)
  %80 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %81 = call i32 @dsp_buffer_free(%struct.saa7134_dev* %80)
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %64, %57
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %89 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %93 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = mul i32 %95, %96
  %98 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %99 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i32 %97, i32* %100, align 8
  %101 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %102 = call i32 @dsp_buffer_init(%struct.saa7134_dev* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 0, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %86
  %106 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %107 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %110 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %113 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  store i32 0, i32* %114, align 8
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %211

116:                                              ; preds = %86
  %117 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %118 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %117, i32 0, i32 1
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %122 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = call i32 @videobuf_dma_map(i32* %120, %struct.TYPE_13__* %123)
  store i32 %124, i32* %10, align 4
  %125 = icmp ne i32 0, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %116
  %127 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %128 = call i32 @dsp_buffer_free(%struct.saa7134_dev* %127)
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  br label %211

130:                                              ; preds = %116
  %131 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %132 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %131, i32 0, i32 1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %135 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = call i32 @saa7134_pgtable_alloc(%struct.TYPE_14__* %133, i32* %136)
  store i32 %137, i32* %10, align 4
  %138 = icmp ne i32 0, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %130
  %140 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %141 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %140, i32 0, i32 1
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %145 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = call i32 @videobuf_dma_unmap(i32* %143, %struct.TYPE_13__* %146)
  %148 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %149 = call i32 @dsp_buffer_free(%struct.saa7134_dev* %148)
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %211

151:                                              ; preds = %130
  %152 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %153 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %156 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 4
  %158 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %159 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %164 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @saa7134_pgtable_build(%struct.TYPE_14__* %154, i32* %157, i32 %162, i32 %167, i32 0)
  store i32 %168, i32* %10, align 4
  %169 = icmp ne i32 0, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %151
  %171 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %172 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %171, i32 0, i32 1
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %175 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 4
  %177 = call i32 @saa7134_pgtable_free(%struct.TYPE_14__* %173, i32* %176)
  %178 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %179 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %178, i32 0, i32 1
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %183 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 3
  %185 = call i32 @videobuf_dma_unmap(i32* %181, %struct.TYPE_13__* %184)
  %186 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %187 = call i32 @dsp_buffer_free(%struct.saa7134_dev* %186)
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %3, align 4
  br label %211

189:                                              ; preds = %151
  %190 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %191 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %196 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %195, i32 0, i32 0
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 2
  store i32* %194, i32** %198, align 8
  %199 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %200 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %204 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %203, i32 0, i32 0
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  store i32 %202, i32* %206, align 8
  %207 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %208 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %207, i32 0, i32 0
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  store i64 0, i64* %210, align 8
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %189, %170, %139, %126, %105, %56, %36, %28, %22
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_12__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @saa7134_pgtable_free(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @videobuf_dma_unmap(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @dsp_buffer_free(%struct.saa7134_dev*) #1

declare dso_local i32 @dsp_buffer_init(%struct.saa7134_dev*) #1

declare dso_local i32 @videobuf_dma_map(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @saa7134_pgtable_alloc(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @saa7134_pgtable_build(%struct.TYPE_14__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
