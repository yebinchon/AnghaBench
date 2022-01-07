; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_raid_class.c_raid_component_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_raid_class.c_raid_component_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.raid_template = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.raid_component = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.raid_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@raid_component_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"component-%d\00", align 1
@raid_class = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raid_component_add(%struct.raid_template* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raid_template*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.raid_component*, align 8
  %10 = alloca %struct.raid_data*, align 8
  %11 = alloca i32, align 4
  store %struct.raid_template* %0, %struct.raid_template** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %12 = load %struct.raid_template*, %struct.raid_template** %5, align 8
  %13 = getelementptr inbounds %struct.raid_template, %struct.raid_template* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.device* @attribute_container_find_class_device(i32* %14, %struct.device* %15)
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = call %struct.raid_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.raid_data* %18, %struct.raid_data** %10, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.raid_component* @kzalloc(i32 32, i32 %19)
  store %struct.raid_component* %20, %struct.raid_component** %9, align 8
  %21 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %22 = icmp ne %struct.raid_component* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %83

26:                                               ; preds = %3
  %27 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %28 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %31 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %30, i32 0, i32 1
  %32 = call i32 @device_initialize(%struct.TYPE_8__* %31)
  %33 = load i32, i32* @raid_component_release, align 4
  %34 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %35 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = call i32 @get_device(%struct.device* %37)
  %39 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %40 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.raid_data*, %struct.raid_data** %10, align 8
  %43 = getelementptr inbounds %struct.raid_data, %struct.raid_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = sext i32 %44 to i64
  %47 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %48 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %50 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %49, i32 0, i32 1
  %51 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %52 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dev_set_name(%struct.TYPE_8__* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %56 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %55, i32 0, i32 0
  %57 = load %struct.raid_data*, %struct.raid_data** %10, align 8
  %58 = getelementptr inbounds %struct.raid_data, %struct.raid_data* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %61 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @raid_class, i32 0, i32 0), i32** %62, align 8
  %63 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %64 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %63, i32 0, i32 1
  %65 = call i32 @device_add(%struct.TYPE_8__* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %26
  br label %70

69:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %83

70:                                               ; preds = %68
  %71 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %72 = getelementptr inbounds %struct.raid_component, %struct.raid_component* %71, i32 0, i32 0
  %73 = call i32 @list_del(i32* %72)
  %74 = load %struct.raid_data*, %struct.raid_data** %10, align 8
  %75 = getelementptr inbounds %struct.raid_data, %struct.raid_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = call i32 @put_device(%struct.device* %78)
  %80 = load %struct.raid_component*, %struct.raid_component** %9, align 8
  %81 = call i32 @kfree(%struct.raid_component* %80)
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %70, %69, %23
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.device* @attribute_container_find_class_device(i32*, %struct.device*) #1

declare dso_local %struct.raid_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.raid_component* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_8__*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.raid_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
