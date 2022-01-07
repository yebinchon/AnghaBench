; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_abs_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_abs_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32*, i32* }
%struct.mousedev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@xres = common dso_local global i32 0, align 4
@yres = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.mousedev*, i32, i32)* @mousedev_abs_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousedev_abs_event(%struct.input_dev* %0, %struct.mousedev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.mousedev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.mousedev* %1, %struct.mousedev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %147 [
    i32 129, label %11
    i32 128, label %78
  ]

11:                                               ; preds = %4
  %12 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 129
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 129
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %16, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %11
  %26 = load i32, i32* @xres, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %30

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi i32 [ %26, %28 ], [ 1, %29 ]
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %11
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 129
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %33, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 129
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %32
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 129
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 129
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %46
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 129
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %61, %66
  %68 = load i32, i32* @xres, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = sdiv i32 %69, %70
  %72 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %73 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %76 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  br label %147

78:                                               ; preds = %4
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 128
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 128
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %83, %88
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %78
  %93 = load i32, i32* @yres, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %97

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %95
  %98 = phi i32 [ %93, %95 ], [ 1, %96 ]
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %97, %78
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 128
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %100, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 128
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %107, %99
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 128
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %123 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 128
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %121, %113
  %128 = load i32, i32* @yres, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 128
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %129, %134
  %136 = load i32, i32* @yres, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %9, align 4
  %139 = sdiv i32 %137, %138
  %140 = sub nsw i32 %128, %139
  %141 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %142 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 4
  %144 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %145 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %4, %127, %60
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
