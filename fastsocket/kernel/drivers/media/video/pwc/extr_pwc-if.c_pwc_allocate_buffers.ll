; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_allocate_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_allocate_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, %struct.TYPE_6__*, i8*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [38 x i8] c">> pwc_allocate_buffers(pdev = 0x%p)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@ISO_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate iso buffer %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Allocated iso buffer at %p.\0A\00", align 1
@default_fbufs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to allocate frame buffer structure.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Allocated frame buffer structure at %p.\0A\00", align 1
@PWC_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to allocate frame buffer %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Allocated frame buffer %d at %p.\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed to allocate decompress table.\0A\00", align 1
@pwc_mbufs = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"Failed to allocate image buffer(s). needed (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Allocated image buffer at %p.\0A\00", align 1
@MAX_IMAGES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"<< pwc_allocate_buffers()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*)* @pwc_allocate_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_allocate_buffers(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  %7 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %8 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.pwc_device* %7)
  %9 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %10 = icmp eq %struct.pwc_device* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %210

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %53, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MAX_ISO_BUFS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %21 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %19
  %30 = load i32, i32* @ISO_BUFFER_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %210

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %46 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %45, i32 0, i32 5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32* %44, i32** %51, align 8
  br label %52

52:                                               ; preds = %40, %19
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %58 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %57, i32 0, i32 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = icmp eq %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load i32, i32* @default_fbufs, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kzalloc(i32 %65, i32 %66)
  store i8* %67, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %210

74:                                               ; preds = %61
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = load i8*, i8** %6, align 8
  %78 = bitcast i8* %77 to %struct.TYPE_5__*
  %79 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %80 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %79, i32 0, i32 4
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %80, align 8
  br label %81

81:                                               ; preds = %74, %56
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %120, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @default_fbufs, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %123

86:                                               ; preds = %82
  %87 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %88 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %87, i32 0, i32 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %119

96:                                               ; preds = %86
  %97 = load i32, i32* @PWC_FRAME_SIZE, align 4
  %98 = call i8* @vzalloc(i32 %97)
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %210

106:                                              ; preds = %96
  %107 = load i32, i32* %4, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %107, i8* %108)
  %110 = load i8*, i8** %6, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %113 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %112, i32 0, i32 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32* %111, i32** %118, align 8
  br label %119

119:                                              ; preds = %106, %86
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %82

123:                                              ; preds = %82
  %124 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %125 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @DEVICE_USE_CODEC1(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %131 = call i32 @pwc_dec1_alloc(%struct.pwc_device* %130)
  store i32 %131, i32* %5, align 4
  br label %135

132:                                              ; preds = %123
  %133 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %134 = call i32 @pwc_dec23_alloc(%struct.pwc_device* %133)
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %210

141:                                              ; preds = %135
  %142 = load i32, i32* @pwc_mbufs, align 4
  %143 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %144 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %142, %145
  %147 = call i8* @pwc_rvmalloc(i32 %146)
  store i8* %147, i8** %6, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %159

150:                                              ; preds = %141
  %151 = load i32, i32* @pwc_mbufs, align 4
  %152 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %153 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %151, %154
  %156 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %210

159:                                              ; preds = %141
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %160)
  %162 = load i8*, i8** %6, align 8
  %163 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %164 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %189, %159
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @pwc_mbufs, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %192

169:                                              ; preds = %165
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %172 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = mul nsw i32 %170, %173
  %175 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %176 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i32 %174, i32* %181, align 8
  %182 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %183 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %169
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %165

192:                                              ; preds = %165
  br label %193

193:                                              ; preds = %205, %192
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @MAX_IMAGES, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %208

197:                                              ; preds = %193
  %198 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %199 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  store i32 0, i32* %204, align 8
  br label %205

205:                                              ; preds = %197
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %4, align 4
  br label %193

208:                                              ; preds = %193
  store i8* null, i8** %6, align 8
  %209 = call i32 (i8*, ...) @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %208, %150, %138, %101, %70, %35, %11
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @PWC_DEBUG_MEMORY(i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @PWC_ERROR(i8*, ...) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i64 @DEVICE_USE_CODEC1(i32) #1

declare dso_local i32 @pwc_dec1_alloc(%struct.pwc_device*) #1

declare dso_local i32 @pwc_dec23_alloc(%struct.pwc_device*) #1

declare dso_local i8* @pwc_rvmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
