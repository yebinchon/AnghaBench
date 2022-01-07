; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_verify_window_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_verify_window_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_fh = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_window = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv_fh*, %struct.v4l2_window*, i32, i32)* @verify_window_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_window_lock(%struct.bttv_fh* %0, %struct.v4l2_window* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bttv_fh*, align 8
  %7 = alloca %struct.v4l2_window*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bttv_fh* %0, %struct.bttv_fh** %6, align 8
  store %struct.v4l2_window* %1, %struct.v4l2_window** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 48
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 32
  br i1 %24, label %25, label %28

25:                                               ; preds = %19, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %140

28:                                               ; preds = %19
  %29 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 2048
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %140

36:                                               ; preds = %28
  %37 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %36
  %44 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %45 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %50 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %13, align 4
  %62 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp sgt i32 %65, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 129, i32 128
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %43, %36
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %73 [
    i32 128, label %72
    i32 130, label %72
    i32 129, label %72
  ]

72:                                               ; preds = %70, %70, %70
  br label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %140

76:                                               ; preds = %72
  %77 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %78 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = icmp eq %struct.TYPE_9__* null, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %140

84:                                               ; preds = %76
  store i32 -1, i32* %11, align 4
  %85 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %86 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %93 [
    i32 8, label %90
    i32 24, label %90
    i32 16, label %91
    i32 32, label %92
  ]

90:                                               ; preds = %84, %84
  store i32 -4, i32* %11, align 4
  br label %95

91:                                               ; preds = %84
  store i32 -2, i32* %11, align 4
  br label %95

92:                                               ; preds = %84
  br label %95

93:                                               ; preds = %84
  %94 = call i32 (...) @BUG()
  br label %95

95:                                               ; preds = %93, %92, %91, %90
  %96 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub i32 %111, %112
  %114 = sub i32 %113, 1
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %114, %115
  %117 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 4
  %120 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %121 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @limit_scaled_size_lock(%struct.bttv_fh* %120, i32* %123, i32* %126, i32 %127, i32 %128, i32 0, i32 %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 0, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %95
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %5, align 4
  br label %140

136:                                              ; preds = %95
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.v4l2_window*, %struct.v4l2_window** %7, align 8
  %139 = getelementptr inbounds %struct.v4l2_window, %struct.v4l2_window* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %134, %81, %73, %33, %25
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @limit_scaled_size_lock(%struct.bttv_fh*, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
