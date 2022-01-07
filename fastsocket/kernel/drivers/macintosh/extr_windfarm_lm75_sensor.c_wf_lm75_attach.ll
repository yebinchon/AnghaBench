; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.device_node = type { i32 }
%struct.pmac_i2c_bus = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"wf_lm75: adapter %s detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"wf_lm75: bus found, looking for device...\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"hwsensor-location\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"lm75\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ds1775\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @wf_lm75_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_lm75_attach(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pmac_i2c_bus*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %14 = call %struct.pmac_i2c_bus* @pmac_i2c_adapter_to_bus(%struct.i2c_adapter* %13)
  store %struct.pmac_i2c_bus* %14, %struct.pmac_i2c_bus** %6, align 8
  %15 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %6, align 8
  %16 = icmp eq %struct.pmac_i2c_bus* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %6, align 8
  %22 = call %struct.device_node* @pmac_i2c_get_bus_node(%struct.pmac_i2c_bus* %21)
  store %struct.device_node* %22, %struct.device_node** %4, align 8
  %23 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* null, %struct.device_node** %5, align 8
  br label %24

24:                                               ; preds = %65, %45, %36, %20
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call %struct.device_node* @of_get_next_child(%struct.device_node* %25, %struct.device_node* %26)
  store %struct.device_node* %27, %struct.device_node** %5, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %24
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call i8* @of_get_property(%struct.device_node* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %31, i8** %7, align 8
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %34 = call i32 @pmac_i2c_match_adapter(%struct.device_node* %32, %struct.i2c_adapter* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %24

37:                                               ; preds = %29
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i64 @pmac_i2c_get_dev_addr(%struct.device_node* %38)
  store i64 %39, i64* %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %37
  br label %24

46:                                               ; preds = %42
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = call i64 @of_device_is_compatible(%struct.device_node* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @wf_lm75_create(%struct.i2c_adapter* %51, i64 %52, i32 0, i8* %53)
  br label %65

55:                                               ; preds = %46
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = call i64 @of_device_is_compatible(%struct.device_node* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @wf_lm75_create(%struct.i2c_adapter* %60, i64 %61, i32 1, i8* %62)
  br label %64

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64, %50
  br label %24

66:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %17
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local %struct.pmac_i2c_bus* @pmac_i2c_adapter_to_bus(%struct.i2c_adapter*) #1

declare dso_local %struct.device_node* @pmac_i2c_get_bus_node(%struct.pmac_i2c_bus*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pmac_i2c_match_adapter(%struct.device_node*, %struct.i2c_adapter*) #1

declare dso_local i64 @pmac_i2c_get_dev_addr(%struct.device_node*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @wf_lm75_create(%struct.i2c_adapter*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
