; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_update_itr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_update_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i64 }

@e1000_82540 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32, i32, i32)* @e1000_update_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_update_itr(%struct.e1000_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 0
  store %struct.e1000_hw* %13, %struct.e1000_hw** %10, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %10, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_82540, align 8
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %100

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %100

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %99 [
    i32 128, label %29
    i32 129, label %44
    i32 130, label %85
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %30, %31
  %33 = icmp sgt i32 %32, 8000
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 130, i32* %9, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 5
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %39, 512
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 129, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %38, %35
  br label %43

43:                                               ; preds = %42, %34
  br label %99

44:                                               ; preds = %27
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 10000
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sdiv i32 %48, %49
  %51 = icmp sgt i32 %50, 8000
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 130, i32* %9, align 4
  br label %68

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sdiv i32 %57, %58
  %60 = icmp sgt i32 %59, 1200
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %53
  store i32 130, i32* %9, align 4
  br label %67

62:                                               ; preds = %56
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 35
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 128, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %61
  br label %68

68:                                               ; preds = %67, %52
  br label %84

69:                                               ; preds = %44
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sdiv i32 %70, %71
  %73 = icmp sgt i32 %72, 2000
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 130, i32* %9, align 4
  br label %83

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = icmp sle i32 %76, 2
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 512
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 128, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %78, %75
  br label %83

83:                                               ; preds = %82, %74
  br label %84

84:                                               ; preds = %83, %68
  br label %99

85:                                               ; preds = %27
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %86, 25000
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %89, 35
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 129, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %88
  br label %98

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 6000
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 129, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %93
  br label %98

98:                                               ; preds = %97, %92
  br label %99

99:                                               ; preds = %27, %98, %84, %43
  br label %100

100:                                              ; preds = %99, %26, %22
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
