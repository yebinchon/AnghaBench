; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_print_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_print_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i64 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mono sound carrier: %d.%03d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"main sound carrier: %d.%03d MHz\0A\00", align 1
@MSP_MODE_FM_NICAM1 = common dso_local global i64 0, align 8
@MSP_MODE_FM_NICAM2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"NICAM/FM carrier  : %d.%03d MHz\0A\00", align 1
@MSP_MODE_AM_NICAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"NICAM/AM carrier  : %d.%03d MHz\0A\00", align 1
@MSP_MODE_FM_TERRA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"FM-stereo carrier : %d.%03d MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @msp3400c_print_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp3400c_print_mode(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call i32 @i2c_get_clientdata(%struct.i2c_client* %4)
  %6 = call %struct.msp_state* @to_state(i32 %5)
  store %struct.msp_state* %6, %struct.msp_state** %3, align 8
  %7 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %8 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %11 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i32, i32* @msp_debug, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %18 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 910000
  %21 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %22 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %23, 910
  %25 = srem i32 %24, 1000
  %26 = call i32 @v4l_dbg(i32 1, i32 %15, %struct.i2c_client* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25)
  br label %40

27:                                               ; preds = %1
  %28 = load i32, i32* @msp_debug, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %30 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %31 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 910000
  %34 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %35 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 910
  %38 = srem i32 %37, 1000
  %39 = call i32 @v4l_dbg(i32 1, i32 %28, %struct.i2c_client* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %38)
  br label %40

40:                                               ; preds = %27, %14
  %41 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %42 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MSP_MODE_FM_NICAM1, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %48 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MSP_MODE_FM_NICAM2, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @msp_debug, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %55 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %56 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 910000
  %59 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %60 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 910
  %63 = srem i32 %62, 1000
  %64 = call i32 @v4l_dbg(i32 1, i32 %53, %struct.i2c_client* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %52, %46
  %66 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %67 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MSP_MODE_AM_NICAM, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i32, i32* @msp_debug, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %74 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %75 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 910000
  %78 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %79 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 910
  %82 = srem i32 %81, 1000
  %83 = call i32 @v4l_dbg(i32 1, i32 %72, %struct.i2c_client* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %71, %65
  %85 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %86 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MSP_MODE_FM_TERRA, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %92 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %95 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load i32, i32* @msp_debug, align 4
  %100 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %101 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %102 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 910000
  %105 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %106 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %107, 910
  %109 = srem i32 %108, 1000
  %110 = call i32 @v4l_dbg(i32 1, i32 %99, %struct.i2c_client* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %109)
  br label %111

111:                                              ; preds = %98, %90, %84
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
