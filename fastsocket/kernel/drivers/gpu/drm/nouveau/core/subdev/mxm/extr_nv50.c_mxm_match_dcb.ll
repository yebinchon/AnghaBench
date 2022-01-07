; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_nv50.c_mxm_match_dcb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_nv50.c_mxm_match_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_mxm = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.context = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@mxm_match_tmds_partner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_mxm*, i32*, i8*)* @mxm_match_dcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_match_dcb(%struct.nouveau_mxm* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_mxm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nouveau_bios*, align 8
  %9 = alloca %struct.context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_mxm* %0, %struct.nouveau_mxm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %5, align 8
  %13 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_mxm* %12)
  store %struct.nouveau_bios* %13, %struct.nouveau_bios** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.context*
  store %struct.context* %15, %struct.context** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.context*, %struct.context** %9, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 1
  %22 = call i32 @mxms_output_device(%struct.nouveau_mxm* %18, i32* %19, %struct.TYPE_2__* %21)
  %23 = load %struct.context*, %struct.context** %9, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 15
  %29 = load %struct.context*, %struct.context** %9, align 8
  %30 = getelementptr inbounds %struct.context, %struct.context* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %107

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 240
  %38 = icmp sge i32 %37, 32
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %41 = load %struct.context*, %struct.context** %9, align 8
  %42 = getelementptr inbounds %struct.context, %struct.context* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mxm_sor_map(%struct.nouveau_bios* %40, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.context*, %struct.context** %9, align 8
  %47 = getelementptr inbounds %struct.context, %struct.context* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 251658240
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 15
  %54 = shl i32 %53, 24
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %107

57:                                               ; preds = %39
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, 48
  %60 = ashr i32 %59, 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.context*, %struct.context** %9, align 8
  %63 = getelementptr inbounds %struct.context, %struct.context* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 48
  %68 = ashr i32 %67, 4
  %69 = and i32 %61, %68
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %107

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73, %35
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -241
  store i32 %78, i32* %76, align 4
  %79 = load %struct.context*, %struct.context** %9, align 8
  %80 = getelementptr inbounds %struct.context, %struct.context* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 6
  br i1 %83, label %84, label %101

84:                                               ; preds = %74
  %85 = load %struct.context*, %struct.context** %9, align 8
  %86 = getelementptr inbounds %struct.context, %struct.context* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 6
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %5, align 8
  %92 = load i32, i32* @mxm_match_tmds_partner, align 4
  %93 = load %struct.context*, %struct.context** %9, align 8
  %94 = call i64 @mxms_foreach(%struct.nouveau_mxm* %91, i32 1, i32 %92, %struct.context* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, 32
  store i32 %100, i32* %98, align 4
  br label %106

101:                                              ; preds = %90, %84, %74
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, 240
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %101, %96
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %72, %56, %34
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_mxm*) #1

declare dso_local i32 @mxms_output_device(%struct.nouveau_mxm*, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @mxm_sor_map(%struct.nouveau_bios*, i32) #1

declare dso_local i64 @mxms_foreach(%struct.nouveau_mxm*, i32, i32, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
