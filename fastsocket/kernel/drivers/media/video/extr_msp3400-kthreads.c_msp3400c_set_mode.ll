; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msp3400c_init_data_dem = type { i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i64, i32 }

@msp3400c_init_data = common dso_local global %struct.msp3400c_init_data_dem* null, align 8
@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"set_mode: %d\0A\00", align 1
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msp3400c_set_mode(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msp_state*, align 8
  %6 = alloca %struct.msp3400c_init_data_dem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call i32 @i2c_get_clientdata(%struct.i2c_client* %9)
  %11 = call %struct.msp_state* @to_state(i32 %10)
  store %struct.msp_state* %11, %struct.msp_state** %5, align 8
  %12 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** @msp3400c_init_data, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %12, i64 %14
  store %struct.msp3400c_init_data_dem* %15, %struct.msp3400c_init_data_dem** %6, align 8
  %16 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %17 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 3
  %20 = and i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @msp_debug, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @v4l_dbg(i32 1, i32 %21, %struct.i2c_client* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %27 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %29 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %30 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %33 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 256, i32 0
  %39 = or i32 %34, %38
  %40 = call i32 @msp_write_dem(%struct.i2c_client* %31, i32 187, i32 %39)
  store i32 5, i32* %8, align 4
  br label %41

41:                                               ; preds = %54, %2
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %47 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @msp_write_dem(%struct.i2c_client* %45, i32 1, i32 %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = call i32 @msp_write_dem(%struct.i2c_client* %58, i32 5, i32 4)
  %60 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %61 = call i32 @msp_write_dem(%struct.i2c_client* %60, i32 5, i32 64)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = call i32 @msp_write_dem(%struct.i2c_client* %62, i32 5, i32 0)
  store i32 5, i32* %8, align 4
  br label %64

64:                                               ; preds = %77, %57
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %69 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %70 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @msp_write_dem(%struct.i2c_client* %68, i32 5, i32 %75)
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %8, align 4
  br label %64

80:                                               ; preds = %64
  %81 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %82 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %83 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @msp_write_dem(%struct.i2c_client* %81, i32 131, i32 %84)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %87 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %88 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %91 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %86, i32 %89, i32 %92)
  %94 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %95 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %96 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @msp_set_source(%struct.i2c_client* %94, i32 %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = call i32 @msp_write_dsp(%struct.i2c_client* %99, i32 13, i32 6400)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = load %struct.msp3400c_init_data_dem*, %struct.msp3400c_init_data_dem** %6, align 8
  %103 = getelementptr inbounds %struct.msp3400c_init_data_dem, %struct.msp3400c_init_data_dem* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @msp_write_dsp(%struct.i2c_client* %101, i32 14, i32 %104)
  %106 = load %struct.msp_state*, %struct.msp_state** %5, align 8
  %107 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %80
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = call i32 @msp_write_dsp(%struct.i2c_client* %111, i32 16, i32 23040)
  br label %113

113:                                              ; preds = %110, %80
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp3400c_set_carrier(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_set_source(%struct.i2c_client*, i32) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
