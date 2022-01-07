; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_show_status_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_show_status_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipath_devdata = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ipath_status_str = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_status_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_status_str(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipath_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.ipath_devdata* @dev_get_drvdata(%struct.device* %12)
  store %struct.ipath_devdata* %13, %struct.ipath_devdata** %7, align 8
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %15 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %7, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** %6, align 8
  store i8 0, i8* %26, align 1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %69, %21
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i8**, i8*** @ipath_status_str, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br label %37

37:                                               ; preds = %30, %27
  %38 = phi i1 [ false, %27 ], [ %36, %30 ]
  br i1 %38, label %39, label %72

39:                                               ; preds = %37
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = call i64 @strlcat(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %72

53:                                               ; preds = %46, %43
  %54 = load i8*, i8** %6, align 8
  %55 = load i8**, i8*** @ipath_status_str, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = call i64 @strlcat(i8* %54, i8* %59, i64 %60)
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %72

65:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %10, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %27

72:                                               ; preds = %64, %52, %37
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = call i64 @strlcat(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @strlen(i8* %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %79, %18
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local %struct.ipath_devdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
