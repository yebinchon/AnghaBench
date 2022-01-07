; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_find_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_find_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@subQCIF = common dso_local global i32 0, align 4
@VGA = common dso_local global i32 0, align 4
@tcm825x_sizes = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"format default VGA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*, i32, i32)* @tcm825x_find_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm825x_find_size(%struct.v4l2_int_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_int_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tcm825x_sensor*, align 8
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = mul i32 %11, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  %15 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %15, i32 0, i32 0
  %17 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %16, align 8
  store %struct.tcm825x_sensor* %17, %struct.tcm825x_sensor** %10, align 8
  %18 = load i32, i32* @subQCIF, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %50, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @VGA, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcm825x_sizes, align 8
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcm825x_sizes, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %30, %37
  %39 = load i64, i64* %9, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %23
  %42 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %10, align 8
  %43 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %60

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %10, align 8
  %55 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @VGA, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %41
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
