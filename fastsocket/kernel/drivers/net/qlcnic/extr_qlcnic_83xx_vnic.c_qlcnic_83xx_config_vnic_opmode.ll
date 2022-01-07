; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_config_vnic_opmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_vnic.c_qlcnic_83xx_config_vnic_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_3__*, %struct.qlcnic_hardware_context*, %struct.qlcnic_nic_template* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.qlcnic_nic_template = type { i32 }

@QLC_83XX_DRV_OP_MODE = common dso_local global i32 0, align 4
@QLC_83XX_DEFAULT_OPMODE = common dso_local global i64 0, align 8
@qlcnic_83xx_idc_ready_state_entry = common dso_local global i8* null, align 8
@qlcnic_83xx_init_non_privileged_vnic = common dso_local global i32 0, align 4
@qlcnic_83xx_idc_vnic_pf_entry = common dso_local global i8* null, align 8
@qlcnic_83xx_init_privileged_vnic = common dso_local global i32 0, align 4
@qlcnic_83xx_init_mgmt_vnic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid Virtual NIC opmode\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BIT_23 = common dso_local global i32 0, align 4
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_DEV_NPAR_NON_OPER = common dso_local global i32 0, align 4
@QLCNIC_DEV_NPAR_OPER_TIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_config_vnic_opmode(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  %7 = alloca %struct.qlcnic_nic_template*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 2
  %10 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %9, align 8
  store %struct.qlcnic_hardware_context* %10, %struct.qlcnic_hardware_context** %6, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 3
  %13 = load %struct.qlcnic_nic_template*, %struct.qlcnic_nic_template** %12, align 8
  store %struct.qlcnic_nic_template* %13, %struct.qlcnic_nic_template** %7, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = call i32 @qlcnic_get_func_no(%struct.qlcnic_adapter* %14)
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 2
  %18 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %17, align 8
  %19 = load i32, i32* @QLC_83XX_DRV_OP_MODE, align 4
  %20 = call i64 @QLCRDX(%struct.qlcnic_hardware_context* %18, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @QLC_83XX_DEFAULT_OPMODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i64 130, i64* %5, align 8
  br label %31

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %28 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @QLC_83XX_GET_FUNC_PRIVILEGE(i64 %26, i32 %29)
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %25, %24
  %32 = load i64, i64* %5, align 8
  switch i64 %32, label %63 [
    i64 129, label %33
    i64 128, label %43
    i64 130, label %53
  ]

33:                                               ; preds = %31
  %34 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %35 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %34, i32 0, i32 0
  store i32 129, i32* %35, align 8
  %36 = load i8*, i8** @qlcnic_83xx_idc_ready_state_entry, align 8
  %37 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* @qlcnic_83xx_init_non_privileged_vnic, align 4
  %41 = load %struct.qlcnic_nic_template*, %struct.qlcnic_nic_template** %7, align 8
  %42 = getelementptr inbounds %struct.qlcnic_nic_template, %struct.qlcnic_nic_template* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %71

43:                                               ; preds = %31
  %44 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %44, i32 0, i32 0
  store i32 128, i32* %45, align 8
  %46 = load i8*, i8** @qlcnic_83xx_idc_vnic_pf_entry, align 8
  %47 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @qlcnic_83xx_init_privileged_vnic, align 4
  %51 = load %struct.qlcnic_nic_template*, %struct.qlcnic_nic_template** %7, align 8
  %52 = getelementptr inbounds %struct.qlcnic_nic_template, %struct.qlcnic_nic_template* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %71

53:                                               ; preds = %31
  %54 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %55 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %54, i32 0, i32 0
  store i32 130, i32* %55, align 8
  %56 = load i8*, i8** @qlcnic_83xx_idc_ready_state_entry, align 8
  %57 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %58 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  %60 = load i32, i32* @qlcnic_83xx_init_mgmt_vnic, align 4
  %61 = load %struct.qlcnic_nic_template*, %struct.qlcnic_nic_template** %7, align 8
  %62 = getelementptr inbounds %struct.qlcnic_nic_template, %struct.qlcnic_nic_template* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %71

63:                                               ; preds = %31
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %100

71:                                               ; preds = %53, %43, %33
  %72 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %73 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BIT_23, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %91

84:                                               ; preds = %71
  %85 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %78
  %92 = load i32, i32* @QLCNIC_DEV_NPAR_NON_OPER, align 4
  %93 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %94 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @QLCNIC_DEV_NPAR_OPER_TIMEO, align 4
  %97 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %98 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %91, %63
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @qlcnic_get_func_no(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i64 @QLC_83XX_GET_FUNC_PRIVILEGE(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
