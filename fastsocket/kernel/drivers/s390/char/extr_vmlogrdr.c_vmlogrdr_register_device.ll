; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmlogrdr_priv_t = type { %struct.device*, i32*, i32, i32 }
%struct.device = type { void (%struct.device*)*, i32, i32*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@iucv_bus = common dso_local global i32 0, align 4
@iucv_root = common dso_local global i32 0, align 4
@vmlogrdr_driver = common dso_local global i32 0, align 4
@kfree = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@vmlogrdr_attr_group = common dso_local global i32 0, align 4
@vmlogrdr_class = common dso_local global i32 0, align 4
@vmlogrdr_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmlogrdr_priv_t*)* @vmlogrdr_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_register_device(%struct.vmlogrdr_priv_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmlogrdr_priv_t*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.vmlogrdr_priv_t* %0, %struct.vmlogrdr_priv_t** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.device* @kzalloc(i32 40, i32 %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %13 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_set_name(%struct.device* %11, i32 %14)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 4
  store i32* @iucv_bus, i32** %17, align 8
  %18 = load i32, i32* @iucv_root, align 4
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 2
  store i32* @vmlogrdr_driver, i32** %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %25 = call i32 @dev_set_drvdata(%struct.device* %23, %struct.vmlogrdr_priv_t* %24)
  %26 = load i64, i64* @kfree, align 8
  %27 = inttoptr i64 %26 to void (%struct.device*)*
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  store void (%struct.device*)* %27, void (%struct.device*)** %29, align 8
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %88

33:                                               ; preds = %10
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @device_register(%struct.device* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @put_device(%struct.device* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %88

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 1
  %45 = call i32 @sysfs_create_group(i32* %44, i32* @vmlogrdr_attr_group)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @device_unregister(%struct.device* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %88

52:                                               ; preds = %42
  %53 = load i32, i32* @vmlogrdr_class, align 4
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* @vmlogrdr_major, align 4
  %56 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %57 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @MKDEV(i32 %55, i32 %58)
  %60 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_name(%struct.device* %61)
  %63 = call i32* @device_create(i32 %53, %struct.device* %54, i32 %59, %struct.vmlogrdr_priv_t* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %65 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %67 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = call i64 @IS_ERR(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %52
  %72 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %73 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @PTR_ERR(i32* %74)
  store i32 %75, i32* %5, align 4
  %76 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %77 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 1
  %80 = call i32 @sysfs_remove_group(i32* %79, i32* @vmlogrdr_attr_group)
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 @device_unregister(%struct.device* %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %52
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %3, align 8
  %87 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %86, i32 0, i32 0
  store %struct.device* %85, %struct.device** %87, align 8
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %71, %48, %38, %30
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.vmlogrdr_priv_t*) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32* @device_create(i32, %struct.device*, i32, %struct.vmlogrdr_priv_t*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
