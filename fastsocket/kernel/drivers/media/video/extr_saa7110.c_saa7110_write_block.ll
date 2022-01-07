; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7110.c_saa7110_write_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7110.c_saa7110_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.saa7110 = type { i64 }

@SAA7110_NR_REG = common dso_local global i64 0, align 8
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64*, i32)* @saa7110_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7110_write_block(%struct.v4l2_subdev* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.saa7110*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.saa7110* @to_saa7110(%struct.v4l2_subdev* %14)
  store %struct.saa7110* %15, %struct.saa7110** %9, align 8
  store i32 -1, i32* %10, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sub i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* @SAA7110_NR_REG, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %77

27:                                               ; preds = %3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I2C_FUNC_I2C, align 4
  %32 = call i64 @i2c_check_functionality(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @i2c_master_send(%struct.i2c_client* %35, i64* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.saa7110*, %struct.saa7110** %9, align 8
  %40 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64*, i64** %6, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i32, i32* %7, align 4
  %47 = sub i32 %46, 1
  %48 = call i32 @memcpy(i64 %43, i64* %45, i32 %47)
  br label %75

49:                                               ; preds = %27
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %71, %49
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %11, align 8
  %61 = trunc i64 %59 to i32
  %62 = load i64*, i64** %6, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %6, align 8
  %64 = load i64, i64* %62, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @saa7110_write(%struct.v4l2_subdev* %58, i32 %61, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %74

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %54

74:                                               ; preds = %69, %54
  br label %75

75:                                               ; preds = %74, %34
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %25
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.saa7110* @to_saa7110(%struct.v4l2_subdev*) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i64*, i32) #1

declare dso_local i32 @memcpy(i64, i64*, i32) #1

declare dso_local i32 @saa7110_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
