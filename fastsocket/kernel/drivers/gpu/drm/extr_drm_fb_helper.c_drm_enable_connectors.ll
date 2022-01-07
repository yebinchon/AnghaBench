; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_enable_connectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_enable_connectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"connector %d enabled? %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_fb_helper*, i32*)* @drm_enable_connectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_enable_connectors(%struct.drm_fb_helper* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %11 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %8
  %15 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %16 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.drm_connector*, %struct.drm_connector** %22, align 8
  store %struct.drm_connector* %23, %struct.drm_connector** %6, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %25 = call i32 @drm_connector_enabled(%struct.drm_connector* %24, i32 1)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33, i8* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %14
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %8

53:                                               ; preds = %8
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %83

57:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %80, %57
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %61 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %66 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %67, i64 %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.drm_connector*, %struct.drm_connector** %72, align 8
  store %struct.drm_connector* %73, %struct.drm_connector** %6, align 8
  %74 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %75 = call i32 @drm_connector_enabled(%struct.drm_connector* %74, i32 0)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %58

83:                                               ; preds = %56, %58
  ret void
}

declare dso_local i32 @drm_connector_enabled(%struct.drm_connector*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
