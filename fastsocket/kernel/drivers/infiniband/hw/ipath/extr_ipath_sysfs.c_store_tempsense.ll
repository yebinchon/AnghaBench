; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_tempsense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_tempsense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipath_devdata = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"attempt to set invalid tempsense config\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to set tempsense config\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to set local Tcrit\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to set remote Tcrit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_tempsense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_tempsense(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipath_devdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ipath_devdata* @dev_get_drvdata(%struct.device* %13)
  store %struct.ipath_devdata* %14, %struct.ipath_devdata** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @ipath_parse_ushort(i8* %15, i32* %12)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %21 = call i32 @ipath_dev_err(%struct.ipath_devdata* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %55

22:                                               ; preds = %4
  %23 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 32639
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 128, i32 0
  %28 = call i32 @ipath_tempsense_write(%struct.ipath_devdata* %23, i32 9, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %33 = call i32 @ipath_dev_err(%struct.ipath_devdata* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %55

34:                                               ; preds = %22
  %35 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %36, 255
  %38 = call i32 @ipath_tempsense_write(%struct.ipath_devdata* %35, i32 11, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %43 = call i32 @ipath_dev_err(%struct.ipath_devdata* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %55

44:                                               ; preds = %34
  %45 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = ashr i32 %46, 8
  %48 = call i32 @ipath_tempsense_write(%struct.ipath_devdata* %45, i32 13, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %53 = call i32 @ipath_dev_err(%struct.ipath_devdata* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %55

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %51, %41, %31, %19
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local %struct.ipath_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ipath_parse_ushort(i8*, i32*) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #1

declare dso_local i32 @ipath_tempsense_write(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
