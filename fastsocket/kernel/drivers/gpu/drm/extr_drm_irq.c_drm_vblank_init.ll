; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_vblank_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_vblank_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64, i32*, i32*, i32*, %struct.TYPE_2__*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@vblank_disable_fn = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_VBLANKTIME_RBSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Supports vblank timestamp caching Rev 1 (10.10.2010).\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Driver supports precise vblank timestamp query.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"No driver support for vblank timestamp query.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_vblank_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 13
  %12 = load i32, i32* @vblank_disable_fn, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = ptrtoint %struct.drm_device* %13 to i64
  %15 = call i32 @setup_timer(i32* %11, i32 %12, i64 %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 12
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 11
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kmalloc(i32 %28, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  br label %171

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kmalloc(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %39
  br label %171

54:                                               ; preds = %39
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kmalloc(i32 %58, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %54
  br label %171

69:                                               ; preds = %54
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kcalloc(i32 %70, i32 4, i32 %71)
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 10
  store i8* %72, i8** %74, align 8
  %75 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 10
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %171

80:                                               ; preds = %69
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @kcalloc(i32 %81, i32 4, i32 %82)
  %84 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %85 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %84, i32 0, i32 9
  store i8* %83, i8** %85, align 8
  %86 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 9
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  br label %171

91:                                               ; preds = %80
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i8* @kcalloc(i32 %92, i32 4, i32 %93)
  %95 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 8
  store i8* %94, i8** %96, align 8
  %97 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 8
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %91
  br label %171

102:                                              ; preds = %91
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @kcalloc(i32 %103, i32 4, i32 %104)
  %106 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %107 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %106, i32 0, i32 7
  store i8* %105, i8** %107, align 8
  %108 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %109 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %108, i32 0, i32 7
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %102
  br label %171

113:                                              ; preds = %102
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @DRM_VBLANKTIME_RBSIZE, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call i8* @kcalloc(i32 %116, i32 4, i32 %117)
  %119 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %120 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %122 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %121, i32 0, i32 6
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %113
  br label %171

126:                                              ; preds = %113
  %127 = call i32 @DRM_INFO(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %128 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %129 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %128, i32 0, i32 5
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = call i32 @DRM_INFO(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %138

136:                                              ; preds = %126
  %137 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %134
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %165, %138
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %139
  %144 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %145 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = call i32 @init_waitqueue_head(i32* %149)
  %151 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %152 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = call i32 @atomic_set(i32* %156, i32 0)
  %158 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %159 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call i32 @atomic_set(i32* %163, i32 0)
  br label %165

165:                                              ; preds = %143
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %139

168:                                              ; preds = %139
  %169 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %170 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %169, i32 0, i32 1
  store i64 0, i64* %170, align 8
  store i32 0, i32* %3, align 4
  br label %175

171:                                              ; preds = %125, %112, %101, %90, %79, %68, %53, %38
  %172 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %173 = call i32 @drm_vblank_cleanup(%struct.drm_device* %172)
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @drm_vblank_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
