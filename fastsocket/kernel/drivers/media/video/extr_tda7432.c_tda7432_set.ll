; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda7432.c_tda7432_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda7432.c_tda7432_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.tda7432 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"tda7432: 7432_set(0x%02x,0x%02x,0x%02x,0x%02x,0x%02x,0x%02x,0x%02x,0x%02x,0x%02x)\0A\00", align 1
@TDA7432_IN = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"I/O error, trying tda7432_set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tda7432_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda7432_set(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.tda7432*, align 8
  %6 = alloca [16 x i8], align 16
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.tda7432* @to_state(%struct.v4l2_subdev* %9)
  store %struct.tda7432* %10, %struct.tda7432** %5, align 8
  %11 = load i32, i32* @debug, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %14 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 1
  %16 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %17 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 1
  %19 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %20 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %19, i32 0, i32 2
  %21 = load i8, i8* %20, align 1
  %22 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %23 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %22, i32 0, i32 3
  %24 = load i8, i8* %23, align 1
  %25 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %26 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %25, i32 0, i32 4
  %27 = load i8, i8* %26, align 1
  %28 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %29 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %28, i32 0, i32 5
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %32 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %31, i32 0, i32 6
  %33 = load i8, i8* %32, align 1
  %34 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %35 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %34, i32 0, i32 7
  %36 = load i8, i8* %35, align 1
  %37 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %38 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %37, i32 0, i32 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @v4l2_dbg(i32 1, i32 %11, %struct.v4l2_subdev* %12, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8 zeroext %15, i8 zeroext %18, i8 zeroext %21, i8 zeroext %24, i8 zeroext %27, i8 zeroext %30, i8 zeroext %33, i8 zeroext %36, i8 zeroext %39)
  %41 = load i8, i8* @TDA7432_IN, align 1
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  store i8 %41, i8* %42, align 16
  %43 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %44 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  store i8 %45, i8* %46, align 1
  %47 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %48 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %47, i32 0, i32 1
  %49 = load i8, i8* %48, align 1
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  store i8 %49, i8* %50, align 2
  %51 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %52 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %51, i32 0, i32 2
  %53 = load i8, i8* %52, align 1
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  store i8 %53, i8* %54, align 1
  %55 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %56 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %55, i32 0, i32 3
  %57 = load i8, i8* %56, align 1
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 4
  store i8 %57, i8* %58, align 4
  %59 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %60 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %59, i32 0, i32 4
  %61 = load i8, i8* %60, align 1
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 5
  store i8 %61, i8* %62, align 1
  %63 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %64 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %63, i32 0, i32 5
  %65 = load i8, i8* %64, align 1
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 6
  store i8 %65, i8* %66, align 2
  %67 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %68 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %67, i32 0, i32 6
  %69 = load i8, i8* %68, align 1
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 7
  store i8 %69, i8* %70, align 1
  %71 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %72 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %71, i32 0, i32 7
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 8
  store i8 %73, i8* %74, align 8
  %75 = load %struct.tda7432*, %struct.tda7432** %5, align 8
  %76 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %75, i32 0, i32 8
  %77 = load i8, i8* %76, align 1
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 9
  store i8 %77, i8* %78, align 1
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %81 = call i32 @i2c_master_send(%struct.i2c_client* %79, i8* %80, i32 10)
  %82 = icmp ne i32 10, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %1
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %85 = call i32 @v4l2_err(%struct.v4l2_subdev* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %87

86:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.tda7432* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
