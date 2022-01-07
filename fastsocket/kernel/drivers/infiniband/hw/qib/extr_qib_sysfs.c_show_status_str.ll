; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sysfs.c_show_status_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sysfs.c_show_status_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@qib_status_str = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, i8*)* @show_status_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_status_str(%struct.qib_pportdata* %0, i8* %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %18 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i8*, i8** %4, align 8
  store i8 0, i8* %21, align 1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %64, %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8**, i8*** @qib_status_str, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %25, %22
  %33 = phi i1 [ false, %22 ], [ %31, %25 ]
  br i1 %33, label %34, label %67

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = call i64 @strlcat(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %67

48:                                               ; preds = %41, %38
  %49 = load i8*, i8** %4, align 8
  %50 = load i8**, i8*** @qib_status_str, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = call i64 @strlcat(i8* %49, i8* %54, i64 %55)
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %67

60:                                               ; preds = %48
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %34
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %22

67:                                               ; preds = %59, %47, %32
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* @PAGE_SIZE, align 8
  %73 = call i64 @strlcat(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @strlen(i8* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %74, %13
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
