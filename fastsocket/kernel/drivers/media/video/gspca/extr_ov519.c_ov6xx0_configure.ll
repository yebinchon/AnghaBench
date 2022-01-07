; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov6xx0_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov6xx0_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i8* }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"starting OV6xx0 configuration\00", align 1
@OV7610_REG_COM_I = common dso_local global i32 0, align 4
@D_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error detecting sensor type\00", align 1
@SEN_OV6630 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"WARNING: Sensor is an OV66308. Your camera may have\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"been misdetected in previous driver versions.\00", align 1
@SEN_OV6620 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Sensor is an OV6620\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Sensor is an OV66308AE\00", align 1
@SEN_OV66308AF = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Sensor is an OV66308AF\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"WARNING: Sensor is an OV66307. Your camera may have\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"FATAL: Unknown sensor version: 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov6xx0_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov6xx0_configure(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load i32, i32* @D_PROBE, align 4
  %5 = call i32 @PDEBUG(i32 %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = load i32, i32* @OV7610_REG_COM_I, align 4
  %8 = call i32 @i2c_r(%struct.sd* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @D_ERR, align 4
  %13 = call i32 @PDEBUG(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %52

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %46 [
    i32 0, label %16
    i32 1, label %22
    i32 2, label %28
    i32 3, label %34
    i32 144, label %40
  ]

16:                                               ; preds = %14
  %17 = load i8*, i8** @SEN_OV6630, align 8
  %18 = load %struct.sd*, %struct.sd** %2, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = call i32 @warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %49

22:                                               ; preds = %14
  %23 = load i8*, i8** @SEN_OV6620, align 8
  %24 = load %struct.sd*, %struct.sd** %2, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @D_PROBE, align 4
  %27 = call i32 @PDEBUG(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %49

28:                                               ; preds = %14
  %29 = load i8*, i8** @SEN_OV6630, align 8
  %30 = load %struct.sd*, %struct.sd** %2, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @D_PROBE, align 4
  %33 = call i32 @PDEBUG(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %49

34:                                               ; preds = %14
  %35 = load i8*, i8** @SEN_OV66308AF, align 8
  %36 = load %struct.sd*, %struct.sd** %2, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @D_PROBE, align 4
  %39 = call i32 @PDEBUG(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %49

40:                                               ; preds = %14
  %41 = load i8*, i8** @SEN_OV6630, align 8
  %42 = load %struct.sd*, %struct.sd** %2, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = call i32 @warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %45 = call i32 @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %49

46:                                               ; preds = %14
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %47)
  br label %52

49:                                               ; preds = %40, %34, %28, %22, %16
  %50 = load %struct.sd*, %struct.sd** %2, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %46, %11
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @i2c_r(%struct.sd*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
