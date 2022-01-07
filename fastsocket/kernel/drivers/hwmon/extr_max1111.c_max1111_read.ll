; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1111.c_max1111_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1111.c_max1111_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max1111_data = type { i32*, i32*, i32, i32 }

@MAX1111_CTRL_SEL_SH = common dso_local global i32 0, align 4
@MAX1111_CTRL_PD0 = common dso_local global i32 0, align 4
@MAX1111_CTRL_PD1 = common dso_local global i32 0, align 4
@MAX1111_CTRL_SGL = common dso_local global i32 0, align 4
@MAX1111_CTRL_UNI = common dso_local global i32 0, align 4
@MAX1111_CTRL_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"spi_sync failed with %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @max1111_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1111_read(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max1111_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.max1111_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.max1111_data* %11, %struct.max1111_data** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX1111_CTRL_SEL_SH, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* @MAX1111_CTRL_PD0, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MAX1111_CTRL_PD1, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MAX1111_CTRL_SGL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MAX1111_CTRL_UNI, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MAX1111_CTRL_STR, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %26 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %30 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %33 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %32, i32 0, i32 2
  %34 = call i32 @spi_sync(i32 %31, i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %2
  %43 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %44 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %49 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 192
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 63
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %42
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 %64, 2
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 6
  %68 = or i32 %65, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %60, %37
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.max1111_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
