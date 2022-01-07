; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_parse_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_parse_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_devmap = type { i32 }

@DASD_BUS_ID_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s is not a valid device range\0A\00", align 1
@DASD_FEATURE_INITIAL_ONLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%01x.%01x.%04x\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"The dasd= parameter value %s has an invalid ending\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @dasd_parse_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dasd_parse_range(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dasd_devmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %17 = load i32, i32* @DASD_BUS_ID_SIZE, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i8*, i8** %3, align 8
  store i8* %22, i8** %15, align 8
  %23 = call i32 @dasd_busid(i8** %15, i32* %6, i32* %7, i32* %5)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %15, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %15, align 8
  %37 = call i32 @dasd_busid(i8** %15, i32* %9, i32* %10, i32* %8)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %34, %26
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %46, %42
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %50, %39
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %12, align 4
  %64 = call i8* @ERR_PTR(i32 %63)
  store i8* %64, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %118

65:                                               ; preds = %57
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @dasd_feature_list(i8* %66, i8** %15)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i8* @ERR_PTR(i32 %72)
  store i8* %73, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %118

74:                                               ; preds = %65
  %75 = load i32, i32* @DASD_FEATURE_INITIAL_ONLINE, align 4
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %96, %74
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %88 = load i32, i32* %11, align 4
  %89 = call %struct.dasd_devmap* @dasd_add_busid(i8* %21, i32 %88)
  store %struct.dasd_devmap* %89, %struct.dasd_devmap** %4, align 8
  %90 = load %struct.dasd_devmap*, %struct.dasd_devmap** %4, align 8
  %91 = call i64 @IS_ERR(%struct.dasd_devmap* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load %struct.dasd_devmap*, %struct.dasd_devmap** %4, align 8
  %95 = bitcast %struct.dasd_devmap* %94 to i8*
  store i8* %95, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %118

96:                                               ; preds = %82
  br label %78

97:                                               ; preds = %78
  %98 = load i8*, i8** %15, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 44
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %118

105:                                              ; preds = %97
  %106 = load i8*, i8** %15, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i8*, i8** %15, align 8
  store i8* %111, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %118

112:                                              ; preds = %105
  %113 = load i8*, i8** %15, align 8
  %114 = call i32 @pr_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  %117 = call i8* @ERR_PTR(i32 %116)
  store i8* %117, i8** %2, align 8
  store i32 1, i32* %16, align 4
  br label %118

118:                                              ; preds = %112, %110, %102, %93, %70, %60
  %119 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i8*, i8** %2, align 8
  ret i8* %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dasd_busid(i8**, i32*, i32*, i32*) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

declare dso_local i8* @ERR_PTR(i32) #2

declare dso_local i32 @dasd_feature_list(i8*, i8**) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #2

declare dso_local %struct.dasd_devmap* @dasd_add_busid(i8*, i32) #2

declare dso_local i64 @IS_ERR(%struct.dasd_devmap*) #2

declare dso_local i32 @pr_warning(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
