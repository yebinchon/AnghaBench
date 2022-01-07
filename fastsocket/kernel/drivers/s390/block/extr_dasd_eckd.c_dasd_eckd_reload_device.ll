; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reload_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reload_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dasd_eckd_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s.%s.%04x.%02x.%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s.%s.%04x.%02x\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"An Alias device was reassigned to a new base device with UID: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_reload_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_reload_device(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [60 x i8], align 16
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %11, %struct.dasd_eckd_private** %4, align 8
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %13 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %17 = call i32 @dasd_eckd_read_conf(%struct.dasd_device* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %93

21:                                               ; preds = %1
  %22 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %23 = call i32 @dasd_eckd_generate_uid(%struct.dasd_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %93

27:                                               ; preds = %21
  %28 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %29 = call i32 @dasd_alias_update_add_device(%struct.dasd_device* %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %32 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %30, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %27
  %37 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %38 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %45 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %46 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %50 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %54 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %58 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %62 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i32, ...) @snprintf(i8* %44, i32 60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %52, i32 %56, i32 %60, i8* %64)
  br label %85

66:                                               ; preds = %36
  %67 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %68 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %69 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %73 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %77 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %81 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i32, ...) @snprintf(i8* %67, i32 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %75, i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %66, %43
  %86 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %87 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds [60 x i8], [60 x i8]* %7, i64 0, i64 0
  %91 = call i32 @dev_info(i32* %89, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %85, %27
  store i32 0, i32* %2, align 4
  br label %94

93:                                               ; preds = %26, %20
  store i32 -1, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @dasd_eckd_read_conf(%struct.dasd_device*) #1

declare dso_local i32 @dasd_eckd_generate_uid(%struct.dasd_device*) #1

declare dso_local i32 @dasd_alias_update_add_device(%struct.dasd_device*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
