; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_layout_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_layout_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mddev*)* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @layout_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @layout_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @simple_strtoul(i8* %11, i8** %8, i32 10)
  store i64 %12, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %82

29:                                               ; preds = %21, %16
  %30 = load %struct.mddev*, %struct.mddev** %5, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load %struct.mddev*, %struct.mddev** %5, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %38, align 8
  %40 = icmp eq i32 (%struct.mddev*)* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %82

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.mddev*, %struct.mddev** %5, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.mddev*, %struct.mddev** %5, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %51, align 8
  %53 = load %struct.mddev*, %struct.mddev** %5, align 8
  %54 = call i32 %52(%struct.mddev* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %44
  %58 = load %struct.mddev*, %struct.mddev** %5, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.mddev*, %struct.mddev** %5, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %82

64:                                               ; preds = %44
  br label %79

65:                                               ; preds = %29
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.mddev*, %struct.mddev** %5, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.mddev*, %struct.mddev** %5, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MaxSector, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i64, i64* %9, align 8
  %76 = load %struct.mddev*, %struct.mddev** %5, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %65
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i64, i64* %7, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %57, %41, %26
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
