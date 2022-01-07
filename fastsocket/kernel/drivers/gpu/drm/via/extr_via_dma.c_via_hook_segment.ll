; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dma.c_via_hook_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_dma.c_via_hook_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i8*, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"Paused at incorrect address. 0x%08x, 0x%08x 0x%08x\0A\00", align 1
@VIA_REG_TRANSET = common dso_local global i32 0, align 4
@HC_ParaType_PreCR = common dso_local global i32 0, align 4
@VIA_REG_TRANSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @via_hook_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_hook_segment(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  store i32 0, i32* %9, align 4
  %18 = call i32 (...) @via_flush_write_combine()
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = call i32 @via_get_dma(%struct.TYPE_4__* %19)
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = load volatile i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %11, align 8
  store volatile i32 %25, i32* %26, align 4
  %27 = call i32 (...) @via_flush_write_combine()
  %28 = load i32*, i32** %11, align 8
  %29 = load volatile i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %35 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %46, %51
  %53 = add nsw i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = call i32 @via_get_dma(%struct.TYPE_4__* %55)
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %14, align 4
  store i32 10000000, i32* %10, align 4
  br label %69

69:                                               ; preds = %84, %4
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %10, align 4
  %75 = icmp ne i32 %73, 0
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  br i1 %77, label %78, label %96

78:                                               ; preds = %76
  %79 = call i32 @VIA_READ(i32 1052)
  %80 = and i32 %79, -2147483648
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %96

84:                                               ; preds = %78
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  store i32 %95, i32* %14, align 4
  br label %69

96:                                               ; preds = %83, %76
  %97 = call i32 @VIA_READ(i32 1052)
  %98 = and i32 %97, -2147483648
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %156

101:                                              ; preds = %96
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %156, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %111, %114
  store i32 %115, i32* %14, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = load i32, i32* %14, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %104
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = ashr i32 %128, 1
  %130 = icmp slt i32 %125, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %133, i32 %136)
  br label %155

138:                                              ; preds = %124, %104
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load i32, i32* @VIA_REG_TRANSET, align 4
  %143 = load i32, i32* @HC_ParaType_PreCR, align 4
  %144 = shl i32 %143, 16
  %145 = call i32 @VIA_WRITE(i32 %142, i32 %144)
  %146 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @VIA_WRITE(i32 %146, i32 %147)
  %149 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @VIA_WRITE(i32 %149, i32 %150)
  %152 = load i32, i32* @VIA_REG_TRANSPACE, align 4
  %153 = call i32 @VIA_READ(i32 %152)
  br label %154

154:                                              ; preds = %141, %138
  br label %155

155:                                              ; preds = %154, %131
  br label %156

156:                                              ; preds = %155, %101, %96
  %157 = load i32, i32* %9, align 4
  ret i32 %157
}

declare dso_local i32 @via_flush_write_combine(...) #1

declare dso_local i32 @via_get_dma(%struct.TYPE_4__*) #1

declare dso_local i32 @VIA_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32) #1

declare dso_local i32 @VIA_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
