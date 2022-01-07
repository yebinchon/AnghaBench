; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ov7670_config = type { i32, i32, i32, i32 }
%struct.ov7670_info = type { i32, i32, i32, i32*, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"chip found @ 0x%x (%s) is not an ov7670 chip.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@ov7670_formats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i8*)* @ov7670_s_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_config(%struct.v4l2_subdev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.ov7670_config*, align 8
  %10 = alloca %struct.ov7670_info*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.ov7670_config*
  store %struct.ov7670_config* %15, %struct.ov7670_config** %9, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %16)
  store %struct.ov7670_info* %17, %struct.ov7670_info** %10, align 8
  %18 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %19 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %18, i32 0, i32 0
  store i32 30, i32* %19, align 8
  %20 = load %struct.ov7670_config*, %struct.ov7670_config** %9, align 8
  %21 = icmp ne %struct.ov7670_config* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %3
  %23 = load %struct.ov7670_config*, %struct.ov7670_config** %9, align 8
  %24 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %27 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ov7670_config*, %struct.ov7670_config** %9, align 8
  %29 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %32 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ov7670_config*, %struct.ov7670_config** %9, align 8
  %34 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %37 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ov7670_config*, %struct.ov7670_config** %9, align 8
  %39 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %22
  %43 = load %struct.ov7670_config*, %struct.ov7670_config** %9, align 8
  %44 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %47 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %22
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %51 = call i32 @ov7670_detect(%struct.v4l2_subdev* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load i32, i32* @debug, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 %59, 1
  %61 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @v4l_dbg(i32 1, i32 %55, %struct.i2c_client* %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %65)
  %67 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %68 = call i32 @kfree(%struct.ov7670_info* %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %94

70:                                               ; preds = %49
  %71 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %72 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 1
  %76 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @v4l_info(%struct.i2c_client* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %80)
  %82 = load i32*, i32** @ov7670_formats, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %85 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %84, i32 0, i32 3
  store i32* %83, i32** %85, align 8
  %86 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %87 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %86, i32 0, i32 1
  store i32 128, i32* %87, align 4
  %88 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %89 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 30
  %92 = load %struct.ov7670_info*, %struct.ov7670_info** %10, align 8
  %93 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %70, %54
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7670_detect(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ov7670_info*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
