; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.nouveau_connector = type { %struct.TYPE_7__*, %struct.nouveau_encoder* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.nouveau_encoder = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.TYPE_12__ = type { i32 (%struct.drm_encoder*, %struct.drm_display_mode*)* }

@MODE_PANEL = common dso_local global i32 0, align 4
@nouveau_duallink = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @nouveau_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.nouveau_connector*, align 8
  %7 = alloca %struct.nouveau_encoder*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %12)
  store %struct.nouveau_connector* %13, %struct.nouveau_connector** %6, align 8
  %14 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %15 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %14, i32 0, i32 1
  %16 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %15, align 8
  store %struct.nouveau_encoder* %16, %struct.nouveau_encoder** %7, align 8
  %17 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %18 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %17)
  store %struct.drm_encoder* %18, %struct.drm_encoder** %8, align 8
  store i32 25000, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %110 [
    i32 130, label %28
    i32 129, label %56
    i32 132, label %72
    i32 128, label %83
    i32 131, label %91
  ]

28:                                               ; preds = %2
  %29 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %30 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %38 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %33
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %48 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %46, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43, %33
  %54 = load i32, i32* @MODE_PANEL, align 4
  store i32 %54, i32* %3, align 4
  br label %127

55:                                               ; preds = %43, %28
  store i32 0, i32* %9, align 4
  store i32 400000, i32* %10, align 4
  br label %113

56:                                               ; preds = %2
  %57 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %58 = call i32 @get_tmds_link_bandwidth(%struct.drm_connector* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @nouveau_duallink, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %63 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = mul i32 %69, 2
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %61, %56
  br label %113

72:                                               ; preds = %2
  %73 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %74 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  store i32 350000, i32* %10, align 4
  br label %82

82:                                               ; preds = %81, %72
  br label %113

83:                                               ; preds = %2
  %84 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %85 = call %struct.TYPE_12__* @get_slave_funcs(%struct.drm_encoder* %84)
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32 (%struct.drm_encoder*, %struct.drm_display_mode*)*, i32 (%struct.drm_encoder*, %struct.drm_display_mode*)** %86, align 8
  %88 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %90 = call i32 %87(%struct.drm_encoder* %88, %struct.drm_display_mode* %89)
  store i32 %90, i32* %3, align 4
  br label %127

91:                                               ; preds = %2
  %92 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %93 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %10, align 4
  %96 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %7, align 8
  %97 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = mul i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %104 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 3
  %108 = mul i32 %102, %107
  %109 = udiv i32 %108, 10
  store i32 %109, i32* %11, align 4
  br label %113

110:                                              ; preds = %2
  %111 = call i32 @BUG_ON(i32 1)
  %112 = load i32, i32* @MODE_BAD, align 4
  store i32 %112, i32* %3, align 4
  br label %127

113:                                              ; preds = %91, %82, %71, %55
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %118, i32* %3, align 4
  br label %127

119:                                              ; preds = %113
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ugt i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %124, i32* %3, align 4
  br label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @MODE_OK, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %123, %117, %110, %83, %53
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder*) #1

declare dso_local i32 @get_tmds_link_bandwidth(%struct.drm_connector*) #1

declare dso_local %struct.TYPE_12__* @get_slave_funcs(%struct.drm_encoder*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
