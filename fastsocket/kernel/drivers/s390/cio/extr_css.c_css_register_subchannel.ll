; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_register_subchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_register_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@channel_subsystems = common dso_local global %struct.TYPE_6__** null, align 8
@css_bus_type = common dso_local global i32 0, align 4
@css_subchannel_release = common dso_local global i32 0, align 4
@default_subch_attr_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Could not register sch 0.%x.%04x: %d\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @css_register_subchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_register_subchannel(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %5 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @channel_subsystems, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %5, i64 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %10 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32* %8, i32** %11, align 8
  %12 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %13 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32* @css_bus_type, i32** %14, align 8
  %15 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %16 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32* @css_subchannel_release, i32** %17, align 8
  %18 = load i32, i32* @default_subch_attr_groups, align 4
  %19 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %20 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 0
  %24 = call i32 @dev_set_uevent_suppress(%struct.TYPE_5__* %23, i32 1)
  %25 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %26 = call i32 @css_update_ssd_info(%struct.subchannel* %25)
  %27 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %28 = call i32 @css_sch_device_register(%struct.subchannel* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %1
  %32 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %33 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %37 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %59

43:                                               ; preds = %1
  %44 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %45 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %50 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %49, i32 0, i32 0
  %51 = call i32 @dev_set_uevent_suppress(%struct.TYPE_5__* %50, i32 0)
  %52 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %53 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* @KOBJ_ADD, align 4
  %56 = call i32 @kobject_uevent(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %43
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %31
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @dev_set_uevent_suppress(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @css_update_ssd_info(%struct.subchannel*) #1

declare dso_local i32 @css_sch_device_register(%struct.subchannel*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
