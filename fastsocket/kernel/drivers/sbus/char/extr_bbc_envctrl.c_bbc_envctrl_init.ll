; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_envctrl.c_bbc_envctrl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_bbc_envctrl.c_bbc_envctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbc_i2c_bus = type { i32 }
%struct.of_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"fan-control\00", align 1
@kenvctrld = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"kenvctrld\00", align 1
@kenvctrld_task = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bbc_envctrl_init(%struct.bbc_i2c_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bbc_i2c_bus*, align 8
  %4 = alloca %struct.of_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bbc_i2c_bus* %0, %struct.bbc_i2c_bus** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = call %struct.of_device* @bbc_i2c_getdev(%struct.bbc_i2c_bus* %10, i32 %11)
  store %struct.of_device* %13, %struct.of_device** %4, align 8
  %14 = icmp ne %struct.of_device* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %9
  %16 = load %struct.of_device*, %struct.of_device** %4, align 8
  %17 = getelementptr inbounds %struct.of_device, %struct.of_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcmp(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %25 = load %struct.of_device*, %struct.of_device** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = call i32 @attach_one_temp(%struct.bbc_i2c_bus* %24, %struct.of_device* %25, i32 %26)
  br label %29

29:                                               ; preds = %23, %15
  %30 = load %struct.of_device*, %struct.of_device** %4, align 8
  %31 = getelementptr inbounds %struct.of_device, %struct.of_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcmp(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.bbc_i2c_bus*, %struct.bbc_i2c_bus** %3, align 8
  %39 = load %struct.of_device*, %struct.of_device** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = call i32 @attach_one_fan(%struct.bbc_i2c_bus* %38, %struct.of_device* %39, i32 %40)
  br label %43

43:                                               ; preds = %37, %29
  br label %9

44:                                               ; preds = %9
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* @kenvctrld, align 4
  %52 = call i32* @kthread_run(i32 %51, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32* %52, i32** @kenvctrld_task, align 8
  %53 = load i32*, i32** @kenvctrld_task, align 8
  %54 = call i64 @IS_ERR(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** @kenvctrld_task, align 8
  %58 = call i32 @PTR_ERR(i32* %57)
  store i32 %58, i32* %8, align 4
  store i32* null, i32** @kenvctrld_task, align 8
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %47, %44
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.of_device* @bbc_i2c_getdev(%struct.bbc_i2c_bus*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @attach_one_temp(%struct.bbc_i2c_bus*, %struct.of_device*, i32) #1

declare dso_local i32 @attach_one_fan(%struct.bbc_i2c_bus*, %struct.of_device*, i32) #1

declare dso_local i32* @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
