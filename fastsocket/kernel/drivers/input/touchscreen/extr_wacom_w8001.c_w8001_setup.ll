; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001 = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.w8001_coord = type { i32, i32, i32, i32, i32 }

@W8001_CMD_QUERY = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@W8001_CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w8001*)* @w8001_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w8001_setup(%struct.w8001* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w8001*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.w8001_coord, align 4
  %6 = alloca i32, align 4
  store %struct.w8001* %0, %struct.w8001** %3, align 8
  %7 = load %struct.w8001*, %struct.w8001** %3, align 8
  %8 = getelementptr inbounds %struct.w8001, %struct.w8001* %7, i32 0, i32 1
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %4, align 8
  %10 = load %struct.w8001*, %struct.w8001** %3, align 8
  %11 = load i32, i32* @W8001_CMD_QUERY, align 4
  %12 = call i32 @w8001_command(%struct.w8001* %10, i32 %11, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.w8001*, %struct.w8001** %3, align 8
  %19 = getelementptr inbounds %struct.w8001, %struct.w8001* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @parse_data(i32 %20, %struct.w8001_coord* %5)
  %22 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %23 = load i32, i32* @ABS_X, align 4
  %24 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %5, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @input_set_abs_params(%struct.input_dev* %22, i32 %23, i32 0, i32 %25, i32 0, i32 0)
  %27 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %28 = load i32, i32* @ABS_Y, align 4
  %29 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %5, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @input_set_abs_params(%struct.input_dev* %27, i32 %28, i32 0, i32 %30, i32 0, i32 0)
  %32 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %33 = load i32, i32* @ABS_PRESSURE, align 4
  %34 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @input_set_abs_params(%struct.input_dev* %32, i32 %33, i32 0, i32 %35, i32 0, i32 0)
  %37 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %38 = load i32, i32* @ABS_TILT_X, align 4
  %39 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @input_set_abs_params(%struct.input_dev* %37, i32 %38, i32 0, i32 %40, i32 0, i32 0)
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = load i32, i32* @ABS_TILT_Y, align 4
  %44 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @input_set_abs_params(%struct.input_dev* %42, i32 %43, i32 0, i32 %45, i32 0, i32 0)
  %47 = load %struct.w8001*, %struct.w8001** %3, align 8
  %48 = load i32, i32* @W8001_CMD_START, align 4
  %49 = call i32 @w8001_command(%struct.w8001* %47, i32 %48, i32 0)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %17, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @w8001_command(%struct.w8001*, i32, i32) #1

declare dso_local i32 @parse_data(i32, %struct.w8001_coord*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
