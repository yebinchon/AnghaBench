; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_suspend_hi_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_suspend_hi_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mddev*, i32)* }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @suspend_hi_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @suspend_hi_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @simple_strtoull(i8* %11, i8** %8, i32 10)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.mddev*, %struct.mddev** %5, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.mddev*, %struct.mddev** %5, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp eq %struct.TYPE_2__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.mddev*, %struct.mddev** %5, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %24, align 8
  %26 = icmp eq i32 (%struct.mddev*, i32)* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %3
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %4, align 8
  br label %79

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 10
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %30
  %45 = load i64, i64* @EINVAL, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %4, align 8
  br label %79

47:                                               ; preds = %39, %34
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.mddev*, %struct.mddev** %5, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ule i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.mddev*, %struct.mddev** %5, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %58, align 8
  %60 = load %struct.mddev*, %struct.mddev** %5, align 8
  %61 = call i32 %59(%struct.mddev* %60, i32 2)
  br label %77

62:                                               ; preds = %47
  %63 = load %struct.mddev*, %struct.mddev** %5, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %66, align 8
  %68 = load %struct.mddev*, %struct.mddev** %5, align 8
  %69 = call i32 %67(%struct.mddev* %68, i32 1)
  %70 = load %struct.mddev*, %struct.mddev** %5, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %73, align 8
  %75 = load %struct.mddev*, %struct.mddev** %5, align 8
  %76 = call i32 %74(%struct.mddev* %75, i32 0)
  br label %77

77:                                               ; preds = %62, %54
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %77, %44, %27
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local i64 @simple_strtoull(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
