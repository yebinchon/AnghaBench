; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_pas106b.c_pas106b_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_pas106b.c_pas106b_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @pas106b_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pas106b_set_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %103 [
    i32 130, label %10
    i32 128, label %31
    i32 132, label %41
    i32 129, label %51
    i32 131, label %61
    i32 133, label %71
    i32 134, label %92
  ]

10:                                               ; preds = %2
  %11 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %12 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 4
  %16 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %11, i32 3, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %22 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 15
  %26 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %21, i32 4, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  br label %106

31:                                               ; preds = %2
  %32 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %32, i32 12, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  br label %106

41:                                               ; preds = %2
  %42 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %43 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %42, i32 9, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  br label %106

51:                                               ; preds = %2
  %52 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %52, i32 14, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %106

61:                                               ; preds = %2
  %62 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %62, i32 15, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  br label %106

71:                                               ; preds = %2
  %72 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %73 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 1
  %77 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %72, i32 10, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  %82 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 1
  %87 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %82, i32 11, i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %6, align 4
  br label %106

92:                                               ; preds = %2
  %93 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 3
  %98 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %93, i32 8, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %6, align 4
  br label %106

103:                                              ; preds = %2
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %121

106:                                              ; preds = %92, %71, %61, %51, %41, %31, %10
  %107 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %108 = call i64 @sn9c102_i2c_write(%struct.sn9c102_device* %107, i32 19, i32 1)
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  br label %119

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %115
  %120 = phi i32 [ %117, %115 ], [ 0, %118 ]
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %103
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @sn9c102_i2c_write(%struct.sn9c102_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
