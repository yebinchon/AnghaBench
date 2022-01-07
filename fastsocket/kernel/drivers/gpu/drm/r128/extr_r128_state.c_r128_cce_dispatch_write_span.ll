; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_write_span.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_write_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R128_CNTL_PAINT_MULTI = common dso_local global i32 0, align 4
@R128_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_BRUSH_SOLID_COLOR = common dso_local global i32 0, align 4
@R128_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@R128_ROP3_P = common dso_local global i32 0, align 4
@R128_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@R128_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_5__*)* @r128_cce_dispatch_write_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_dispatch_write_span(%struct.drm_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = load i32, i32* @RING_LOCALS, align 4
  %19 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 4096
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %2
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %227

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @DRM_COPY_FROM_USER(i32* %8, i64 %34, i32 4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %227

40:                                               ; preds = %31
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @DRM_COPY_FROM_USER(i32* %9, i64 %43, i32 4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %227

49:                                               ; preds = %40
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32* @kmalloc(i32 %56, i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %227

64:                                               ; preds = %49
  %65 = load i32*, i32** %10, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @DRM_COPY_FROM_USER(i32* %65, i64 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load i32, i32* @EFAULT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %227

77:                                               ; preds = %64
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %14, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %174

88:                                               ; preds = %77
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32* @kmalloc(i32 %89, i32 %90)
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %227

99:                                               ; preds = %88
  %100 = load i32*, i32** %11, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i64 @DRM_COPY_FROM_USER(i32* %100, i64 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @kfree(i32* %108)
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @kfree(i32* %110)
  %112 = load i32, i32* @EFAULT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %227

114:                                              ; preds = %99
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %166, %114
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %171

119:                                              ; preds = %115
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %165

126:                                              ; preds = %119
  %127 = call i32 @BEGIN_RING(i32 6)
  %128 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %129 = call i32 @CCE_PACKET3(i32 %128, i32 4)
  %130 = call i32 @OUT_RING(i32 %129)
  %131 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %132 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 8
  %138 = or i32 %133, %137
  %139 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @R128_ROP3_P, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @OUT_RING(i32 %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @OUT_RING(i32 %150)
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @OUT_RING(i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = shl i32 %158, 16
  %160 = load i32, i32* %9, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @OUT_RING(i32 %161)
  %163 = call i32 @OUT_RING(i32 65537)
  %164 = call i32 (...) @ADVANCE_RING()
  br label %165

165:                                              ; preds = %126, %119
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %115

171:                                              ; preds = %115
  %172 = load i32*, i32** %11, align 8
  %173 = call i32 @kfree(i32* %172)
  br label %224

174:                                              ; preds = %77
  store i32 0, i32* %12, align 4
  br label %175

175:                                              ; preds = %218, %174
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %223

179:                                              ; preds = %175
  %180 = call i32 @BEGIN_RING(i32 6)
  %181 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %182 = call i32 @CCE_PACKET3(i32 %181, i32 4)
  %183 = call i32 @OUT_RING(i32 %182)
  %184 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %185 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 8
  %191 = or i32 %186, %190
  %192 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @R128_ROP3_P, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @OUT_RING(i32 %199)
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @OUT_RING(i32 %203)
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @OUT_RING(i32 %209)
  %211 = load i32, i32* %8, align 4
  %212 = shl i32 %211, 16
  %213 = load i32, i32* %9, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @OUT_RING(i32 %214)
  %216 = call i32 @OUT_RING(i32 65537)
  %217 = call i32 (...) @ADVANCE_RING()
  br label %218

218:                                              ; preds = %179
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %175

223:                                              ; preds = %175
  br label %224

224:                                              ; preds = %223, %171
  %225 = load i32*, i32** %10, align 8
  %226 = call i32 @kfree(i32* %225)
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %224, %107, %94, %72, %61, %46, %37, %28
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @DRM_COPY_FROM_USER(i32*, i64, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
