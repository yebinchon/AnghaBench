; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx88_set_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_cx88_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_ctrl = type { i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }
%struct.cx88_core = type { i32 }
%struct.v4l2_control = type { i32, i64 }

@CX8800_CTLS = common dso_local global i32 0, align 4
@cx8800_ctls = common dso_local global %struct.cx88_ctrl* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"set_control id=0x%X(%s) ctrl=0x%02x, reg=0x%02x val=0x%02x (mask 0x%02x)%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" [shadowed]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_set_control(%struct.cx88_core* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.cx88_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  store %struct.cx88_ctrl* null, %struct.cx88_ctrl** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %32, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @CX8800_CTLS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** @cx8800_ctls, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %15, i64 %17
  %19 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** @cx8800_ctls, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %27, i64 %29
  store %struct.cx88_ctrl* %30, %struct.cx88_ctrl** %6, align 8
  br label %31

31:                                               ; preds = %26, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %37 = icmp eq %struct.cx88_ctrl* null, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %246

44:                                               ; preds = %35
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %49 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %55 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %53, %44
  %61 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %65 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %63, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %60
  %70 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %71 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %69, %60
  %77 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %78 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %8, align 4
  %80 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %180 [
    i32 131, label %83
    i32 130, label %101
    i32 128, label %108
    i32 129, label %147
  ]

83:                                               ; preds = %76
  %84 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %86, 64
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 127, %91
  br label %98

93:                                               ; preds = %83
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, 64
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i64 [ %92, %88 ], [ %97, %93 ]
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %7, align 4
  br label %200

101:                                              ; preds = %76
  %102 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = and i64 %104, 63
  %106 = sub nsw i64 63, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %7, align 4
  br label %200

108:                                              ; preds = %76
  %109 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %113 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %111, %115
  %117 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %118 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = zext i32 %119 to i64
  %121 = shl i64 %116, %120
  %122 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %123 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = and i64 %121, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  %128 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %129 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @V4L2_STD_SECAM, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %108
  %135 = load i32, i32* %7, align 4
  %136 = shl i32 %135, 8
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %7, align 4
  br label %146

139:                                              ; preds = %108
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 %140, 90
  %142 = sdiv i32 %141, 127
  %143 = shl i32 %142, 8
  %144 = load i32, i32* %7, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %139, %134
  store i32 65535, i32* %8, align 4
  br label %200

147:                                              ; preds = %76
  %148 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %149 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %152 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = sub nsw i64 %150, %154
  %156 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %157 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = zext i32 %158 to i64
  %160 = shl i64 %155, %159
  %161 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %162 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = and i64 %160, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %7, align 4
  %167 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %168 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @V4L2_STD_SECAM, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %147
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %246

179:                                              ; preds = %173, %147
  br label %200

180:                                              ; preds = %76
  %181 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %182 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %185 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = sub nsw i64 %183, %187
  %189 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %190 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = zext i32 %191 to i64
  %193 = shl i64 %188, %192
  %194 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %195 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = and i64 %193, %197
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %7, align 4
  br label %200

200:                                              ; preds = %180, %179, %146, %101, %98
  %201 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %202 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %205 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %209 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %213 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %218 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %223 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %203, i32 %207, i32 %211, i32 %214, i32 %215, i32 %216, i8* %222)
  %224 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %225 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %200
  %229 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %230 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %233 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @cx_sandor(i64 %231, i32 %234, i32 %235, i32 %236)
  br label %245

238:                                              ; preds = %200
  %239 = load %struct.cx88_ctrl*, %struct.cx88_ctrl** %6, align 8
  %240 = getelementptr inbounds %struct.cx88_ctrl, %struct.cx88_ctrl* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @cx_andor(i32 %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %238, %228
  store i32 0, i32* %3, align 4
  br label %246

246:                                              ; preds = %245, %176, %41
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @cx_sandor(i64, i32, i32, i32) #1

declare dso_local i32 @cx_andor(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
