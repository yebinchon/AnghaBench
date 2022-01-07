; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dev_set_geometry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dev_set_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32, i8*, i64 }
%struct.mapped_device = type { i32 }
%struct.hd_geometry = type { i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid geometry supplied.\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%lu %lu %lu %lu%c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to interpret geometry settings.\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Geometry exceeds range limits.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*, i64)* @dev_set_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_set_geometry(%struct.dm_ioctl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mapped_device*, align 8
  %9 = alloca %struct.hd_geometry, align 8
  %10 = alloca [4 x i64], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %16 = bitcast %struct.dm_ioctl* %15 to i8*
  %17 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %18 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %11, align 8
  %22 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %23 = call %struct.mapped_device* @find_device(%struct.dm_ioctl* %22)
  store %struct.mapped_device* %23, %struct.mapped_device** %8, align 8
  %24 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %25 = icmp ne %struct.mapped_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %99

29:                                               ; preds = %2
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %32 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ult i8* %30, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %38 = bitcast %struct.dm_ioctl* %37 to i8*
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr i8, i8* %38, i64 %39
  %41 = call i64 @invalid_str(i8* %36, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35, %29
  %44 = call i32 @DMWARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %95

45:                                               ; preds = %35
  %46 = load i8*, i8** %11, align 8
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %53 = getelementptr inbounds i64, i64* %52, i64 3
  %54 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64* %47, i64* %49, i64* %51, i64* %53, i8* %12)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 4
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = call i32 @DMWARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %95

59:                                               ; preds = %45
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %61 = load i64, i64* %60, align 16
  %62 = icmp ugt i64 %61, 65535
  br i1 %62, label %76, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ugt i64 %65, 255
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %69 = load i64, i64* %68, align 16
  %70 = icmp ugt i64 %69, 255
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ULONG_MAX, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %67, %63, %59
  %77 = call i32 @DMWARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %95

78:                                               ; preds = %71
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %80 = load i64, i64* %79, align 16
  %81 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %9, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %9, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %86 = load i64, i64* %85, align 16
  %87 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %9, i32 0, i32 2
  store i64 %86, i64* %87, align 8
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.hd_geometry, %struct.hd_geometry* %9, i32 0, i32 3
  store i64 %89, i64* %90, align 8
  %91 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %92 = call i32 @dm_set_geometry(%struct.mapped_device* %91, %struct.hd_geometry* %9)
  store i32 %92, i32* %6, align 4
  %93 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %94 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %78, %76, %57, %43
  %96 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %97 = call i32 @dm_put(%struct.mapped_device* %96)
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %26
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.mapped_device* @find_device(%struct.dm_ioctl*) #1

declare dso_local i64 @invalid_str(i8*, i8*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i64*, i64*, i8*) #1

declare dso_local i32 @dm_set_geometry(%struct.mapped_device*, %struct.hd_geometry*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
