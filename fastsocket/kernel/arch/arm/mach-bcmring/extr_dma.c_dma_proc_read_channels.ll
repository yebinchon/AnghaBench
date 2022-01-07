; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_dma.c_dma_proc_read_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/extr_dma.c_dma_proc_read_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i8*, i32, i64 }
%struct.TYPE_8__ = type { i8* }

@gDMA = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@DMA_NUM_CONTROLLERS = common dso_local global i32 0, align 4
@DMA_NUM_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d:%d \00", align 1
@DMA_CHANNEL_FLAG_IS_DEDICATED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Dedicated for %s \00", align 1
@DMA_gDeviceAttribute = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Shared \00", align 1
@DMA_CHANNEL_FLAG_NO_ISR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"No ISR \00", align 1
@DMA_CHANNEL_FLAG_LARGE_FIFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Fifo: 128 \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Fifo: 64  \00", align 1
@DMA_CHANNEL_FLAG_IN_USE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"InUse by %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Avail \00", align 1
@DMA_DEVICE_NONE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"Last use: %s \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @dma_proc_read_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_proc_read_channels(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sub nsw i32 %19, 200
  store i32 %20, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = call i64 @down_interruptible(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gDMA, i32 0, i32 0))
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @ERESTARTSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %217

26:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %210, %26
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @DMA_NUM_CONTROLLERS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %213

31:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %206, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @DMA_NUM_CHANNELS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %209

36:                                               ; preds = %32
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %209

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gDMA, i32 0, i32 1), align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %18, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i64 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DMA_CHANNEL_FLAG_IS_DEDICATED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %41
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DMA_gDeviceAttribute, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 (i8*, i8*, ...) @sprintf(i8* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %17, align 4
  br label %95

85:                                               ; preds = %41
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = call i64 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %85, %68
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DMA_CHANNEL_FLAG_NO_ISR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = call i64 (i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %102, %95
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DMA_CHANNEL_FLAG_LARGE_FIFO, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = call i64 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %17, align 4
  br label %139

129:                                              ; preds = %112
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = call i64 (i8*, i8*, ...) @sprintf(i8* %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %129, %119
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @DMA_CHANNEL_FLAG_IN_USE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %139
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DMA_gDeviceAttribute, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 (i8*, i8*, ...) @sprintf(i8* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %157)
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %17, align 4
  br label %173

163:                                              ; preds = %139
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = call i64 (i8*, i8*, ...) @sprintf(i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %17, align 4
  br label %173

173:                                              ; preds = %163, %146
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DMA_DEVICE_NONE, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %173
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DMA_gDeviceAttribute, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 (i8*, i8*, ...) @sprintf(i8* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %190)
  %192 = load i32, i32* %17, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %179, %173
  %197 = load i8*, i8** %8, align 8
  %198 = load i32, i32* %17, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = call i64 (i8*, i8*, ...) @sprintf(i8* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %202 = load i32, i32* %17, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %17, align 4
  br label %206

206:                                              ; preds = %196
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  br label %32

209:                                              ; preds = %40, %32
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  br label %27

213:                                              ; preds = %27
  %214 = call i32 @up(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gDMA, i32 0, i32 0))
  %215 = load i32*, i32** %12, align 8
  store i32 1, i32* %215, align 4
  %216 = load i32, i32* %17, align 4
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %213, %23
  %218 = load i32, i32* %7, align 4
  ret i32 %218
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
