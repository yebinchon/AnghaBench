; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_interface_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_interface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_interface = type { i32 }
%struct.net_device = type { i32 }
%struct.fcoe_ctlr_device = type { i32 }
%struct.fcoe_ctlr = type { i32, i32, i32, %struct.fcoe_ctlr_device* }

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Could not get a reference to the module\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@fcoe_sysfs_templ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to add fcoe_ctlr_device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fcoe_fip_send = common dso_local global i32 0, align 4
@fcoe_update_src_mac = common dso_local global i32 0, align 4
@fcoe_get_src_mac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fcoe_interface* (%struct.net_device*, i32)* @fcoe_interface_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fcoe_interface* @fcoe_interface_create(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fcoe_ctlr_device*, align 8
  %6 = alloca %struct.fcoe_ctlr*, align 8
  %7 = alloca %struct.fcoe_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = call i32 @try_module_get(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @FCOE_NETDEV_DBG(%struct.net_device* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.fcoe_interface* @ERR_PTR(i32 %17)
  store %struct.fcoe_interface* %18, %struct.fcoe_interface** %7, align 8
  br label %71

19:                                               ; preds = %2
  store i32 28, i32* %8, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.fcoe_ctlr_device* @fcoe_ctlr_device_add(i32* %21, i32* @fcoe_sysfs_templ, i32 %22)
  store %struct.fcoe_ctlr_device* %23, %struct.fcoe_ctlr_device** %5, align 8
  %24 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %5, align 8
  %25 = icmp ne %struct.fcoe_ctlr_device* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = call i32 @FCOE_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.fcoe_interface* @ERR_PTR(i32 %29)
  store %struct.fcoe_interface* %30, %struct.fcoe_interface** %7, align 8
  br label %68

31:                                               ; preds = %19
  %32 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %5, align 8
  %33 = call %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device* %32)
  store %struct.fcoe_ctlr* %33, %struct.fcoe_ctlr** %6, align 8
  %34 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %5, align 8
  %35 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %36 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %35, i32 0, i32 3
  store %struct.fcoe_ctlr_device* %34, %struct.fcoe_ctlr_device** %36, align 8
  %37 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %38 = call %struct.fcoe_interface* @fcoe_ctlr_priv(%struct.fcoe_ctlr* %37)
  store %struct.fcoe_interface* %38, %struct.fcoe_interface** %7, align 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @dev_hold(%struct.net_device* %39)
  %41 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @fcoe_ctlr_init(%struct.fcoe_ctlr* %41, i32 %42)
  %44 = load i32, i32* @fcoe_fip_send, align 4
  %45 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %46 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @fcoe_update_src_mac, align 4
  %48 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %49 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @fcoe_get_src_mac, align 4
  %51 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %52 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.fcoe_interface*, %struct.fcoe_interface** %7, align 8
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @fcoe_interface_setup(%struct.fcoe_interface* %53, %struct.net_device* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %31
  %59 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %6, align 8
  %60 = call i32 @fcoe_ctlr_destroy(%struct.fcoe_ctlr* %59)
  %61 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %5, align 8
  %62 = call i32 @fcoe_ctlr_device_delete(%struct.fcoe_ctlr_device* %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @dev_put(%struct.net_device* %63)
  %65 = load i32, i32* %9, align 4
  %66 = call %struct.fcoe_interface* @ERR_PTR(i32 %65)
  store %struct.fcoe_interface* %66, %struct.fcoe_interface** %7, align 8
  br label %68

67:                                               ; preds = %31
  br label %71

68:                                               ; preds = %58, %26
  %69 = load i32, i32* @THIS_MODULE, align 4
  %70 = call i32 @module_put(i32 %69)
  br label %71

71:                                               ; preds = %68, %67, %13
  %72 = load %struct.fcoe_interface*, %struct.fcoe_interface** %7, align 8
  ret %struct.fcoe_interface* %72
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @FCOE_NETDEV_DBG(%struct.net_device*, i8*) #1

declare dso_local %struct.fcoe_interface* @ERR_PTR(i32) #1

declare dso_local %struct.fcoe_ctlr_device* @fcoe_ctlr_device_add(i32*, i32*, i32) #1

declare dso_local i32 @FCOE_DBG(i8*) #1

declare dso_local %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device*) #1

declare dso_local %struct.fcoe_interface* @fcoe_ctlr_priv(%struct.fcoe_ctlr*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @fcoe_ctlr_init(%struct.fcoe_ctlr*, i32) #1

declare dso_local i32 @fcoe_interface_setup(%struct.fcoe_interface*, %struct.net_device*) #1

declare dso_local i32 @fcoe_ctlr_destroy(%struct.fcoe_ctlr*) #1

declare dso_local i32 @fcoe_ctlr_device_delete(%struct.fcoe_ctlr_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
