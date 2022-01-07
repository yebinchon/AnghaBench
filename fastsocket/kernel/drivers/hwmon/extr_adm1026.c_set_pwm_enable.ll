; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_set_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_set_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1026_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CFG1_PWM_AFC = common dso_local global i32 0, align 4
@ADM1026_REG_CONFIG1 = common dso_local global i32 0, align 4
@ADM1026_REG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.adm1026_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %16 = call %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.adm1026_data* %16, %struct.adm1026_data** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @simple_strtol(i8* %17, i32* null, i32 10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %105

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %105

24:                                               ; preds = %21
  %25 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %26 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %29 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %34 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %37 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CFG1_PWM_AFC, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %46

44:                                               ; preds = %24
  %45 = load i32, i32* @CFG1_PWM_AFC, align 4
  br label %47

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = or i32 %41, %48
  %50 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %51 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %53 = load i32, i32* @ADM1026_REG_CONFIG1, align 4
  %54 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %55 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @adm1026_write_value(%struct.i2c_client* %52, i32 %53, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %83

60:                                               ; preds = %47
  %61 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %62 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 15
  %66 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %67 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PWM_MIN_TO_REG(i32 %69)
  %71 = or i32 %65, %70
  %72 = call i32 @PWM_TO_REG(i32 %71)
  %73 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %74 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %77 = load i32, i32* @ADM1026_REG_PWM, align 4
  %78 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %79 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @adm1026_write_value(%struct.i2c_client* %76, i32 %77, i32 %81)
  br label %101

83:                                               ; preds = %47
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %100, label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %91 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32 255, i32* %92, align 4
  %93 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %94 = load i32, i32* @ADM1026_REG_PWM, align 4
  %95 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %96 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @adm1026_write_value(%struct.i2c_client* %93, i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %89, %86
  br label %101

101:                                              ; preds = %100, %60
  %102 = load %struct.adm1026_data*, %struct.adm1026_data** %10, align 8
  %103 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  br label %105

105:                                              ; preds = %101, %21, %4
  %106 = load i64, i64* %8, align 8
  ret i64 %106
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @PWM_TO_REG(i32) #1

declare dso_local i32 @PWM_MIN_TO_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
