; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pca9532_data = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @pca9532_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9532_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.pca9532_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.pca9532_data* %6, %struct.pca9532_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %58, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %61

10:                                               ; preds = %7
  %11 = load %struct.pca9532_data*, %struct.pca9532_data** %3, align 8
  %12 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %57 [
    i32 128, label %19
    i32 130, label %20
    i32 129, label %37
  ]

19:                                               ; preds = %10
  br label %57

20:                                               ; preds = %10
  %21 = load %struct.pca9532_data*, %struct.pca9532_data** %3, align 8
  %22 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = call i32 @led_classdev_unregister(i32* %27)
  %29 = load %struct.pca9532_data*, %struct.pca9532_data** %3, align 8
  %30 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @cancel_work_sync(i32* %35)
  br label %57

37:                                               ; preds = %10
  %38 = load %struct.pca9532_data*, %struct.pca9532_data** %3, align 8
  %39 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.pca9532_data*, %struct.pca9532_data** %3, align 8
  %44 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @input_unregister_device(i32* %45)
  %47 = load %struct.pca9532_data*, %struct.pca9532_data** %3, align 8
  %48 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @input_free_device(i32* %49)
  %51 = load %struct.pca9532_data*, %struct.pca9532_data** %3, align 8
  %52 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %51, i32 0, i32 1
  %53 = call i32 @cancel_work_sync(i32* %52)
  %54 = load %struct.pca9532_data*, %struct.pca9532_data** %3, align 8
  %55 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %42, %37
  br label %57

57:                                               ; preds = %10, %56, %20, %19
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %7

61:                                               ; preds = %7
  %62 = load %struct.pca9532_data*, %struct.pca9532_data** %3, align 8
  %63 = call i32 @kfree(%struct.pca9532_data* %62)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %65 = call i32 @i2c_set_clientdata(%struct.i2c_client* %64, i32* null)
  ret i32 0
}

declare dso_local %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @input_unregister_device(i32*) #1

declare dso_local i32 @input_free_device(i32*) #1

declare dso_local i32 @kfree(%struct.pca9532_data*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
