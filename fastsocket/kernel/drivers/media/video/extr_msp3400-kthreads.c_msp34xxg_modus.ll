; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp34xxg_modus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp34xxg_modus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i64 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"selected radio modus\0A\00", align 1
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"selected M (EIA-J) modus\0A\00", align 1
@V4L2_STD_NTSC_M_KR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"selected M (A2) modus\0A\00", align 1
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"selected SECAM-L modus\0A\00", align 1
@V4L2_STD_MN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"selected M (BTSC) modus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @msp34xxg_modus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp34xxg_modus(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.msp_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = call i32 @i2c_get_clientdata(%struct.i2c_client* %5)
  %7 = call %struct.msp_state* @to_state(i32 %6)
  store %struct.msp_state* %7, %struct.msp_state** %4, align 8
  %8 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %9 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @msp_debug, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = call i32 @v4l_dbg(i32 1, i32 %13, %struct.i2c_client* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %18 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @msp_debug, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = call i32 @v4l_dbg(i32 1, i32 %23, %struct.i2c_client* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 16385, i32* %2, align 4
  br label %58

26:                                               ; preds = %16
  %27 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %28 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @V4L2_STD_NTSC_M_KR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @msp_debug, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = call i32 @v4l_dbg(i32 1, i32 %33, %struct.i2c_client* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %58

36:                                               ; preds = %26
  %37 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %38 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @msp_debug, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = call i32 @v4l_dbg(i32 1, i32 %43, %struct.i2c_client* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 24577, i32* %2, align 4
  br label %58

46:                                               ; preds = %36
  %47 = load %struct.msp_state*, %struct.msp_state** %4, align 8
  %48 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @V4L2_STD_MN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @msp_debug, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %56 = call i32 @v4l_dbg(i32 1, i32 %54, %struct.i2c_client* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 8193, i32* %2, align 4
  br label %58

57:                                               ; preds = %46
  store i32 28673, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %53, %42, %32, %22, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
