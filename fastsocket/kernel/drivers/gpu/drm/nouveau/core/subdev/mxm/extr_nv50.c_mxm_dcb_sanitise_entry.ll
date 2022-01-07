; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_nv50.c_mxm_dcb_sanitise_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_nv50.c_mxm_dcb_sanitise_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32* }
%struct.nouveau_mxm = type { i32 }
%struct.context = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@mxm_match_dcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"disable %d: 0x%08x 0x%08x\0A\00", align 1
@DCB_OUTPUT_DP = common dso_local global i32 0, align 4
@DCB_CONNECTOR_HDMI_1 = common dso_local global i32 0, align 4
@DCB_CONNECTOR_DVI_D = common dso_local global i32 0, align 4
@DCB_CONNECTOR_eDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*, i8*, i32, i32)* @mxm_dcb_sanitise_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_dcb_sanitise_entry(%struct.nouveau_bios* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_bios*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_mxm*, align 8
  %11 = alloca %struct.context, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %19 = call %struct.nouveau_mxm* @nouveau_mxm(%struct.nouveau_bios* %18)
  store %struct.nouveau_mxm* %19, %struct.nouveau_mxm** %10, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %21 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %22 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %20, align 8
  %27 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %28 = bitcast %struct.TYPE_2__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 16, i1 false)
  %29 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %10, align 8
  %30 = load i32, i32* @mxm_match_dcb, align 4
  %31 = call i64 @mxms_foreach(%struct.nouveau_mxm* %29, i32 1, i32 %30, %struct.context* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %4
  %34 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nv_debug(%struct.nouveau_mxm* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %43)
  %45 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, 15
  store i32 %49, i32* %47, align 4
  store i32 0, i32* %5, align 4
  br label %162

50:                                               ; preds = %4
  %51 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %52 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mxm_ddc_map(%struct.nouveau_bios* %51, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 15
  %61 = load i32, i32* @DCB_OUTPUT_DP, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %50
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, 15
  %66 = shl i32 %65, 4
  store i32 %66, i32* %13, align 4
  br label %70

67:                                               ; preds = %50
  %68 = load i32, i32* %13, align 4
  %69 = and i32 %68, 240
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 240
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -241
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %13, align 4
  %80 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %73, %70
  %86 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %90 [
    i32 0, label %89
    i32 1, label %89
  ]

89:                                               ; preds = %85, %85
  br label %108

90:                                               ; preds = %85
  %91 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %92 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @mxm_sor_map(%struct.nouveau_bios* %91, i32 %94)
  %96 = and i32 %95, 48
  store i32 %96, i32* %14, align 4
  %97 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, -49
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %14, align 4
  %103 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %90, %89
  %109 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %110 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %17, align 8
  %112 = load %struct.nouveau_bios*, %struct.nouveau_bios** %6, align 8
  %113 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 61440
  %118 = ashr i32 %117, 12
  %119 = call i32 @dcb_conn(%struct.nouveau_bios* %112, i32 %118, i32* %15, i32* %16)
  %120 = load i32*, i32** %17, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %17, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %12, align 4
  %126 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %152 [
    i32 1, label %129
    i32 2, label %135
    i32 3, label %137
    i32 14, label %139
    i32 7, label %145
  ]

129:                                              ; preds = %108
  %130 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, 4
  store i32 %134, i32* %132, align 4
  br label %153

135:                                              ; preds = %108
  %136 = load i32, i32* @DCB_CONNECTOR_HDMI_1, align 4
  store i32 %136, i32* %12, align 4
  br label %153

137:                                              ; preds = %108
  %138 = load i32, i32* @DCB_CONNECTOR_DVI_D, align 4
  store i32 %138, i32* %12, align 4
  br label %153

139:                                              ; preds = %108
  %140 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, 65536
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %108, %139
  %146 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, 4
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @DCB_CONNECTOR_eDP, align 4
  store i32 %151, i32* %12, align 4
  br label %153

152:                                              ; preds = %108
  br label %153

153:                                              ; preds = %152, %145, %137, %135, %129
  %154 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %10, align 8
  %155 = call i32 @mxms_version(%struct.nouveau_mxm* %154)
  %156 = icmp sge i32 %155, 768
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* %12, align 4
  %159 = load i32*, i32** %17, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %157, %153
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %33
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local %struct.nouveau_mxm* @nouveau_mxm(%struct.nouveau_bios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mxms_foreach(%struct.nouveau_mxm*, i32, i32, %struct.context*) #1

declare dso_local i32 @nv_debug(%struct.nouveau_mxm*, i8*, i32, i32, i32) #1

declare dso_local i32 @mxm_ddc_map(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @mxm_sor_map(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @dcb_conn(%struct.nouveau_bios*, i32, i32*, i32*) #1

declare dso_local i32 @mxms_version(%struct.nouveau_mxm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
