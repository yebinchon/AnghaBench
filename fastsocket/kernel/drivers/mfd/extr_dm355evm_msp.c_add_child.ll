; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_dm355evm_msp.c_add_child.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_dm355evm_msp.c_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }
%struct.i2c_client = type { %struct.device }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"can't alloc dev\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can't add platform_data\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"can't add irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"can't add %s dev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.i2c_client*, i8*, i8*, i32, i32, i32)* @add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @add_child(%struct.i2c_client* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.platform_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.resource, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call %struct.platform_device* @platform_device_alloc(i8* %17, i32 -1)
  store %struct.platform_device* %18, %struct.platform_device** %14, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %20 = icmp ne %struct.platform_device* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %6
  %22 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  br label %71

27:                                               ; preds = %6
  %28 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @device_init_wakeup(%struct.device* %29, i32 %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  store %struct.device* %33, %struct.device** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %27
  %40 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @platform_device_add_data(%struct.platform_device* %40, i8* %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %71

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 1
  %58 = load i32, i32* @IORESOURCE_IRQ, align 4
  store i32 %58, i32* %57, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %60 = call i32 @platform_device_add_resources(%struct.platform_device* %59, %struct.resource* %16, i32 1)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %71

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %70 = call i32 @platform_device_add(%struct.platform_device* %69)
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %68, %63, %46, %21
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %76 = call i32 @platform_device_put(%struct.platform_device* %75)
  %77 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %15, align 4
  %82 = call %struct.device* @ERR_PTR(i32 %81)
  store %struct.device* %82, %struct.device** %7, align 8
  br label %86

83:                                               ; preds = %71
  %84 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  store %struct.device* %85, %struct.device** %7, align 8
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.device*, %struct.device** %7, align 8
  ret %struct.device* %87
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i8*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
