; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_push-switch.c_switch_drv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_push-switch.c_switch_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.push_switch_platform_info* }
%struct.push_switch_platform_info = type { i32, i64, i32 }
%struct.push_switch = type { %struct.platform_device*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i64 0, align 8
@dev_attr_switch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed creating device attrs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@switch_work_handler = common dso_local global i32 0, align 4
@switch_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @switch_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.push_switch_platform_info*, align 8
  %5 = alloca %struct.push_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.push_switch* @kzalloc(i32 32, i32 %8)
  store %struct.push_switch* %9, %struct.push_switch** %5, align 8
  %10 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %11 = icmp ne %struct.push_switch* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %119

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = call i32 @platform_get_irq(%struct.platform_device* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %115

30:                                               ; preds = %19
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %33, align 8
  store %struct.push_switch_platform_info* %34, %struct.push_switch_platform_info** %4, align 8
  %35 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %36 = icmp ne %struct.push_switch_platform_info* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %42 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IRQF_DISABLED, align 4
  %45 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %46 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %44, %47
  %49 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %50 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %30
  %54 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %55 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  br label %59

57:                                               ; preds = %30
  %58 = load i64, i64* @DRV_NAME, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i64 [ %56, %53 ], [ %58, %57 ]
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call i32 @request_irq(i32 %40, i32 %43, i32 %48, i64 %60, %struct.platform_device* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %115

69:                                               ; preds = %59
  %70 = load %struct.push_switch_platform_info*, %struct.push_switch_platform_info** %4, align 8
  %71 = getelementptr inbounds %struct.push_switch_platform_info, %struct.push_switch_platform_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @device_create_file(%struct.TYPE_5__* %76, i32* @dev_attr_switch)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_err(%struct.TYPE_5__* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %111

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %90 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %89, i32 0, i32 2
  %91 = load i32, i32* @switch_work_handler, align 4
  %92 = call i32 @INIT_WORK(i32* %90, i32 %91)
  %93 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %94 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %93, i32 0, i32 1
  %95 = call i32 @init_timer(%struct.TYPE_4__* %94)
  %96 = load i32, i32* @switch_timer, align 4
  %97 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %98 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 8
  %100 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %101 = ptrtoint %struct.push_switch* %100 to i64
  %102 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %103 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %107 = getelementptr inbounds %struct.push_switch, %struct.push_switch* %106, i32 0, i32 0
  store %struct.platform_device* %105, %struct.platform_device** %107, align 8
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %110 = call i32 @platform_set_drvdata(%struct.platform_device* %108, %struct.push_switch* %109)
  store i32 0, i32* %2, align 4
  br label %119

111:                                              ; preds = %81
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = call i32 @free_irq(i32 %112, %struct.platform_device* %113)
  br label %115

115:                                              ; preds = %111, %68, %27
  %116 = load %struct.push_switch*, %struct.push_switch** %5, align 8
  %117 = call i32 @kfree(%struct.push_switch* %116)
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %88, %16
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.push_switch* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i64, %struct.platform_device*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.push_switch*) #1

declare dso_local i32 @free_irq(i32, %struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.push_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
