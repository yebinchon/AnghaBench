; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_m52790.c_m52790_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_m52790.c_m52790_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.m52790_state = type { i32, i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @m52790_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m52790_write(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.m52790_state*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call %struct.m52790_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.m52790_state* %8, %struct.m52790_state** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.m52790_state*, %struct.m52790_state** %3, align 8
  %12 = getelementptr inbounds %struct.m52790_state, %struct.m52790_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.m52790_state*, %struct.m52790_state** %3, align 8
  %15 = getelementptr inbounds %struct.m52790_state, %struct.m52790_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  %18 = and i32 %17, 255
  store i32 %18, i32* %5, align 4
  %19 = load %struct.m52790_state*, %struct.m52790_state** %3, align 8
  %20 = getelementptr inbounds %struct.m52790_state, %struct.m52790_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.m52790_state*, %struct.m52790_state** %3, align 8
  %23 = getelementptr inbounds %struct.m52790_state, %struct.m52790_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %6, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %27, i32 %28, i32 %29)
  ret i32 %30
}

declare dso_local %struct.m52790_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
