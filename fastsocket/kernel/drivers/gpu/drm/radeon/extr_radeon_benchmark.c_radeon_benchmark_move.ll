; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_benchmark.c_radeon_benchmark_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_benchmark.c_radeon_benchmark_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.radeon_bo = type { i32 }

@RADEON_BENCHMARK_ITERATIONS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_BENCHMARK_COPY_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@RADEON_BENCHMARK_COPY_BLIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"blit\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error while benchmarking BO move.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32)* @radeon_benchmark_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_benchmark_move(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_bo*, align 8
  %10 = alloca %struct.radeon_bo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.radeon_bo* null, %struct.radeon_bo** %9, align 8
  store %struct.radeon_bo* null, %struct.radeon_bo** %10, align 8
  %16 = load i32, i32* @RADEON_BENCHMARK_ITERATIONS, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @radeon_bo_create(%struct.radeon_device* %17, i32 %18, i32 %19, i32 1, i32 %20, i32* null, %struct.radeon_bo** %10)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %131

25:                                               ; preds = %4
  %26 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %27 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %26, i32 0)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %131

34:                                               ; preds = %25
  %35 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @radeon_bo_pin(%struct.radeon_bo* %35, i32 %36, i32* %11)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %39 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %38)
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %131

43:                                               ; preds = %34
  %44 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @radeon_bo_create(%struct.radeon_device* %44, i32 %45, i32 %46, i32 1, i32 %47, i32* null, %struct.radeon_bo** %9)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %131

52:                                               ; preds = %43
  %53 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %54 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %53, i32 0)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %131

61:                                               ; preds = %52
  %62 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @radeon_bo_pin(%struct.radeon_bo* %62, i32 %63, i32* %12)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %66 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %131

70:                                               ; preds = %61
  %71 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %70
  %79 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @RADEON_BENCHMARK_COPY_DMA, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @radeon_benchmark_do_move(%struct.radeon_device* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %131

89:                                               ; preds = %78
  %90 = load i32, i32* %15, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @radeon_benchmark_log_results(i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %92, %89
  br label %100

100:                                              ; preds = %99, %70
  %101 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %100
  %109 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @RADEON_BENCHMARK_COPY_BLIT, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @radeon_benchmark_do_move(%struct.radeon_device* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %131

119:                                              ; preds = %108
  %120 = load i32, i32* %15, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @radeon_benchmark_log_results(i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %122, %119
  br label %130

130:                                              ; preds = %129, %100
  br label %131

131:                                              ; preds = %130, %118, %88, %69, %60, %51, %42, %33, %24
  %132 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %133 = icmp ne %struct.radeon_bo* %132, null
  br i1 %133, label %134, label %149

134:                                              ; preds = %131
  %135 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %136 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %135, i32 0)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i64 @likely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %134
  %143 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %144 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %143)
  %145 = load %struct.radeon_bo*, %struct.radeon_bo** %10, align 8
  %146 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %145)
  br label %147

147:                                              ; preds = %142, %134
  %148 = call i32 @radeon_bo_unref(%struct.radeon_bo** %10)
  br label %149

149:                                              ; preds = %147, %131
  %150 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %151 = icmp ne %struct.radeon_bo* %150, null
  br i1 %151, label %152, label %167

152:                                              ; preds = %149
  %153 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %154 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %153, i32 0)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i64 @likely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %152
  %161 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %162 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %161)
  %163 = load %struct.radeon_bo*, %struct.radeon_bo** %9, align 8
  %164 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %163)
  br label %165

165:                                              ; preds = %160, %152
  %166 = call i32 @radeon_bo_unref(%struct.radeon_bo** %9)
  br label %167

167:                                              ; preds = %165, %149
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %167
  ret void
}

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32*, %struct.radeon_bo**) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin(%struct.radeon_bo*, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_benchmark_do_move(%struct.radeon_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @radeon_benchmark_log_results(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unref(%struct.radeon_bo**) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
