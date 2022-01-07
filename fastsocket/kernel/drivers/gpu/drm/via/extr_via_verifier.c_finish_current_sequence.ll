; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_finish_current_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_finish_current_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64, i32*, i64**, i64**, i64**, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Z Buffer start address is 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Destination start address is 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"AGP texture is not in allowed map\0A\00", align 1
@no_sequence = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @finish_current_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_current_sequence(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %158 [
    i32 128, label %18
    i32 130, label %23
    i32 129, label %28
  ]

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %159

23:                                               ; preds = %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %159

28:                                               ; preds = %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %157

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %5, align 4
  store i64 -1, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ugt i32 %50, 9
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  store i32 9, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %4, align 4
  %55 = icmp ugt i32 %54, 9
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 9, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i64**, i64*** %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %12, align 8
  %64 = getelementptr inbounds i64*, i64** %60, i64 %63
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64* %68, i64** %9, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = load i64**, i64*** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i64*, i64** %71, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64* %77, i64** %10, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  %80 = load i64**, i64*** %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i64*, i64** %80, i64 %81
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64* %86, i64** %11, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 7
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %140, %57
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ule i32 %95, %96
  br i1 %97, label %98, label %143

98:                                               ; preds = %94
  %99 = load i64*, i64** %9, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %9, align 8
  %101 = load i64, i64* %99, align 8
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i64, i64* %8, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %105, %98
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i64*, i64** %11, align 8
  %115 = getelementptr inbounds i64, i64* %114, i32 1
  store i64* %115, i64** %11, align 8
  %116 = load i64, i64* %114, align 8
  %117 = load i64*, i64** %10, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %10, align 8
  %119 = load i64, i64* %117, align 8
  %120 = mul i64 %116, %119
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %8, align 8
  br label %133

123:                                              ; preds = %110, %107
  %124 = load i64*, i64** %11, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 1
  store i64* %125, i64** %11, align 8
  %126 = load i64, i64* %124, align 8
  %127 = load i64*, i64** %10, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %10, align 8
  %129 = load i64, i64* %127, align 8
  %130 = shl i64 %126, %129
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %8, align 8
  br label %133

133:                                              ; preds = %123, %113
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %7, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i64, i64* %8, align 8
  store i64 %138, i64* %7, align 8
  br label %139

139:                                              ; preds = %137, %133
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %13, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %94

143:                                              ; preds = %94
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %6, align 8
  %148 = sub i64 %146, %147
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @via_drm_lookup_agp_map(%struct.TYPE_4__* %144, i64 %145, i64 %148, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %143
  %155 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %163

156:                                              ; preds = %143
  br label %157

157:                                              ; preds = %156, %28
  br label %159

158:                                              ; preds = %1
  br label %159

159:                                              ; preds = %158, %157, %23, %18
  %160 = load i32, i32* @no_sequence, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %154
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @via_drm_lookup_agp_map(%struct.TYPE_4__*, i64, i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
