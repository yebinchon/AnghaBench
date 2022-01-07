; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_newframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_newframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i64, i64, i64, i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FRAME_READY = common dso_local global i64 0, align 8
@FRAME_GRABBING = common dso_local global i64 0, align 8
@BUFFER_READY = common dso_local global i64 0, align 8
@SE401_MAX_NULLPACKETS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"too many null length packets, restarting capture\0A\00", align 1
@FRAME_ERROR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@BUFFER_BUSY = common dso_local global i64 0, align 8
@FMT_JANGGU = common dso_local global i64 0, align 8
@BUFFER_UNUSED = common dso_local global i64 0, align 8
@SE401_NUMSCRATCH = common dso_local global i64 0, align 8
@SE401_MAX_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"too many errors, restarting capture\0A\00", align 1
@FRAME_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_se401*, i32)* @se401_newframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se401_newframe(%struct.usb_se401* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_se401*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @wait, align 4
  %8 = load i32, i32* @current, align 4
  %9 = call i32 @DECLARE_WAITQUEUE(i32 %7, i32 %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %182, %2
  %11 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %12 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %11, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %17 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %16, i32 0, i32 5
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FRAME_READY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %15
  %27 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %28 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %27, i32 0, i32 5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FRAME_GRABBING, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %26, %15
  %38 = phi i1 [ true, %15 ], [ %36, %26 ]
  br label %39

39:                                               ; preds = %37, %10
  %40 = phi i1 [ false, %10 ], [ %38, %37 ]
  br i1 %40, label %41, label %183

41:                                               ; preds = %39
  %42 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %43 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %42, i32 0, i32 5
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %56 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %55, i32 0, i32 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %59 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BUFFER_READY, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %68 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %67, i32 0, i32 9
  %69 = call i32 @wait_interruptible(i32 %66, i32* %68, i32* @wait)
  %70 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %71 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SE401_MAX_NULLPACKETS, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %54
  %76 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %77 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %79 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %78, i32 0, i32 7
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @dev_info(i32* %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %84 = call i32 @se401_stop_stream(%struct.usb_se401* %83)
  %85 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %86 = call i32 @se401_start_stream(%struct.usb_se401* %85)
  br label %182

87:                                               ; preds = %54
  %88 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %89 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %88, i32 0, i32 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %92 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @BUFFER_READY, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %87
  %100 = load i64, i64* @FRAME_ERROR, align 8
  %101 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %102 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %101, i32 0, i32 5
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i64 %100, i64* %107, align 8
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %219

110:                                              ; preds = %87
  %111 = load i64, i64* @BUFFER_BUSY, align 8
  %112 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %113 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %112, i32 0, i32 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %116 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i64 %111, i64* %119, align 8
  %120 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %121 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @FMT_JANGGU, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %110
  %126 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %127 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %128 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %127, i32 0, i32 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %131 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %132
  %134 = call i32 @decode_JangGu(%struct.usb_se401* %126, %struct.TYPE_7__* %133)
  br label %145

135:                                              ; preds = %110
  %136 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %137 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %138 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %137, i32 0, i32 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %141 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %142
  %144 = call i32 @decode_bayer(%struct.usb_se401* %136, %struct.TYPE_7__* %143)
  br label %145

145:                                              ; preds = %135, %125
  %146 = load i64, i64* @BUFFER_UNUSED, align 8
  %147 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %148 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %147, i32 0, i32 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %151 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i64 %146, i64* %154, align 8
  %155 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %156 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %156, align 8
  %159 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %160 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SE401_NUMSCRATCH, align 8
  %163 = icmp uge i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %145
  %165 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %166 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %165, i32 0, i32 0
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %164, %145
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @SE401_MAX_ERRORS, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  store i32 0, i32* %6, align 4
  %172 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %173 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %172, i32 0, i32 7
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = call i32 @dev_info(i32* %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %177 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %178 = call i32 @se401_stop_stream(%struct.usb_se401* %177)
  %179 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %180 = call i32 @se401_start_stream(%struct.usb_se401* %179)
  br label %181

181:                                              ; preds = %171, %167
  br label %182

182:                                              ; preds = %181, %75
  br label %10

183:                                              ; preds = %39
  %184 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %185 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %184, i32 0, i32 5
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @FRAME_DONE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %218

194:                                              ; preds = %183
  %195 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %196 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %194
  %200 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %201 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %200, i32 0, i32 5
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %209 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %212 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %210, %213
  %215 = mul nsw i32 %214, 3
  %216 = call i32 @enhance_picture(i32 %207, i32 %215)
  br label %217

217:                                              ; preds = %199, %194
  br label %218

218:                                              ; preds = %217, %183
  store i32 0, i32* %3, align 4
  br label %219

219:                                              ; preds = %218, %99
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @wait_interruptible(i32, i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @se401_stop_stream(%struct.usb_se401*) #1

declare dso_local i32 @se401_start_stream(%struct.usb_se401*) #1

declare dso_local i32 @decode_JangGu(%struct.usb_se401*, %struct.TYPE_7__*) #1

declare dso_local i32 @decode_bayer(%struct.usb_se401*, %struct.TYPE_7__*) #1

declare dso_local i32 @enhance_picture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
