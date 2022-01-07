; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_copy_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_au0828_copy_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i32, i32 }
%struct.au0828_dmaqueue = type { i64 }
%struct.au0828_buffer = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"Overflow of %zi bytes past buffer end (1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Overflow %zi bytes past buf end (2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au0828_dev*, %struct.au0828_dmaqueue*, %struct.au0828_buffer*, i8*, i8*, i64)* @au0828_copy_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au0828_copy_video(%struct.au0828_dev* %0, %struct.au0828_dmaqueue* %1, %struct.au0828_buffer* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.au0828_dev*, align 8
  %8 = alloca %struct.au0828_dmaqueue*, align 8
  %9 = alloca %struct.au0828_buffer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %7, align 8
  store %struct.au0828_dmaqueue* %1, %struct.au0828_dmaqueue** %8, align 8
  store %struct.au0828_buffer* %2, %struct.au0828_buffer** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %22 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %23 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 1
  store i32 %25, i32* %21, align 4
  %26 = load i64, i64* %12, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %249

29:                                               ; preds = %6
  %30 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %31 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %12, align 8
  %34 = add i64 %32, %33
  %35 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %36 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %34, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %42 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %46 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %40, %29
  %50 = load i8*, i8** %10, align 8
  store i8* %50, i8** %15, align 8
  %51 = load i64, i64* %12, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %20, align 4
  %53 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %54 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i8*, i8** %11, align 8
  store i8* %58, i8** %13, align 8
  br label %64

59:                                               ; preds = %49
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %21, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %13, align 8
  br label %64

64:                                               ; preds = %59, %57
  %65 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %66 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %21, align 4
  %69 = sext i32 %68 to i64
  %70 = udiv i64 %67, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %16, align 4
  %72 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %73 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %21, align 4
  %76 = sext i32 %75 to i64
  %77 = urem i64 %74, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %21, align 4
  %81 = mul nsw i32 %79, %80
  %82 = mul nsw i32 %81, 2
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %18, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr i8, i8* %85, i64 %87
  store i8* %88, i8** %14, align 8
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %17, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %64
  %96 = load i32, i32* %20, align 4
  br label %99

97:                                               ; preds = %64
  %98 = load i32, i32* %19, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  store i32 %100, i32* %19, align 4
  %101 = load i8*, i8** %14, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8*, i8** %11, align 8
  %106 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %107 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  %111 = icmp ugt i8* %104, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %99
  %113 = load i8*, i8** %14, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8*, i8** %11, align 8
  %118 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %119 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i8, i8* %117, i64 %121
  %123 = ptrtoint i8* %116 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %130 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  %134 = load i8*, i8** %14, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %20, align 4
  %139 = load i32, i32* %20, align 4
  store i32 %139, i32* %19, align 4
  br label %140

140:                                              ; preds = %112, %99
  %141 = load i32, i32* %19, align 4
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %249

144:                                              ; preds = %140
  %145 = load i8*, i8** %14, align 8
  %146 = load i8*, i8** %15, align 8
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @memcpy(i8* %145, i8* %146, i32 %147)
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %20, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %20, align 4
  br label %152

152:                                              ; preds = %216, %144
  %153 = load i32, i32* %20, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %224

155:                                              ; preds = %152
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %21, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i8*, i8** %14, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr i8, i8* %159, i64 %160
  store i8* %161, i8** %14, align 8
  %162 = load i32, i32* %19, align 4
  %163 = load i8*, i8** %15, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr i8, i8* %163, i64 %164
  store i8* %165, i8** %15, align 8
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %155
  %170 = load i32, i32* %20, align 4
  store i32 %170, i32* %19, align 4
  br label %173

171:                                              ; preds = %155
  %172 = load i32, i32* %21, align 4
  store i32 %172, i32* %19, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = load i8*, i8** %14, align 8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8*, i8** %11, align 8
  %179 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %180 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i8, i8* %178, i64 %182
  %184 = icmp ugt i8* %177, %183
  br i1 %184, label %185, label %212

185:                                              ; preds = %173
  %186 = load i8*, i8** %14, align 8
  %187 = load i32, i32* %19, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8*, i8** %11, align 8
  %191 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %192 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i8, i8* %190, i64 %194
  %196 = ptrtoint i8* %189 to i64
  %197 = ptrtoint i8* %195 to i64
  %198 = sub i64 %196, %197
  %199 = trunc i64 %198 to i32
  %200 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  %201 = load i8*, i8** %11, align 8
  %202 = load %struct.au0828_buffer*, %struct.au0828_buffer** %9, align 8
  %203 = getelementptr inbounds %struct.au0828_buffer, %struct.au0828_buffer* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i8, i8* %201, i64 %205
  %207 = load i8*, i8** %14, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %20, align 4
  store i32 %211, i32* %19, align 4
  br label %212

212:                                              ; preds = %185, %173
  %213 = load i32, i32* %19, align 4
  %214 = icmp sle i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %224

216:                                              ; preds = %212
  %217 = load i8*, i8** %14, align 8
  %218 = load i8*, i8** %15, align 8
  %219 = load i32, i32* %19, align 4
  %220 = call i32 @memcpy(i8* %217, i8* %218, i32 %219)
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* %20, align 4
  %223 = sub nsw i32 %222, %221
  store i32 %223, i32* %20, align 4
  br label %152

224:                                              ; preds = %215, %152
  %225 = load i32, i32* %18, align 4
  %226 = icmp sgt i32 %225, 1440
  br i1 %226, label %227, label %243

227:                                              ; preds = %224
  %228 = load i8*, i8** %11, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 0
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp slt i32 %231, 96
  br i1 %232, label %233, label %242

233:                                              ; preds = %227
  %234 = load i8*, i8** %11, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 1440
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp slt i32 %237, 96
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load %struct.au0828_dev*, %struct.au0828_dev** %7, align 8
  %241 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %240, i32 0, i32 1
  store i32 1, i32* %241, align 4
  br label %242

242:                                              ; preds = %239, %233, %227
  br label %243

243:                                              ; preds = %242, %224
  %244 = load i64, i64* %12, align 8
  %245 = load %struct.au0828_dmaqueue*, %struct.au0828_dmaqueue** %8, align 8
  %246 = getelementptr inbounds %struct.au0828_dmaqueue, %struct.au0828_dmaqueue* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %247, %244
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %243, %143, %28
  ret void
}

declare dso_local i32 @au0828_isocdbg(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
