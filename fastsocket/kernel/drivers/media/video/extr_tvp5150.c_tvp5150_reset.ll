; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { i32, i32, i32, i32 }

@tvp5150_init_default = common dso_local global i32 0, align 4
@vbi_ram_default = common dso_local global i32 0, align 4
@tvp5150_init_enable = common dso_local global i32 0, align 4
@TVP5150_BRIGHT_CTL = common dso_local global i32 0, align 4
@TVP5150_CONTRAST_CTL = common dso_local global i32 0, align 4
@TVP5150_SATURATION_CTL = common dso_local global i32 0, align 4
@TVP5150_HUE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tvp5150_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_reset(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tvp5150*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %6)
  store %struct.tvp5150* %7, %struct.tvp5150** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = load i32, i32* @tvp5150_init_default, align 4
  %10 = call i32 @tvp5150_write_inittab(%struct.v4l2_subdev* %8, i32 %9)
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load i32, i32* @vbi_ram_default, align 4
  %13 = call i32 @tvp5150_vdp_init(%struct.v4l2_subdev* %11, i32 %12)
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = call i32 @tvp5150_selmux(%struct.v4l2_subdev* %14)
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %17 = load i32, i32* @tvp5150_init_enable, align 4
  %18 = call i32 @tvp5150_write_inittab(%struct.v4l2_subdev* %16, i32 %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load i32, i32* @TVP5150_BRIGHT_CTL, align 4
  %21 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %22 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tvp5150_write(%struct.v4l2_subdev* %19, i32 %20, i32 %23)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %26 = load i32, i32* @TVP5150_CONTRAST_CTL, align 4
  %27 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %28 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tvp5150_write(%struct.v4l2_subdev* %25, i32 %26, i32 %29)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = load i32, i32* @TVP5150_SATURATION_CTL, align 4
  %33 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %34 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tvp5150_write(%struct.v4l2_subdev* %31, i32 %32, i32 %35)
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = load i32, i32* @TVP5150_HUE_CTL, align 4
  %39 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %40 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tvp5150_write(%struct.v4l2_subdev* %37, i32 %38, i32 %41)
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %44 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %45 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @tvp5150_set_std(%struct.v4l2_subdev* %43, i32 %46)
  ret i32 0
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp5150_write_inittab(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @tvp5150_vdp_init(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @tvp5150_selmux(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp5150_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @tvp5150_set_std(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
