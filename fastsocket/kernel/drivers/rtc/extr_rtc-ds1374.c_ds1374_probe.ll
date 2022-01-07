; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1374.c_ds1374_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1374.c_ds1374_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ds1374 = type { i32, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ds1374_work = common dso_local global i32 0, align 4
@ds1374_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ds1374\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@ds1374_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to register the class device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ds1374_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1374_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ds1374*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ds1374* @kzalloc(i32 24, i32 %8)
  store %struct.ds1374* %9, %struct.ds1374** %6, align 8
  %10 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %11 = icmp ne %struct.ds1374* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %18 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %17, i32 0, i32 3
  store %struct.i2c_client* %16, %struct.i2c_client** %18, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.ds1374* %20)
  %22 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %23 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %22, i32 0, i32 2
  %24 = load i32, i32* @ds1374_work, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %27 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %26, i32 0, i32 1
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @ds1374_check_rtc_status(%struct.i2c_client* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %89

34:                                               ; preds = %15
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @ds1374_irq, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = call i32 @request_irq(i64 %42, i32 %43, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.i2c_client* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 1
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %89

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load i32, i32* @THIS_MODULE, align 4
  %60 = call i32 @rtc_device_register(i32 %56, i32* %58, i32* @ds1374_rtc_ops, i32 %59)
  %61 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %62 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %64 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %53
  %69 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %70 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %77

76:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %95

77:                                               ; preds = %68
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = call i32 @free_irq(i64 %85, %struct.i2c_client* %86)
  br label %88

88:                                               ; preds = %82, %77
  br label %89

89:                                               ; preds = %88, %48, %33
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = call i32 @i2c_set_clientdata(%struct.i2c_client* %90, %struct.ds1374* null)
  %92 = load %struct.ds1374*, %struct.ds1374** %6, align 8
  %93 = call i32 @kfree(%struct.ds1374* %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %76, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.ds1374* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ds1374*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ds1374_check_rtc_status(%struct.i2c_client*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rtc_device_register(i32, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @free_irq(i64, %struct.i2c_client*) #1

declare dso_local i32 @kfree(%struct.ds1374*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
