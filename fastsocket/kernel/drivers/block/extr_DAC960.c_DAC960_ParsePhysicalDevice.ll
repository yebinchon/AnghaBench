; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_ParsePhysicalDevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_ParsePhysicalDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i8*)* @DAC960_ParsePhysicalDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_ParsePhysicalDevice(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %19, %4
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %7, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %72

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @simple_strtoul(i8* %28, i8** %10, i32 10)
  store i64 %29, i64* %11, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 58
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp uge i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %33, %27
  store i32 0, i32* %5, align 4
  br label %72

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @simple_strtoul(i8* %48, i8** %10, i32 10)
  store i64 %49, i64* %12, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %64, label %53

53:                                               ; preds = %45
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp uge i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %53, %45
  store i32 0, i32* %5, align 4
  br label %72

65:                                               ; preds = %58
  %66 = load i64, i64* %11, align 8
  %67 = trunc i64 %66 to i8
  %68 = load i8*, i8** %8, align 8
  store i8 %67, i8* %68, align 1
  %69 = load i64, i64* %12, align 8
  %70 = trunc i64 %69 to i8
  %71 = load i8*, i8** %9, align 8
  store i8 %70, i8* %71, align 1
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %65, %64, %44, %26
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
