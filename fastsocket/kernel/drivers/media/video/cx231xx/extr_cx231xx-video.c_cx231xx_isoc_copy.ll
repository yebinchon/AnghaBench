; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_isoc_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_isoc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { i32 }
%struct.urb = type { i32, i32, i8*, %struct.TYPE_6__*, %struct.cx231xx_dmaqueue* }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.cx231xx_dmaqueue = type { i32, i32, i64 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"packet bigger than packet size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @cx231xx_isoc_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_isoc_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.cx231xx_buffer*, align 8
  %7 = alloca %struct.cx231xx_dmaqueue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 4
  %19 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %18, align 8
  store %struct.cx231xx_dmaqueue* %19, %struct.cx231xx_dmaqueue** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %21 = icmp ne %struct.cx231xx* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %243

23:                                               ; preds = %2
  %24 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DEV_DISCONNECTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %23
  store i32 0, i32* %3, align 4
  br label %243

38:                                               ; preds = %30
  %39 = load %struct.urb*, %struct.urb** %5, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @print_err_status(%struct.cx231xx* %44, i32 -1, i32 %47)
  %49 = load %struct.urb*, %struct.urb** %5, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %243

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %59 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %61, align 8
  store %struct.cx231xx_buffer* %62, %struct.cx231xx_buffer** %6, align 8
  %63 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %64 = icmp ne %struct.cx231xx_buffer* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %66, i32 0, i32 0
  %68 = call i8* @videobuf_to_vmalloc(i32* %67)
  store i8* %68, i8** %8, align 8
  br label %69

69:                                               ; preds = %65, %57
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %238, %69
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.urb*, %struct.urb** %5, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %241

76:                                               ; preds = %70
  %77 = load %struct.urb*, %struct.urb** %5, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %76
  %88 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @print_err_status(%struct.cx231xx* %88, i32 %89, i32 %90)
  %92 = load %struct.urb*, %struct.urb** %5, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 3
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @EPROTO, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %87
  br label %238

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.urb*, %struct.urb** %5, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %238

116:                                              ; preds = %105
  %117 = load %struct.urb*, %struct.urb** %5, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 3
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %126 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %124, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = call i32 @cx231xx_isocdbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %238

132:                                              ; preds = %116
  %133 = load %struct.urb*, %struct.urb** %5, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.urb*, %struct.urb** %5, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 3
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %135, i64 %144
  store i8* %145, i8** %11, align 8
  %146 = load %struct.urb*, %struct.urb** %5, align 8
  %147 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 3
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %155 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %156 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %132
  %160 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %161 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %14, align 4
  br label %169

163:                                              ; preds = %132
  %164 = load i8*, i8** %11, align 8
  %165 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %166 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @cx231xx_find_boundary_SAV_EAV(i8* %164, i32 %167, i32* %12)
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %163, %159
  %170 = load i32, i32* %14, align 4
  %171 = and i32 %170, 240
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %169
  %175 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %176 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i8*, i8** %11, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %12, align 4
  %184 = sub nsw i32 %182, %183
  %185 = call i32 @cx231xx_get_video_line(%struct.cx231xx* %175, %struct.cx231xx_dmaqueue* %176, i32 %177, i8* %181, i32 %184)
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %174, %169
  br label %189

189:                                              ; preds = %227, %188
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %228

193:                                              ; preds = %189
  store i32 0, i32* %16, align 4
  %194 = load i8*, i8** %11, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %12, align 4
  %200 = sub nsw i32 %198, %199
  %201 = call i32 @cx231xx_find_next_SAV_EAV(i8* %197, i32 %200, i32* %16)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %14, align 4
  %206 = and i32 %205, 240
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %193
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %209
  %214 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %215 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %216 = load i32, i32* %14, align 4
  %217 = load i8*, i8** %11, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %12, align 4
  %223 = sub nsw i32 %221, %222
  %224 = call i32 @cx231xx_get_video_line(%struct.cx231xx* %214, %struct.cx231xx_dmaqueue* %215, i32 %216, i8* %220, i32 %223)
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %12, align 4
  br label %227

227:                                              ; preds = %213, %209, %193
  br label %189

228:                                              ; preds = %189
  %229 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %230 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i8*, i8** %11, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = getelementptr inbounds i8, i8* %235, i64 -4
  %237 = call i32 @memcpy(i32 %231, i8* %236, i32 4)
  store i32 0, i32* %12, align 4
  br label %238

238:                                              ; preds = %228, %130, %115, %103
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %70

241:                                              ; preds = %70
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %3, align 4
  br label %243

243:                                              ; preds = %241, %55, %37, %22
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local i32 @print_err_status(%struct.cx231xx*, i32, i32) #1

declare dso_local i8* @videobuf_to_vmalloc(i32*) #1

declare dso_local i32 @cx231xx_isocdbg(i8*) #1

declare dso_local i32 @cx231xx_find_boundary_SAV_EAV(i8*, i32, i32*) #1

declare dso_local i32 @cx231xx_get_video_line(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32, i8*, i32) #1

declare dso_local i32 @cx231xx_find_next_SAV_EAV(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
