; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_r600_blit_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_blit.c_r600_blit_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i64 }

@COLOR_8_8_8_8 = common dso_local global i32 0, align 4
@FMT_8_8_8_8 = common dso_local global i32 0, align 4
@COLOR_5_6_5 = common dso_local global i32 0, align 4
@FMT_5_6_5 = common dso_local global i32 0, align 4
@COLOR_8 = common dso_local global i32 0, align 4
@FMT_8 = common dso_local global i32 0, align 4
@R600_TC_ACTION_ENA = common dso_local global i32 0, align 4
@R600_CB_ACTION_ENA = common dso_local global i32 0, align 4
@R600_CB0_DEST_BASE_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_blit_swap(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %25, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 48
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %42, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %12
  %50 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %51 = call i32 @r600_nomm_put_vb(%struct.drm_device* %50)
  %52 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %53 = call i32 @r600_nomm_get_vb(%struct.drm_device* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %203

59:                                               ; preds = %49
  %60 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %61 = call i32 @set_shaders(%struct.drm_device* %60)
  br label %62

62:                                               ; preds = %59, %12
  %63 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %64 = call i32* @r600_nomm_get_vb_ptr(%struct.drm_device* %63)
  store i32* %64, i32** %33, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %28, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %29, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %30, align 4
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %21, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %31, align 4
  %77 = load i32, i32* %18, align 4
  %78 = call i32 @int2float(i32 %77)
  %79 = load i32*, i32** %33, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @int2float(i32 %81)
  %83 = load i32*, i32** %33, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @int2float(i32 %85)
  %87 = load i32*, i32** %33, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @int2float(i32 %89)
  %91 = load i32*, i32** %33, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @int2float(i32 %93)
  %95 = load i32*, i32** %33, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %31, align 4
  %98 = call i32 @int2float(i32 %97)
  %99 = load i32*, i32** %33, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @int2float(i32 %101)
  %103 = load i32*, i32** %33, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 6
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %29, align 4
  %106 = call i32 @int2float(i32 %105)
  %107 = load i32*, i32** %33, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 7
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %30, align 4
  %110 = call i32 @int2float(i32 %109)
  %111 = load i32*, i32** %33, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %31, align 4
  %114 = call i32 @int2float(i32 %113)
  %115 = load i32*, i32** %33, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 9
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %28, align 4
  %118 = call i32 @int2float(i32 %117)
  %119 = load i32*, i32** %33, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 10
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %29, align 4
  %122 = call i32 @int2float(i32 %121)
  %123 = load i32*, i32** %33, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 11
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %24, align 4
  switch i32 %125, label %132 [
    i32 4, label %126
    i32 2, label %129
  ]

126:                                              ; preds = %62
  %127 = load i32, i32* @COLOR_8_8_8_8, align 4
  store i32 %127, i32* %26, align 4
  %128 = load i32, i32* @FMT_8_8_8_8, align 4
  store i32 %128, i32* %27, align 4
  br label %135

129:                                              ; preds = %62
  %130 = load i32, i32* @COLOR_5_6_5, align 4
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* @FMT_5_6_5, align 4
  store i32 %131, i32* %27, align 4
  br label %135

132:                                              ; preds = %62
  %133 = load i32, i32* @COLOR_8, align 4
  store i32 %133, i32* %26, align 4
  %134 = load i32, i32* @FMT_8, align 4
  store i32 %134, i32* %27, align 4
  br label %135

135:                                              ; preds = %132, %129, %126
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %24, align 4
  %140 = sdiv i32 %138, %139
  %141 = load i32, i32* %29, align 4
  %142 = load i32, i32* %22, align 4
  %143 = load i32, i32* %24, align 4
  %144 = sdiv i32 %142, %143
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @set_tex_resource(%struct.TYPE_10__* %136, i32 %137, i32 %140, i32 %141, i32 %144, i32 %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %148 = load i32, i32* @R600_TC_ACTION_ENA, align 4
  %149 = load i32, i32* %22, align 4
  %150 = load i32, i32* %29, align 4
  %151 = mul nsw i32 %149, %150
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @cp_set_surface_sync(%struct.TYPE_10__* %147, i32 %148, i32 %151, i32 %152)
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %155 = load i32, i32* %26, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* %24, align 4
  %158 = sdiv i32 %156, %157
  %159 = load i32, i32* %31, align 4
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @set_render_target(%struct.TYPE_10__* %154, i32 %155, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %30, align 4
  %166 = load i32, i32* %31, align 4
  %167 = call i32 @set_scissors(%struct.TYPE_10__* %162, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %170, %175
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %176, %181
  store i64 %182, i64* %32, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %184 = load i64, i64* %32, align 8
  %185 = call i32 @set_vtx_resource(%struct.TYPE_10__* %183, i64 %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %187 = call i32 @draw_auto(%struct.TYPE_10__* %186)
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %189 = load i32, i32* @R600_CB_ACTION_ENA, align 4
  %190 = load i32, i32* @R600_CB0_DEST_BASE_ENA, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* %31, align 4
  %194 = mul nsw i32 %192, %193
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @cp_set_surface_sync(%struct.TYPE_10__* %188, i32 %191, i32 %194, i32 %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 48
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %135, %58
  ret void
}

declare dso_local i32 @r600_nomm_put_vb(%struct.drm_device*) #1

declare dso_local i32 @r600_nomm_get_vb(%struct.drm_device*) #1

declare dso_local i32 @set_shaders(%struct.drm_device*) #1

declare dso_local i32* @r600_nomm_get_vb_ptr(%struct.drm_device*) #1

declare dso_local i32 @int2float(i32) #1

declare dso_local i32 @set_tex_resource(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cp_set_surface_sync(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @set_render_target(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @set_scissors(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @set_vtx_resource(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @draw_auto(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
