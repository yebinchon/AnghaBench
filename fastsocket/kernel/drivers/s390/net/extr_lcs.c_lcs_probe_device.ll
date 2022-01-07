; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_probe_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.TYPE_5__**, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.lcs_card = type { i64, i64, i64, i32, %struct.ccwgroup_device* }

@ENODEV = common dso_local global i32 0, align 4
@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"add_dev\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"  rc%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lcs_attr_group = common dso_local global i32 0, align 4
@lcs_irq = common dso_local global i8* null, align 8
@lcs_start_kernel_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @lcs_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_probe_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca %struct.lcs_card*, align 8
  %5 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %6 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %6, i32 0, i32 1
  %8 = call i32 @get_device(%struct.TYPE_6__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %75

13:                                               ; preds = %1
  %14 = load i32, i32* @setup, align 4
  %15 = call i32 @LCS_DBF_TEXT(i32 2, i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = call %struct.lcs_card* (...) @lcs_alloc_card()
  store %struct.lcs_card* %16, %struct.lcs_card** %4, align 8
  %17 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %18 = icmp ne %struct.lcs_card* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @setup, align 4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @LCS_DBF_TEXT_(i32 2, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %25 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %24, i32 0, i32 1
  %26 = call i32 @put_device(%struct.TYPE_6__* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %13
  %30 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @sysfs_create_group(i32* %32, i32* @lcs_attr_group)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %38 = call i32 @lcs_free_card(%struct.lcs_card* %37)
  %39 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %40 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %39, i32 0, i32 1
  %41 = call i32 @put_device(%struct.TYPE_6__* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %75

43:                                               ; preds = %29
  %44 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %45 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %44, i32 0, i32 1
  %46 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %47 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %45, %struct.lcs_card* %46)
  %48 = load i8*, i8** @lcs_irq, align 8
  %49 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %50 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %51, i64 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* %48, i8** %54, align 8
  %55 = load i8*, i8** @lcs_irq, align 8
  %56 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %57 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i8* %55, i8** %61, align 8
  %62 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %63 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %64 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %63, i32 0, i32 4
  store %struct.ccwgroup_device* %62, %struct.ccwgroup_device** %64, align 8
  %65 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %66 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %65, i32 0, i32 3
  %67 = load i32, i32* @lcs_start_kernel_thread, align 4
  %68 = call i32 @INIT_WORK(i32* %66, i32 %67)
  %69 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %70 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %72 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %74 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %43, %36, %19, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @get_device(%struct.TYPE_6__*) #1

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.lcs_card* @lcs_alloc_card(...) #1

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @lcs_free_card(%struct.lcs_card*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, %struct.lcs_card*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
