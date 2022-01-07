; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_guid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_store_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipath_devdata = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"%hx:%hx:%hx:%hx:%hx:%hx:%hx:%hx\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"attempt to set invalid GUID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_guid(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ipath_devdata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [8 x i16], align 16
  %12 = alloca i64, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.ipath_devdata* @dev_get_drvdata(%struct.device* %15)
  store %struct.ipath_devdata* %16, %struct.ipath_devdata** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 0
  %19 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 1
  %20 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 2
  %21 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 3
  %22 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 4
  %23 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 5
  %24 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 6
  %25 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 7
  %26 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i16* %18, i16* %19, i16* %20, i16* %21, i16* %22, i16* %23, i16* %24, i16* %25)
  %27 = icmp ne i32 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %78

29:                                               ; preds = %4
  %30 = bitcast i64* %12 to i16*
  store i16* %30, i16** %13, align 8
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %51, %29
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp sgt i32 %39, 255
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %78

42:                                               ; preds = %34
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i16], [8 x i16]* %11, i64 0, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = load i16*, i16** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i16, i16* %47, i64 %49
  store i16 %46, i16* %50, align 2
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load i64, i64* %12, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %78

58:                                               ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %61 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %63 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %65 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = icmp ne %struct.TYPE_4__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %58
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %71 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i64 %69, i64* %74, align 8
  br label %75

75:                                               ; preds = %68, %58
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @strlen(i8* %76)
  store i32 %77, i32* %10, align 4
  br label %83

78:                                               ; preds = %57, %41, %28
  %79 = load %struct.ipath_devdata*, %struct.ipath_devdata** %9, align 8
  %80 = call i32 @ipath_dev_err(%struct.ipath_devdata* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local %struct.ipath_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
