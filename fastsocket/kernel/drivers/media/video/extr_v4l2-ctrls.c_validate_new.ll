; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_validate_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_validate_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i8*, i32, i32, i32, i32, i8**, i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @validate_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_new(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %148 [
    i32 131, label %17
    i32 134, label %66
    i32 129, label %76
    i32 133, label %115
    i32 132, label %115
    i32 130, label %118
    i32 128, label %119
  ]

17:                                               ; preds = %1
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 2
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %17
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %6, align 4
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %52, %55
  %57 = mul nsw i32 %51, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %59 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %2, align 4
  br label %151

66:                                               ; preds = %1
  %67 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %75 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %2, align 4
  br label %151

76:                                               ; preds = %1
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %79 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %85 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82, %76
  %89 = load i32, i32* @ERANGE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %151

91:                                               ; preds = %82
  %92 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %92, i32 0, i32 6
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %91
  %104 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %105 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = shl i32 1, %107
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103, %91
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %151

114:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %151

115:                                              ; preds = %1, %1
  %116 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %117 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %116, i32 0, i32 8
  store i32 0, i32* %117, align 4
  store i32 0, i32* %2, align 4
  br label %151

118:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %151

119:                                              ; preds = %1
  %120 = load i8*, i8** %5, align 8
  %121 = call i64 @strlen(i8* %120)
  store i64 %121, i64* %7, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %124 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = icmp ult i64 %122, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load i32, i32* @ERANGE, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %151

131:                                              ; preds = %119
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %134 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = sub i64 %132, %136
  %138 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %139 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = urem i64 %137, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %131
  %145 = load i32, i32* @ERANGE, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %151

147:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %151

148:                                              ; preds = %1
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %147, %144, %128, %118, %115, %114, %111, %88, %66, %43
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
