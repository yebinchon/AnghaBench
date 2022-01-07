; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_tmp401_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_tmp401_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.tmp401_data = type { i64, i64 }

@tmp401_attr = common dso_local global %struct.TYPE_4__* null, align 8
@tmp411 = common dso_local global i64 0, align 8
@tmp411_attr = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tmp401_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp401_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.tmp401_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.tmp401_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.tmp401_data* %6, %struct.tmp401_data** %3, align 8
  %7 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %8 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %13 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @hwmon_device_unregister(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tmp401_attr, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tmp401_attr, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @device_remove_file(i32* %24, i32* %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %36 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @tmp411, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tmp411_attr, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tmp411_attr, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @device_remove_file(i32* %48, i32* %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %41

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.tmp401_data*, %struct.tmp401_data** %3, align 8
  %61 = call i32 @kfree(%struct.tmp401_data* %60)
  ret i32 0
}

declare dso_local %struct.tmp401_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @hwmon_device_unregister(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.tmp401_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
