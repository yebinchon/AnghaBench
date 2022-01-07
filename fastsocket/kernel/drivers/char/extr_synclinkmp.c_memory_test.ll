; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_memory_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_memory_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@memory_test.testval = internal global [7 x i64] [i64 0, i64 1431655765, i64 2863311530, i64 1717986918, i64 2576980377, i64 4294967295, i64 305419896], align 16
@SCA_MEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @memory_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_test(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = call i64 @ARRAY_SIZE(i64* getelementptr inbounds ([7 x i64], [7 x i64]* @memory_test.testval, i64 0, i64 0))
  store i64 %8, i64* %4, align 8
  %9 = load i32, i32* @SCA_MEM_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = udiv i64 %10, 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %7, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %33, %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds [7 x i64], [7 x i64]* @memory_test.testval, i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds [7 x i64], [7 x i64]* @memory_test.testval, i64 0, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %78

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %16

36:                                               ; preds = %16
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = mul i64 %42, 4
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %7, align 8
  br label %47

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %37

50:                                               ; preds = %37
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i64*
  store i64* %54, i64** %7, align 8
  store i64 0, i64* %5, align 8
  br label %55

55:                                               ; preds = %69, %50
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = mul i64 %62, 4
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %78

66:                                               ; preds = %59
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %7, align 8
  br label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %55

72:                                               ; preds = %55
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @SCA_MEM_SIZE, align 4
  %77 = call i32 @memset(i64 %75, i32 0, i32 %76)
  store i32 1, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %65, %31
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
