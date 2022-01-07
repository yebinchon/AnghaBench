; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_sat.c_wf_sat_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_sat.c_wf_sat_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.device_node = type { i32 }
%struct.pmac_i2c_bus = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"smu-sat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @wf_sat_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_sat_attach(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pmac_i2c_bus*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = call %struct.pmac_i2c_bus* @pmac_i2c_adapter_to_bus(%struct.i2c_adapter* %7)
  store %struct.pmac_i2c_bus* %8, %struct.pmac_i2c_bus** %6, align 8
  %9 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %6, align 8
  %10 = icmp eq %struct.pmac_i2c_bus* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %6, align 8
  %16 = call %struct.device_node* @pmac_i2c_get_bus_node(%struct.pmac_i2c_bus* %15)
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  br label %17

17:                                               ; preds = %30, %14
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call %struct.device_node* @of_get_next_child(%struct.device_node* %18, %struct.device_node* %19)
  store %struct.device_node* %20, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i64 @of_device_is_compatible(%struct.device_node* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @wf_sat_create(%struct.i2c_adapter* %27, %struct.device_node* %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %17

31:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.pmac_i2c_bus* @pmac_i2c_adapter_to_bus(%struct.i2c_adapter*) #1

declare dso_local %struct.device_node* @pmac_i2c_get_bus_node(%struct.pmac_i2c_bus*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @wf_sat_create(%struct.i2c_adapter*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
