; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_rebuild_device_uid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_rebuild_device_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.dasd_path, i64 }
%struct.dasd_path = type { i32 }
%struct.path_verification_work_data = type { %struct.TYPE_5__, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.dasd_eckd_private = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Read configuration data returned error %d\00", align 1
@DASD_ECKD_RCD_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.path_verification_work_data*)* @rebuild_device_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebuild_device_uid(%struct.dasd_device* %0, %struct.path_verification_work_data* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.path_verification_work_data*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  %6 = alloca %struct.dasd_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.path_verification_work_data* %1, %struct.path_verification_work_data** %4, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %15, %struct.dasd_eckd_private** %5, align 8
  %16 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %16, i32 0, i32 1
  store %struct.dasd_path* %17, %struct.dasd_path** %6, align 8
  %18 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.dasd_path, %struct.dasd_path* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  store i32 128, i32* %7, align 4
  br label %22

22:                                               ; preds = %85, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %88

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %85

31:                                               ; preds = %25
  %32 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %33 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %32, i32 0, i32 0
  %34 = call i32 @memset(%struct.TYPE_5__* %33, i32 0, i32 8)
  %35 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %36 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %35, i32 0, i32 1
  %37 = call i32 @memset(%struct.TYPE_5__* %36, i32 0, i32 8)
  %38 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %39 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %38, i32 0, i32 2
  %40 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %41 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  %43 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %44 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %45 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %44, i32 0, i32 1
  %46 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %47 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %46, i32 0, i32 0
  %48 = load i32, i32* %7, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dasd_eckd_read_conf_immediately(%struct.dasd_device* %43, %struct.TYPE_5__* %45, i32* %50, i32 %48)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %31
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %85

60:                                               ; preds = %54
  %61 = load i32, i32* @DBF_WARNING, align 4
  %62 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %63 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @DBF_EVENT_DEVID(i32 %61, i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %88

67:                                               ; preds = %31
  %68 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %69 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %4, align 8
  %72 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %71, i32 0, i32 0
  %73 = load i32, i32* @DASD_ECKD_RCD_DATA_SIZE, align 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @memcpy(i32 %70, i32* %75, i32 %73)
  %77 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %78 = call i64 @dasd_eckd_identify_conf_parts(%struct.dasd_eckd_private* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %84

83:                                               ; preds = %67
  br label %88

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %59, %30
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %22

88:                                               ; preds = %83, %60, %22
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %93 = call i32 @dasd_eckd_generate_uid(%struct.dasd_device* %92)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dasd_eckd_read_conf_immediately(%struct.dasd_device*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @dasd_eckd_identify_conf_parts(%struct.dasd_eckd_private*) #1

declare dso_local i32 @dasd_eckd_generate_uid(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
