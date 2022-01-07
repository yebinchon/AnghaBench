; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_update_adaptive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_update_adaptive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"e1000_update_adaptive\00", align 1
@MIN_NUM_XMITS = common dso_local global i32 0, align 4
@AIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Not in Adaptive IFS mode!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_update_adaptive(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %83

8:                                                ; preds = %1
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MIN_NUM_XMITS, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %20
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 3
  store i32 1, i32* %28, align 4
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %26
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 4
  store i64 %44, i64* %46, align 8
  br label %55

47:                                               ; preds = %36
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %47, %41
  %56 = load i32, i32* @AIT, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ew32(i32 %56, i64 %59)
  br label %61

61:                                               ; preds = %55, %26
  br label %62

62:                                               ; preds = %61, %20
  br label %82

63:                                               ; preds = %8
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MIN_NUM_XMITS, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* @AIT, align 4
  %80 = call i32 @ew32(i32 %79, i64 0)
  br label %81

81:                                               ; preds = %74, %68, %63
  br label %82

82:                                               ; preds = %81, %62
  br label %85

83:                                               ; preds = %1
  %84 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %82
  ret void
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
