; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_get_tile_pipe_to_backend_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_get_tile_pipe_to_backend_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R6XX_MAX_PIPES = common dso_local global i32 0, align 4
@R6XX_MAX_BACKENDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @r600_get_tile_pipe_to_backend_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_get_tile_pipe_to_backend_map(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @R6XX_MAX_PIPES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @R6XX_MAX_PIPES, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @R6XX_MAX_PIPES, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %3
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @R6XX_MAX_BACKENDS, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @R6XX_MAX_BACKENDS, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %62, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @R6XX_MAX_BACKENDS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %44, %45
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32, i32* %14, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %49, %43
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %65

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %39

65:                                               ; preds = %60, %39
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = getelementptr inbounds i32, i32* %18, i64 0
  %77 = load i32, i32* @R6XX_MAX_PIPES, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(i32* %76, i32 0, i32 %80)
  %82 = load i32, i32* %4, align 4
  switch i32 %82, label %127 [
    i32 1, label %83
    i32 2, label %85
    i32 3, label %88
    i32 4, label %92
    i32 5, label %97
    i32 6, label %103
    i32 7, label %110
    i32 8, label %118
  ]

83:                                               ; preds = %75
  %84 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %84, align 16
  br label %127

85:                                               ; preds = %75
  %86 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %86, align 16
  %87 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 1, i32* %87, align 4
  br label %127

88:                                               ; preds = %75
  %89 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %89, align 16
  %90 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 1, i32* %90, align 4
  %91 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 2, i32* %91, align 8
  br label %127

92:                                               ; preds = %75
  %93 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %93, align 16
  %94 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 1, i32* %94, align 4
  %95 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 2, i32* %95, align 8
  %96 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 3, i32* %96, align 4
  br label %127

97:                                               ; preds = %75
  %98 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %98, align 16
  %99 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 1, i32* %99, align 4
  %100 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 2, i32* %100, align 8
  %101 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 3, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %18, i64 4
  store i32 4, i32* %102, align 16
  br label %127

103:                                              ; preds = %75
  %104 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %104, align 16
  %105 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 2, i32* %105, align 4
  %106 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 4, i32* %106, align 8
  %107 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 5, i32* %107, align 4
  %108 = getelementptr inbounds i32, i32* %18, i64 4
  store i32 1, i32* %108, align 16
  %109 = getelementptr inbounds i32, i32* %18, i64 5
  store i32 3, i32* %109, align 4
  br label %127

110:                                              ; preds = %75
  %111 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %111, align 16
  %112 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 2, i32* %112, align 4
  %113 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 4, i32* %113, align 8
  %114 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 6, i32* %114, align 4
  %115 = getelementptr inbounds i32, i32* %18, i64 4
  store i32 1, i32* %115, align 16
  %116 = getelementptr inbounds i32, i32* %18, i64 5
  store i32 3, i32* %116, align 4
  %117 = getelementptr inbounds i32, i32* %18, i64 6
  store i32 5, i32* %117, align 8
  br label %127

118:                                              ; preds = %75
  %119 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %119, align 16
  %120 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 2, i32* %120, align 4
  %121 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 4, i32* %121, align 8
  %122 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 6, i32* %122, align 4
  %123 = getelementptr inbounds i32, i32* %18, i64 4
  store i32 1, i32* %123, align 16
  %124 = getelementptr inbounds i32, i32* %18, i64 5
  store i32 3, i32* %124, align 4
  %125 = getelementptr inbounds i32, i32* %18, i64 6
  store i32 5, i32* %125, align 8
  %126 = getelementptr inbounds i32, i32* %18, i64 7
  store i32 7, i32* %126, align 4
  br label %127

127:                                              ; preds = %75, %118, %110, %103, %97, %92, %88, %85, %83
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %159, %127
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %139, %132
  %134 = load i32, i32* %13, align 4
  %135 = shl i32 1, %134
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* @R6XX_MAX_BACKENDS, align 4
  %143 = srem i32 %141, %142
  store i32 %143, i32* %13, align 4
  br label %133

144:                                              ; preds = %133
  %145 = load i32, i32* %13, align 4
  %146 = and i32 %145, 3
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %18, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %150, 2
  %152 = shl i32 %146, %151
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* @R6XX_MAX_BACKENDS, align 4
  %158 = srem i32 %156, %157
  store i32 %158, i32* %13, align 4
  br label %159

159:                                              ; preds = %144
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %128

162:                                              ; preds = %128
  %163 = load i32, i32* %7, align 4
  %164 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %164)
  ret i32 %163
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
