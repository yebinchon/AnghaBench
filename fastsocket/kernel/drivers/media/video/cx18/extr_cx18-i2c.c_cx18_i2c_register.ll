; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-i2c.c_cx18_i2c_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-i2c.c_cx18_i2c_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, %struct.TYPE_2__*, %struct.i2c_adapter* }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.i2c_adapter = type { i32 }
%struct.v4l2_subdev = type { i32 }

@hw_bus = common dso_local global i32* null, align 8
@hw_devicenames = common dso_local global i8** null, align 8
@hw_addrs = common dso_local global i32* null, align 8
@CX18_HW_TUNER = common dso_local global i32 0, align 4
@CX18_HW_IR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_i2c_register(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** @hw_bus, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.cx18*, %struct.cx18** %4, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 2
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i64 %20
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %8, align 8
  %22 = load i8**, i8*** @hw_devicenames, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** @hw_addrs, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp uge i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %140

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @CX18_HW_TUNER, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %94

38:                                               ; preds = %34
  %39 = load %struct.cx18*, %struct.cx18** %4, align 8
  %40 = getelementptr inbounds %struct.cx18, %struct.cx18* %39, i32 0, i32 0
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.cx18*, %struct.cx18** %4, align 8
  %44 = getelementptr inbounds %struct.cx18, %struct.cx18* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %40, %struct.i2c_adapter* %41, i8* %42, i32 0, i32* %47)
  store %struct.v4l2_subdev* %48, %struct.v4l2_subdev** %6, align 8
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %50 = icmp ne %struct.v4l2_subdev* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %38
  %56 = load %struct.cx18*, %struct.cx18** %4, align 8
  %57 = getelementptr inbounds %struct.cx18, %struct.cx18* %56, i32 0, i32 0
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.cx18*, %struct.cx18** %4, align 8
  %61 = getelementptr inbounds %struct.cx18, %struct.cx18* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %57, %struct.i2c_adapter* %58, i8* %59, i32 0, i32* %64)
  store %struct.v4l2_subdev* %65, %struct.v4l2_subdev** %6, align 8
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %67 = icmp ne %struct.v4l2_subdev* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %55
  %73 = load %struct.cx18*, %struct.cx18** %4, align 8
  %74 = getelementptr inbounds %struct.cx18, %struct.cx18* %73, i32 0, i32 0
  %75 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.cx18*, %struct.cx18** %4, align 8
  %78 = getelementptr inbounds %struct.cx18, %struct.cx18* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %74, %struct.i2c_adapter* %75, i8* %76, i32 0, i32* %81)
  store %struct.v4l2_subdev* %82, %struct.v4l2_subdev** %6, align 8
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %84 = icmp ne %struct.v4l2_subdev* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %72
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %91 = icmp ne %struct.v4l2_subdev* %90, null
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 0, i32 -1
  store i32 %93, i32* %3, align 4
  br label %140

94:                                               ; preds = %34
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @CX18_HW_IR_ANY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load %struct.cx18*, %struct.cx18** %4, align 8
  %101 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i8*, i8** %9, align 8
  %104 = load i32*, i32** @hw_addrs, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cx18_i2c_new_ir(%struct.cx18* %100, %struct.i2c_adapter* %101, i32 %102, i8* %103, i32 %108)
  store i32 %109, i32* %3, align 4
  br label %140

110:                                              ; preds = %94
  %111 = load i32*, i32** @hw_addrs, align 8
  %112 = load i32, i32* %5, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  store i32 -1, i32* %3, align 4
  br label %140

118:                                              ; preds = %110
  %119 = load %struct.cx18*, %struct.cx18** %4, align 8
  %120 = getelementptr inbounds %struct.cx18, %struct.cx18* %119, i32 0, i32 0
  %121 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = load i32*, i32** @hw_addrs, align 8
  %124 = load i32, i32* %5, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %120, %struct.i2c_adapter* %121, i8* %122, i32 %127, i32* null)
  store %struct.v4l2_subdev* %128, %struct.v4l2_subdev** %6, align 8
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %130 = icmp ne %struct.v4l2_subdev* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %118
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %134 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %118
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %137 = icmp ne %struct.v4l2_subdev* %136, null
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 0, i32 -1
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %135, %117, %99, %89, %33
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32*, %struct.i2c_adapter*, i8*, i32, i32*) #1

declare dso_local i32 @cx18_i2c_new_ir(%struct.cx18*, %struct.i2c_adapter*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
