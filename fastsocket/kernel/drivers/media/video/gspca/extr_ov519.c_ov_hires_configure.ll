; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov_hires_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov_hires_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i64, i32 }

@BRIDGE_OVFX2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"error hires sensors only supported with ovfx2\00", align 1
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"starting ov hires configuration\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Sensor is an OV2610\00", align 1
@SEN_OV2610 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Sensor is an OV3610\00", align 1
@SEN_OV3610 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Error unknown sensor type: %02x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov_hires_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov_hires_configure(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %5 = load %struct.sd*, %struct.sd** %2, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BRIDGE_OVFX2, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %48

12:                                               ; preds = %1
  %13 = load i32, i32* @D_PROBE, align 4
  %14 = call i32 @PDEBUG(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.sd*, %struct.sd** %2, align 8
  %16 = call i32 @i2c_r(%struct.sd* %15, i32 10)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.sd*, %struct.sd** %2, align 8
  %18 = call i32 @i2c_r(%struct.sd* %17, i32 11)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 150
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* @D_PROBE, align 4
  %26 = call i32 @PDEBUG(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @SEN_OV2610, align 4
  %28 = load %struct.sd*, %struct.sd** %2, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %48

30:                                               ; preds = %21, %12
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 54
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @D_PROBE, align 4
  %39 = call i32 @PDEBUG(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @SEN_OV3610, align 4
  %41 = load %struct.sd*, %struct.sd** %2, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %47

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %37
  br label %48

48:                                               ; preds = %10, %47, %24
  ret void
}

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @i2c_r(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
