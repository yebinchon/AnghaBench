; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_add_numbered_child.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-core.c_add_numbered_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device* }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32, i32 }

@twl4030_modules = common dso_local global %struct.twl4030_client* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"can't alloc dev\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can't add platform_data\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"can't add irqs\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"can't add %s dev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (i32, i8*, i32, i8*, i32, i32, i32, i32)* @add_numbered_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @add_numbered_child(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.platform_device*, align 8
  %19 = alloca %struct.twl4030_client*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [2 x %struct.resource], align 16
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.twl4030_client*, %struct.twl4030_client** @twl4030_modules, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %22, i64 %24
  store %struct.twl4030_client* %25, %struct.twl4030_client** %19, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.platform_device* @platform_device_alloc(i8* %26, i32 %27)
  store %struct.platform_device* %28, %struct.platform_device** %18, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %30 = icmp ne %struct.platform_device* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %8
  %32 = load %struct.twl4030_client*, %struct.twl4030_client** %19, align 8
  %33 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(%struct.device* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %20, align 4
  br label %96

39:                                               ; preds = %8
  %40 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @device_init_wakeup(%struct.device* %41, i32 %42)
  %44 = load %struct.twl4030_client*, %struct.twl4030_client** %19, align 8
  %45 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  store %struct.device* %47, %struct.device** %50, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %39
  %54 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @platform_device_add_data(%struct.platform_device* %54, i8* %55, i32 %56)
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %96

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %21, i64 0, i64 0
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %70, align 8
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 1
  %73 = load i32, i32* @IORESOURCE_IRQ, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %69, i64 1
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i32, i32* %17, align 4
  store i32 %76, i32* %75, align 8
  %77 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 1
  %78 = load i32, i32* @IORESOURCE_IRQ, align 4
  store i32 %78, i32* %77, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %80 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %21, i64 0, i64 0
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 2, i32 1
  %85 = call i32 @platform_device_add_resources(%struct.platform_device* %79, %struct.resource* %80, i32 %84)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %68
  %89 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %96

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92, %65
  %94 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %95 = call i32 @platform_device_add(%struct.platform_device* %94)
  store i32 %95, i32* %20, align 4
  br label %96

96:                                               ; preds = %93, %88, %60, %31
  %97 = load i32, i32* %20, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %101 = call i32 @platform_device_put(%struct.platform_device* %100)
  %102 = load %struct.twl4030_client*, %struct.twl4030_client** %19, align 8
  %103 = getelementptr inbounds %struct.twl4030_client, %struct.twl4030_client* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* %20, align 4
  %109 = call %struct.device* @ERR_PTR(i32 %108)
  store %struct.device* %109, %struct.device** %9, align 8
  br label %113

110:                                              ; preds = %96
  %111 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  store %struct.device* %112, %struct.device** %9, align 8
  br label %113

113:                                              ; preds = %110, %99
  %114 = load %struct.device*, %struct.device** %9, align 8
  ret %struct.device* %114
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
