; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_create_units.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_create_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_device = type { i32, i32* }
%struct.fw_csr_iterator = type { i64 }
%struct.fw_unit = type { %struct.TYPE_5__, %struct.TYPE_6__, i64 }
%struct.TYPE_5__ = type { i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@CSR_UNIT = common dso_local global i32 0, align 4
@CSR_DIRECTORY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to allocate memory for unit\0A\00", align 1
@fw_bus_type = common dso_local global i32 0, align 4
@fw_unit_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@fw_unit_attributes = common dso_local global i32 0, align 4
@config_rom_attributes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_device*)* @create_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_units(%struct.fw_device* %0) #0 {
  %2 = alloca %struct.fw_device*, align 8
  %3 = alloca %struct.fw_csr_iterator, align 8
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fw_device* %0, %struct.fw_device** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.fw_device*, %struct.fw_device** %2, align 8
  %9 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 5
  %12 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %3, i32* %11)
  br label %13

13:                                               ; preds = %83, %82, %28, %22, %1
  %14 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %3, i32* %5, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %86

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CSR_UNIT, align 4
  %19 = load i32, i32* @CSR_DIRECTORY, align 4
  %20 = or i32 %18, %19
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %13

23:                                               ; preds = %16
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.fw_unit* @kzalloc(i32 40, i32 %24)
  store %struct.fw_unit* %25, %struct.fw_unit** %4, align 8
  %26 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %27 = icmp eq %struct.fw_unit* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @fw_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %13

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.fw_csr_iterator, %struct.fw_csr_iterator* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = sub nsw i64 %35, 1
  %37 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %38 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %40 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32* @fw_bus_type, i32** %41, align 8
  %42 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %43 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32* @fw_unit_type, i32** %44, align 8
  %45 = load %struct.fw_device*, %struct.fw_device** %2, align 8
  %46 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %45, i32 0, i32 0
  %47 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %48 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %51 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %50, i32 0, i32 0
  %52 = load %struct.fw_device*, %struct.fw_device** %2, align 8
  %53 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %52, i32 0, i32 0
  %54 = call i32 @dev_name(i32* %53)
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = call i32 @dev_set_name(%struct.TYPE_5__* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %58 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %59 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ARRAY_SIZE(i32 %61)
  %63 = load i32, i32* @fw_unit_attributes, align 4
  %64 = call i64 @ARRAY_SIZE(i32 %63)
  %65 = load i32, i32* @config_rom_attributes, align 4
  %66 = call i64 @ARRAY_SIZE(i32 %65)
  %67 = add nsw i64 %64, %66
  %68 = icmp slt i64 %62, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUILD_BUG_ON(i32 %69)
  %71 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %72 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %71, i32 0, i32 0
  %73 = load i32, i32* @fw_unit_attributes, align 4
  %74 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %75 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %74, i32 0, i32 1
  %76 = call i32 @init_fw_attribute_group(%struct.TYPE_5__* %72, i32 %73, %struct.TYPE_6__* %75)
  %77 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %78 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %77, i32 0, i32 0
  %79 = call i64 @device_register(%struct.TYPE_5__* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %30
  br label %83

82:                                               ; preds = %30
  br label %13

83:                                               ; preds = %81
  %84 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %85 = call i32 @kfree(%struct.fw_unit* %84)
  br label %13

86:                                               ; preds = %13
  ret void
}

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i32*) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

declare dso_local %struct.fw_unit* @kzalloc(i32, i32) #1

declare dso_local i32 @fw_error(i8*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @init_fw_attribute_group(%struct.TYPE_5__*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.fw_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
