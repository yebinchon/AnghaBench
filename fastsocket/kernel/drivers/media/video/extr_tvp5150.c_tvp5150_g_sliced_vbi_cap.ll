; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_g_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_g_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_vbi_ram_value = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_cap = type { i32, i32** }

@vbi_ram_default = common dso_local global %struct.i2c_vbi_ram_value* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"g_sliced_vbi_cap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_cap*)* @tvp5150_g_sliced_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_g_sliced_vbi_cap(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_cap* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_sliced_vbi_cap*, align 8
  %5 = alloca %struct.i2c_vbi_ram_value*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_sliced_vbi_cap* %1, %struct.v4l2_sliced_vbi_cap** %4, align 8
  %7 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** @vbi_ram_default, align 8
  store %struct.i2c_vbi_ram_value* %7, %struct.i2c_vbi_ram_value** %5, align 8
  %8 = load i32, i32* @debug, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call i32 @v4l2_dbg(i32 1, i32 %8, %struct.v4l2_subdev* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %4, align 8
  %12 = call i32 @memset(%struct.v4l2_sliced_vbi_cap* %11, i32 0, i32 16)
  br label %13

13:                                               ; preds = %48, %2
  %14 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %45, %18
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %24, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %34
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %23

48:                                               ; preds = %23
  %49 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %5, align 8
  %50 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %57, i32 1
  store %struct.i2c_vbi_ram_value* %58, %struct.i2c_vbi_ram_value** %5, align 8
  br label %13

59:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @memset(%struct.v4l2_sliced_vbi_cap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
