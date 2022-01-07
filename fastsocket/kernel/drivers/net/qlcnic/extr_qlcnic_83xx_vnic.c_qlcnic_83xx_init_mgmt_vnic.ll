; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_init_mgmt_vnic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_init_mgmt_vnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_ADAPTER_INITIALIZED = common dso_local global i32 0, align 4
@qlcnic_use_msi_x = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HAL Version: %d, Management function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_init_mgmt_vnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_init_mgmt_vnic(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %5 = load i32, i32* @EIO, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = call i32 @qlcnic_83xx_get_minidump_template(%struct.qlcnic_adapter* %7)
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @QLCNIC_ADAPTER_INITIALIZED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %1
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = call i64 @qlcnic_init_pci_info(%struct.qlcnic_adapter* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %15
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = call i64 @qlcnic_83xx_set_vnic_opmode(%struct.qlcnic_adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %76

27:                                               ; preds = %21
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = call i64 @qlcnic_set_default_offload_settings(%struct.qlcnic_adapter* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %76

33:                                               ; preds = %27
  br label %41

34:                                               ; preds = %1
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = call i64 @qlcnic_reset_npar_config(%struct.qlcnic_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %76

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = call i64 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %76

47:                                               ; preds = %41
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %49 = call i32 @qlcnic_83xx_config_vnic_buff_descriptors(%struct.qlcnic_adapter* %48)
  %50 = load i32, i32* @qlcnic_use_msi_x, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @QLCNIC_ADAPTER_INITIALIZED, align 4
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %65 = call i32 @qlcnic_83xx_enable_vnic_mode(%struct.qlcnic_adapter* %64, i32 1)
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_info(i32* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %47, %45, %38, %31, %25, %19
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @qlcnic_83xx_get_minidump_template(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_init_pci_info(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_set_vnic_opmode(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_set_default_offload_settings(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_reset_npar_config(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_get_port_info(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_config_vnic_buff_descriptors(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_enable_vnic_mode(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
