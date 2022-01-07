; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_vertex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }
%struct.drm_buf = type { i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"buf=%d nbox=%d\0A\00", align 1
@R128_UPLOAD_CLIPRECTS = common dso_local global i32 0, align 4
@R128_3D_RNDR_GEN_INDX_PRIM = common dso_local global i32 0, align 4
@R128_CCE_VC_CNTL_PRIM_WALK_LIST = common dso_local global i32 0, align 4
@R128_CCE_VC_CNTL_NUM_SHIFT = common dso_local global i32 0, align 4
@R128_LAST_DISPATCH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_buf*)* @r128_cce_dispatch_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r128_cce_dispatch_vertex(%struct.drm_device* %0, %struct.drm_buf* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_buf*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %17 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %16, i32 0, i32 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %26 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %29 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %34 = load i32, i32* @RING_LOCALS, align 4
  %35 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %36 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %43 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %109

46:                                               ; preds = %2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @R128_UPLOAD_CLIPRECTS, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = call i32 @r128_emit_state(%struct.TYPE_7__* %57)
  br label %59

59:                                               ; preds = %56, %46
  br label %60

60:                                               ; preds = %102, %59
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i32 @r128_emit_clip_rects(%struct.TYPE_7__* %67, i32* %73, i32 %78)
  br label %80

80:                                               ; preds = %66, %60
  %81 = call i32 @BEGIN_RING(i32 5)
  %82 = load i32, i32* @R128_3D_RNDR_GEN_INDX_PRIM, align 4
  %83 = call i32 @CCE_PACKET3(i32 %82, i32 3)
  %84 = call i32 @OUT_RING(i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @OUT_RING(i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @OUT_RING(i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @OUT_RING(i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @R128_CCE_VC_CNTL_PRIM_WALK_LIST, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @R128_CCE_VC_CNTL_NUM_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %93, %96
  %98 = call i32 @OUT_RING(i32 %97)
  %99 = call i32 (...) @ADVANCE_RING()
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 3
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %80
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %60, label %108

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %109
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = call i32 @BEGIN_RING(i32 2)
  %123 = load i32, i32* @R128_LAST_DISPATCH_REG, align 4
  %124 = call i32 @CCE_PACKET0(i32 %123, i32 0)
  %125 = call i32 @OUT_RING(i32 %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @OUT_RING(i32 %128)
  %130 = call i32 (...) @ADVANCE_RING()
  %131 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %132 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %131, i32 0, i32 2
  store i32 1, i32* %132, align 8
  %133 = load %struct.drm_buf*, %struct.drm_buf** %4, align 8
  %134 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %114, %109
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* @R128_UPLOAD_CLIPRECTS, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @r128_emit_state(%struct.TYPE_7__*) #1

declare dso_local i32 @r128_emit_clip_rects(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @CCE_PACKET0(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
