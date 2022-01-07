; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipath_devdata = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"attempt to use non-numeric on enable\0A\00", align 1
@IPATH_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Enabling unit %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to enable unit %d\0A\00", align 1
@IPATH_STATUS_ADMIN_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Disabling unit %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_enabled(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipath_devdata*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.ipath_devdata* @dev_get_drvdata(%struct.device* %12)
  store %struct.ipath_devdata* %13, %struct.ipath_devdata** %9, align 8
  store i64 0, i64* %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @ipath_parse_ushort(i8* %14, i64* %11)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %20 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %91

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %21
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IPATH_DISABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %91

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %35 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_info(%struct.device* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %39 = call i64 @ipath_init_chip(%struct.ipath_devdata* %38, i32 1)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %45 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %62

48:                                               ; preds = %32
  %49 = load i32, i32* @IPATH_DISABLED, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %52 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* @IPATH_STATUS_ADMIN_DISABLED, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %58 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %48, %42
  br label %90

63:                                               ; preds = %21
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %65 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IPATH_DISABLED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %63
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %73 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_info(%struct.device* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %77 = call i32 @ipath_shutdown_device(%struct.ipath_devdata* %76)
  %78 = load i32, i32* @IPATH_DISABLED, align 4
  %79 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %80 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load i32, i32* @IPATH_STATUS_ADMIN_DISABLED, align 4
  %84 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %85 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %70, %63
  br label %90

90:                                               ; preds = %89, %62
  br label %91

91:                                               ; preds = %90, %31, %18
  %92 = load i64, i64* %10, align 8
  ret i64 %92
}

declare dso_local %struct.ipath_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @ipath_parse_ushort(i8*, i64*) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i64 @ipath_init_chip(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_shutdown_device(%struct.ipath_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
