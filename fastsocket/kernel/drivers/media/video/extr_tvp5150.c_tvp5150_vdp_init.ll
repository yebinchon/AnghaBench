; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_vdp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_vdp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_vbi_ram_value = type { i32, i32* }

@TVP5150_FULL_FIELD_ENA = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_INI = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_END = common dso_local global i32 0, align 4
@TVP5150_CONF_RAM_ADDR_HIGH = common dso_local global i32 0, align 4
@TVP5150_CONF_RAM_ADDR_LOW = common dso_local global i32 0, align 4
@TVP5150_VDP_CONF_RAM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.i2c_vbi_ram_value*)* @tvp5150_vdp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_vdp_init(%struct.v4l2_subdev* %0, %struct.i2c_vbi_ram_value* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_vbi_ram_value*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.i2c_vbi_ram_value* %1, %struct.i2c_vbi_ram_value** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = load i32, i32* @TVP5150_FULL_FIELD_ENA, align 4
  %8 = call i32 @tvp5150_write(%struct.v4l2_subdev* %6, i32 %7, i32 0)
  %9 = load i32, i32* @TVP5150_LINE_MODE_INI, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %18, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TVP5150_LINE_MODE_END, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @tvp5150_write(%struct.v4l2_subdev* %15, i32 %16, i32 255)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %10

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %58, %21
  %23 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %61

27:                                               ; preds = %22
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = load i32, i32* @TVP5150_CONF_RAM_ADDR_HIGH, align 4
  %30 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 8
  %34 = call i32 @tvp5150_write(%struct.v4l2_subdev* %28, i32 %29, i32 %33)
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %36 = load i32, i32* @TVP5150_CONF_RAM_ADDR_LOW, align 4
  %37 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @tvp5150_write(%struct.v4l2_subdev* %35, i32 %36, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %55, %27
  %42 = load i32, i32* %5, align 4
  %43 = icmp ult i32 %42, 16
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %46 = load i32, i32* @TVP5150_VDP_CONF_RAM_DATA, align 4
  %47 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tvp5150_write(%struct.v4l2_subdev* %45, i32 %46, i32 %53)
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %41

58:                                               ; preds = %41
  %59 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %59, i32 1
  store %struct.i2c_vbi_ram_value* %60, %struct.i2c_vbi_ram_value** %4, align 8
  br label %22

61:                                               ; preds = %22
  ret i32 0
}

declare dso_local i32 @tvp5150_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
