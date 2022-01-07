; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4L2_CTRL_FLAG_NEXT_CTRL = common dso_local global i64 0, align 8
@V4L2_CTRL_ID_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @v4l2_ctrl_next(i64** %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i64** %0, i64*** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @V4L2_CTRL_ID2CLASS(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64**, i64*** %4, align 8
  %11 = icmp eq i64** %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %128

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @V4L2_CTRL_FLAG_NEXT_CTRL, align 8
  %16 = and i64 %14, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i64**, i64*** %4, align 8
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i64**, i64*** %4, align 8
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @V4L2_CTRL_ID2CLASS(i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %27, %28
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i1 [ false, %19 ], [ %29, %23 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i64**, i64*** %4, align 8
  %34 = getelementptr inbounds i64*, i64** %33, i32 1
  store i64** %34, i64*** %4, align 8
  br label %19

35:                                               ; preds = %30
  %36 = load i64**, i64*** %4, align 8
  %37 = load i64*, i64** %36, align 8
  %38 = icmp eq i64* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i64 0, i64* %3, align 8
  br label %128

40:                                               ; preds = %35
  %41 = load i64**, i64*** %4, align 8
  %42 = load i64*, i64** %41, align 8
  store i64* %42, i64** %7, align 8
  br label %43

43:                                               ; preds = %54, %40
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %49, %50
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %7, align 8
  br label %43

57:                                               ; preds = %52
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i64 [ %62, %61 ], [ 0, %63 ]
  store i64 %65, i64* %3, align 8
  br label %128

66:                                               ; preds = %13
  %67 = load i64, i64* @V4L2_CTRL_ID_MASK, align 8
  %68 = load i64, i64* %5, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %85, %66
  %73 = load i64**, i64*** %4, align 8
  %74 = load i64*, i64** %73, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i64**, i64*** %4, align 8
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @V4L2_CTRL_ID2CLASS(i64 %79)
  %81 = load i64, i64* %6, align 8
  %82 = icmp slt i64 %80, %81
  br label %83

83:                                               ; preds = %76, %72
  %84 = phi i1 [ false, %72 ], [ %82, %76 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i64**, i64*** %4, align 8
  %87 = getelementptr inbounds i64*, i64** %86, i32 1
  store i64** %87, i64*** %4, align 8
  br label %72

88:                                               ; preds = %83
  %89 = load i64**, i64*** %4, align 8
  %90 = load i64*, i64** %89, align 8
  %91 = icmp eq i64* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i64 0, i64* %3, align 8
  br label %128

93:                                               ; preds = %88
  %94 = load i64**, i64*** %4, align 8
  %95 = load i64*, i64** %94, align 8
  store i64* %95, i64** %7, align 8
  br label %96

96:                                               ; preds = %107, %93
  %97 = load i64*, i64** %7, align 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i64*, i64** %7, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %5, align 8
  %104 = icmp slt i64 %102, %103
  br label %105

105:                                              ; preds = %100, %96
  %106 = phi i1 [ false, %96 ], [ %104, %100 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i64*, i64** %7, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %7, align 8
  br label %96

110:                                              ; preds = %105
  %111 = load i64*, i64** %7, align 8
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i64*, i64** %7, align 8
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %3, align 8
  br label %128

117:                                              ; preds = %110
  %118 = load i64**, i64*** %4, align 8
  %119 = getelementptr inbounds i64*, i64** %118, i32 1
  store i64** %119, i64*** %4, align 8
  %120 = load i64**, i64*** %4, align 8
  %121 = load i64*, i64** %120, align 8
  %122 = icmp eq i64* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i64 0, i64* %3, align 8
  br label %128

124:                                              ; preds = %117
  %125 = load i64**, i64*** %4, align 8
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %3, align 8
  br label %128

128:                                              ; preds = %124, %123, %114, %92, %64, %39, %12
  %129 = load i64, i64* %3, align 8
  ret i64 %129
}

declare dso_local i64 @V4L2_CTRL_ID2CLASS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
