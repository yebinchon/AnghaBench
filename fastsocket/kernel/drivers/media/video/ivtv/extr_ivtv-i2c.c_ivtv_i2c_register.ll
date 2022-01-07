; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_i2c_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_i2c_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, %struct.TYPE_2__*, %struct.i2c_adapter }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.i2c_adapter = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.cx25840_platform_data = type { i32 }

@hw_devicenames = common dso_local global i8** null, align 8
@hw_addrs = common dso_local global i32* null, align 8
@IVTV_HW_TUNER = common dso_local global i32 0, align 4
@IVTV_HW_IR_ANY = common dso_local global i32 0, align 4
@IVTV_HW_UPD64031A = common dso_local global i32 0, align 4
@IVTV_HW_UPD6408X = common dso_local global i32 0, align 4
@IVTV_HW_CX25840 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_i2c_register(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cx25840_platform_data, align 4
  store %struct.ivtv* %0, %struct.ivtv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 3
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %7, align 8
  %13 = load i8**, i8*** @hw_devicenames, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** @hw_addrs, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp uge i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %175

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @IVTV_HW_TUNER, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %88

29:                                               ; preds = %25
  %30 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %31 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %30, i32 0, i32 0
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %31, %struct.i2c_adapter* %32, i8* %33, i32 0, i32* %38)
  store %struct.v4l2_subdev* %39, %struct.v4l2_subdev** %6, align 8
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %41 = icmp ne %struct.v4l2_subdev* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 1, %43
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %29
  %48 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %49 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %48, i32 0, i32 0
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %53 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %49, %struct.i2c_adapter* %50, i8* %51, i32 0, i32* %56)
  store %struct.v4l2_subdev* %57, %struct.v4l2_subdev** %6, align 8
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %59 = icmp ne %struct.v4l2_subdev* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 1, %61
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %47
  %66 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 0
  %68 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %71 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %67, %struct.i2c_adapter* %68, i8* %69, i32 0, i32* %74)
  store %struct.v4l2_subdev* %75, %struct.v4l2_subdev** %6, align 8
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %77 = icmp ne %struct.v4l2_subdev* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load i32, i32* %5, align 4
  %80 = shl i32 1, %79
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %65
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %85 = icmp ne %struct.v4l2_subdev* %84, null
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 -1
  store i32 %87, i32* %3, align 4
  br label %175

88:                                               ; preds = %25
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @IVTV_HW_IR_ANY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = load i32*, i32** @hw_addrs, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ivtv_i2c_new_ir(%struct.ivtv* %94, i32 %95, i8* %96, i32 %101)
  store i32 %102, i32* %3, align 4
  br label %175

103:                                              ; preds = %88
  %104 = load i32*, i32** @hw_addrs, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  store i32 -1, i32* %3, align 4
  br label %175

111:                                              ; preds = %103
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @IVTV_HW_UPD64031A, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @IVTV_HW_UPD6408X, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115, %111
  %120 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %121 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %120, i32 0, i32 0
  %122 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = load i32*, i32** @hw_addrs, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32* @I2C_ADDRS(i32 %128)
  %130 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %121, %struct.i2c_adapter* %122, i8* %123, i32 0, i32* %129)
  store %struct.v4l2_subdev* %130, %struct.v4l2_subdev** %6, align 8
  br label %162

131:                                              ; preds = %115
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @IVTV_HW_CX25840, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %137 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.cx25840_platform_data, %struct.cx25840_platform_data* %10, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %141 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %140, i32 0, i32 0
  %142 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load i32*, i32** @hw_addrs, align 8
  %145 = load i32, i32* %5, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev_cfg(i32* %141, %struct.i2c_adapter* %142, i8* %143, i32 0, %struct.cx25840_platform_data* %10, i32 %148, i32* null)
  store %struct.v4l2_subdev* %149, %struct.v4l2_subdev** %6, align 8
  br label %161

150:                                              ; preds = %131
  %151 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %152 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %151, i32 0, i32 0
  %153 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = load i32*, i32** @hw_addrs, align 8
  %156 = load i32, i32* %5, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32* %152, %struct.i2c_adapter* %153, i8* %154, i32 %159, i32* null)
  store %struct.v4l2_subdev* %160, %struct.v4l2_subdev** %6, align 8
  br label %161

161:                                              ; preds = %150, %135
  br label %162

162:                                              ; preds = %161, %119
  %163 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %164 = icmp ne %struct.v4l2_subdev* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = shl i32 1, %166
  %168 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %169 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %165, %162
  %171 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %172 = icmp ne %struct.v4l2_subdev* %171, null
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 0, i32 -1
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %170, %110, %93, %83, %24
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev(i32*, %struct.i2c_adapter*, i8*, i32, i32*) #1

declare dso_local i32 @ivtv_i2c_new_ir(%struct.ivtv*, i32, i8*, i32) #1

declare dso_local i32* @I2C_ADDRS(i32) #1

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev_cfg(i32*, %struct.i2c_adapter*, i8*, i32, %struct.cx25840_platform_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
