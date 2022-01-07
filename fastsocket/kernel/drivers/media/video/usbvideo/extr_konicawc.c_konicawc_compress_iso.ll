; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_compress_iso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_compress_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.urb = type { i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.konicawc = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Data error: packet=%d. len=%d. status=%d.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"button: %sclicked\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"unknown status %2.2x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"dropping frame looking for image start\00", align 1
@__const.konicawc_compress_iso.marker = private unnamed_addr constant [4 x i8] c"\00\FF\00\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"found initial image\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"finished: keep = %d discard = %d bad = %d added %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, %struct.urb*, %struct.urb*)* @konicawc_compress_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @konicawc_compress_iso(%struct.uvd* %0, %struct.urb* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.uvd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.konicawc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4 x i8], align 1
  store %struct.uvd* %0, %struct.uvd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.urb*, %struct.urb** %6, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.uvd*, %struct.uvd** %4, align 8
  %24 = getelementptr inbounds %struct.uvd, %struct.uvd* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.konicawc*
  store %struct.konicawc* %26, %struct.konicawc** %14, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %204, %3
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %207

33:                                               ; preds = %27
  %34 = load %struct.konicawc*, %struct.konicawc** %14, align 8
  %35 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %18, align 4
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.urb*, %struct.urb** %5, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %55, i64 %64
  store i8* %65, i8** %7, align 8
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %33
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load %struct.uvd*, %struct.uvd** %4, align 8
  %74 = getelementptr inbounds %struct.uvd, %struct.uvd* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %204

78:                                               ; preds = %33
  %79 = load i32, i32* %17, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.uvd*, %struct.uvd** %4, align 8
  %83 = getelementptr inbounds %struct.uvd, %struct.uvd* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %204

87:                                               ; preds = %78
  %88 = load i8*, i8** %10, align 8
  %89 = load %struct.urb*, %struct.urb** %6, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %88, i64 %97
  %99 = load i8, i8* %98, align 1
  store i8 %99, i8* %16, align 1
  %100 = load i8, i8* %16, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp slt i32 %101, 128
  br i1 %102, label %103, label %115

103:                                              ; preds = %87
  %104 = load i8, i8* %16, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 64
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %15, align 4
  %111 = load i8, i8* %16, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, -65
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %16, align 1
  br label %115

115:                                              ; preds = %103, %87
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.konicawc*, %struct.konicawc** %14, align 8
  %118 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %126 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.konicawc*, %struct.konicawc** %14, align 8
  %129 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.konicawc*, %struct.konicawc** %14, align 8
  %131 = call i32 @konicawc_report_buttonstat(%struct.konicawc* %130)
  br label %132

132:                                              ; preds = %121, %115
  %133 = load i8, i8* %16, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %204

139:                                              ; preds = %132
  %140 = load i8, i8* %16, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load i8, i8* %16, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp slt i32 %145, 128
  br i1 %146, label %147, label %156

147:                                              ; preds = %143
  %148 = load %struct.uvd*, %struct.uvd** %4, align 8
  %149 = getelementptr inbounds %struct.uvd, %struct.uvd* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i8, i8* %16, align 1
  %153 = call i32 @dev_info(i32* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %152)
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %204

156:                                              ; preds = %143, %139
  %157 = load i8, i8* %16, align 1
  %158 = icmp ne i8 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %156
  %160 = load %struct.konicawc*, %struct.konicawc** %14, align 8
  %161 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, -2
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %204

166:                                              ; preds = %159, %156
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  %169 = load i8, i8* %16, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 128
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %166
  %174 = bitcast [4 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %174, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.konicawc_compress_iso.marker, i32 0, i32 0), i64 4, i1 false)
  %175 = load %struct.konicawc*, %struct.konicawc** %14, align 8
  %176 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, -2
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %181 = load %struct.konicawc*, %struct.konicawc** %14, align 8
  %182 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %181, i32 0, i32 1
  store i32 -1, i32* %182, align 4
  br label %183

183:                                              ; preds = %179, %173
  %184 = load i8, i8* %16, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 127
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 3
  store i8 %187, i8* %188, align 1
  %189 = load %struct.uvd*, %struct.uvd** %4, align 8
  %190 = getelementptr inbounds %struct.uvd, %struct.uvd* %189, i32 0, i32 0
  %191 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %192 = call i32 (i32*, ...) @RingQueue_Enqueue(i32* %190, i8* %191, i32 4)
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 4
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %183, %166
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %9, align 4
  %199 = load %struct.uvd*, %struct.uvd** %4, align 8
  %200 = getelementptr inbounds %struct.uvd, %struct.uvd* %199, i32 0, i32 0
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %17, align 4
  %203 = call i32 (i32*, ...) @RingQueue_Enqueue(i32* %200, i8* %201, i32 %202)
  br label %204

204:                                              ; preds = %195, %164, %147, %136, %81, %68
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %27

207:                                              ; preds = %27
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %9, align 4
  %212 = call i32 (i32, i8*, ...) @DEBUG(i32 8, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %9, align 4
  ret i32 %213
}

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @konicawc_report_buttonstat(%struct.konicawc*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8 zeroext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RingQueue_Enqueue(i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
