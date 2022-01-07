; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_write_inittab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_write_inittab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_reg_value = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.i2c_reg_value*)* @tvp5150_write_inittab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_write_inittab(%struct.v4l2_subdev* %0, %struct.i2c_reg_value* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_reg_value*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.i2c_reg_value* %1, %struct.i2c_reg_value** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %7 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 255
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tvp5150_write(%struct.v4l2_subdev* %11, i32 %14, i32 %17)
  %19 = load %struct.i2c_reg_value*, %struct.i2c_reg_value** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_reg_value, %struct.i2c_reg_value* %19, i32 1
  store %struct.i2c_reg_value* %20, %struct.i2c_reg_value** %4, align 8
  br label %5

21:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @tvp5150_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
