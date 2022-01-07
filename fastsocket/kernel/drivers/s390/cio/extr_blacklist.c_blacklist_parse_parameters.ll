; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_blacklist.c_blacklist_parse_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_blacklist.c_blacklist_parse_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@add = common dso_local global i64 0, align 8
@free = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@__MAX_CSSID = common dso_local global i32 0, align 4
@__MAX_SSID = common dso_local global i32 0, align 4
@__MAX_SUBCHANNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @blacklist_parse_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blacklist_parse_parameters(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %84, %3
  %18 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %15, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %85

20:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %16, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 33
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* @add, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @free, align 8
  store i64 %31, i64* %16, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @add, align 8
  store i64 %33, i64* %16, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %15, align 8
  br label %37

37:                                               ; preds = %34, %20
  %38 = load i8*, i8** %15, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %42 = load i32, i32* @__MAX_CSSID, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @__MAX_SSID, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @__MAX_SUBCHANNEL, align 4
  store i32 %44, i32* %12, align 4
  br label %64

45:                                               ; preds = %37
  %46 = call i8* @strsep(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @parse_busid(i8* %46, i32* %7, i32* %9, i32* %11, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %15, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @parse_busid(i8* %55, i32* %8, i32* %10, i32* %12, i32 %56)
  store i32 %57, i32* %13, align 4
  br label %62

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %45
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %16, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @blacklist_range(i64 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %67
  br label %84

81:                                               ; preds = %64
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %81, %80
  br label %17

85:                                               ; preds = %17
  %86 = load i32, i32* %14, align 4
  ret i32 %86
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_busid(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @blacklist_range(i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
