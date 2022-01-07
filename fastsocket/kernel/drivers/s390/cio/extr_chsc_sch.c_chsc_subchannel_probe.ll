; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_subchannel_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_subchannel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { %struct.TYPE_5__, %struct.chsc_private*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.chsc_private = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Detected chsc subchannel 0.%x.%04x\0A\00", align 1
@CHSC_SCH_ISC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to enable 0.%x.%04x: %d\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*)* @chsc_subchannel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chsc_subchannel_probe(%struct.subchannel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.chsc_private*, align 8
  %5 = alloca i32, align 4
  store %struct.subchannel* %0, %struct.subchannel** %3, align 8
  %6 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %7 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %11 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, i8*, i32, i32, ...) @CHSC_MSG(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13)
  %15 = load i32, i32* @CHSC_SCH_ISC, align 4
  %16 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.chsc_private* @kzalloc(i32 4, i32 %18)
  store %struct.chsc_private* %19, %struct.chsc_private** %4, align 8
  %20 = load %struct.chsc_private*, %struct.chsc_private** %4, align 8
  %21 = icmp ne %struct.chsc_private* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %66

25:                                               ; preds = %1
  %26 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %27 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %28 = ptrtoint %struct.subchannel* %27 to i64
  %29 = trunc i64 %28 to i32
  %30 = call i32 @cio_enable_subchannel(%struct.subchannel* %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %39 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32, i8*, i32, i32, ...) @CHSC_MSG(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %41, i32 %42)
  %44 = load %struct.chsc_private*, %struct.chsc_private** %4, align 8
  %45 = call i32 @kfree(%struct.chsc_private* %44)
  br label %64

46:                                               ; preds = %25
  %47 = load %struct.chsc_private*, %struct.chsc_private** %4, align 8
  %48 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %49 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %48, i32 0, i32 1
  store %struct.chsc_private* %47, %struct.chsc_private** %49, align 8
  %50 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %51 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %50, i32 0, i32 0
  %52 = call i64 @dev_get_uevent_suppress(%struct.TYPE_5__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %56 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %55, i32 0, i32 0
  %57 = call i32 @dev_set_uevent_suppress(%struct.TYPE_5__* %56, i32 0)
  %58 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %59 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* @KOBJ_ADD, align 4
  %62 = call i32 @kobject_uevent(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %46
  br label %64

64:                                               ; preds = %63, %33
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %22
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @CHSC_MSG(i32, i8*, i32, i32, ...) #1

declare dso_local %struct.chsc_private* @kzalloc(i32, i32) #1

declare dso_local i32 @cio_enable_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @kfree(%struct.chsc_private*) #1

declare dso_local i64 @dev_get_uevent_suppress(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_uevent_suppress(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
