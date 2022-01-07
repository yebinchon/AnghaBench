; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context*, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.qlcnic_hardware_context = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 (%struct.qlcnic_adapter*)* }

@EIO = common dso_local global i32 0, align 4
@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@qlcnic_83xx_idc_aen_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_init(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 0
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %11 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @qlcnic_sriov_vf_init(%struct.qlcnic_adapter* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %86

17:                                               ; preds = %2
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %19 = call i64 @qlcnic_83xx_check_hw_status(%struct.qlcnic_adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %17
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %30, align 8
  %32 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = call i32 @set_bit(i32 %28, i32* %33)
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %36 = call i32 @qlcnic_83xx_clear_function_resources(%struct.qlcnic_adapter* %35)
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %38 = call i32 @qlcnic_83xx_register_nic_idc_func(%struct.qlcnic_adapter* %37, i32 1)
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %40 = call i32 @qlcnic_83xx_read_flash_descriptor_table(%struct.qlcnic_adapter* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %24
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %44 = call i32 @qlcnic_83xx_read_flash_mfg_id(%struct.qlcnic_adapter* %43)
  br label %45

45:                                               ; preds = %42, %24
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %47 = call i64 @qlcnic_83xx_idc_init(%struct.qlcnic_adapter* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %86

52:                                               ; preds = %45
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %54 = call i64 @qlcnic_83xx_configure_opmode(%struct.qlcnic_adapter* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %86

59:                                               ; preds = %52
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64 (%struct.qlcnic_adapter*)*, i64 (%struct.qlcnic_adapter*)** %63, align 8
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %66 = call i64 %64(%struct.qlcnic_adapter* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %86

71:                                               ; preds = %59
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 2
  %74 = load i32, i32* @qlcnic_83xx_idc_aen_work, align 4
  %75 = call i32 @INIT_DELAYED_WORK(i32* %73, i32 %74)
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @qlcnic_83xx_idc_poll_dev_state(i32* %78)
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 0
  %82 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %81, align 8
  %83 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %71, %68, %56, %49, %21, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_vf_init(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_83xx_check_hw_status(%struct.qlcnic_adapter*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_clear_function_resources(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_register_nic_idc_func(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_read_flash_descriptor_table(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_read_flash_mfg_id(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_idc_init(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_configure_opmode(%struct.qlcnic_adapter*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @qlcnic_83xx_idc_poll_dev_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
