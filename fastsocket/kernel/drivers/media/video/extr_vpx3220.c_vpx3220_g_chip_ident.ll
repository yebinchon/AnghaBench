; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vpx3220.c_vpx3220_g_chip_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vpx3220.c_vpx3220_g_chip_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dbg_chip_ident = type { i32 }
%struct.vpx3220 = type { i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_dbg_chip_ident*)* @vpx3220_g_chip_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpx3220_g_chip_ident(%struct.v4l2_subdev* %0, %struct.v4l2_dbg_chip_ident* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_dbg_chip_ident*, align 8
  %5 = alloca %struct.vpx3220*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_dbg_chip_ident* %1, %struct.v4l2_dbg_chip_ident** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.vpx3220* @to_vpx3220(%struct.v4l2_subdev* %7)
  store %struct.vpx3220* %8, %struct.vpx3220** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = load %struct.v4l2_dbg_chip_ident*, %struct.v4l2_dbg_chip_ident** %4, align 8
  %13 = load %struct.vpx3220*, %struct.vpx3220** %5, align 8
  %14 = getelementptr inbounds %struct.vpx3220, %struct.vpx3220* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @v4l2_chip_ident_i2c_client(%struct.i2c_client* %11, %struct.v4l2_dbg_chip_ident* %12, i32 %15, i32 0)
  ret i32 %16
}

declare dso_local %struct.vpx3220* @to_vpx3220(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_chip_ident_i2c_client(%struct.i2c_client*, %struct.v4l2_dbg_chip_ident*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
