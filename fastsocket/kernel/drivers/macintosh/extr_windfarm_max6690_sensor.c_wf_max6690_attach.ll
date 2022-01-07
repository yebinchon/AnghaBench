; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_max6690_sensor.c_wf_max6690_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_max6690_sensor.c_wf_max6690_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.device_node = type { i32 }
%struct.pmac_i2c_bus = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"max6690\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"hwsensor-location\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"found max6690, loc=%s addr=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @wf_max6690_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_max6690_attach(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pmac_i2c_bus*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %10 = call %struct.pmac_i2c_bus* @pmac_i2c_adapter_to_bus(%struct.i2c_adapter* %9)
  store %struct.pmac_i2c_bus* %10, %struct.pmac_i2c_bus** %6, align 8
  %11 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %6, align 8
  %12 = icmp eq %struct.pmac_i2c_bus* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %6, align 8
  %18 = call %struct.device_node* @pmac_i2c_get_bus_node(%struct.pmac_i2c_bus* %17)
  store %struct.device_node* %18, %struct.device_node** %4, align 8
  br label %19

19:                                               ; preds = %46, %45, %34, %29, %16
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call %struct.device_node* @of_get_next_child(%struct.device_node* %20, %struct.device_node* %21)
  store %struct.device_node* %22, %struct.device_node** %5, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %27 = call i32 @pmac_i2c_match_adapter(%struct.device_node* %25, %struct.i2c_adapter* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %19

30:                                               ; preds = %24
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = call i32 @of_device_is_compatible(%struct.device_node* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %19

35:                                               ; preds = %30
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i64 @pmac_i2c_get_dev_addr(%struct.device_node* %36)
  store i64 %37, i64* %8, align 8
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i8* @of_get_property(%struct.device_node* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %35
  br label %19

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %47, i64 %48)
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @wf_max6690_create(%struct.i2c_adapter* %50, i64 %51, i8* %52)
  br label %19

54:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.pmac_i2c_bus* @pmac_i2c_adapter_to_bus(%struct.i2c_adapter*) #1

declare dso_local %struct.device_node* @pmac_i2c_get_bus_node(%struct.pmac_i2c_bus*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @pmac_i2c_match_adapter(%struct.device_node*, %struct.i2c_adapter*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @pmac_i2c_get_dev_addr(%struct.device_node*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @printk(i8*, i8*, i64) #1

declare dso_local i32 @wf_max6690_create(%struct.i2c_adapter*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
