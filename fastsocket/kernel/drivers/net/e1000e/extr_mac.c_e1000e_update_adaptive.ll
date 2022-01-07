; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_update_adaptive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_update_adaptive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Not in Adaptive IFS mode!\0A\00", align 1
@MIN_NUM_XMITS = common dso_local global i32 0, align 4
@AIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_update_adaptive(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %86

12:                                               ; preds = %1
  %13 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %12
  %25 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MIN_NUM_XMITS, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %30
  %41 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %47 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  br label %59

51:                                               ; preds = %40
  %52 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %51, %45
  %60 = load i32, i32* @AIT, align 4
  %61 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ew32(i32 %60, i64 %63)
  br label %65

65:                                               ; preds = %59, %30
  br label %66

66:                                               ; preds = %65, %24
  br label %86

67:                                               ; preds = %12
  %68 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MIN_NUM_XMITS, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %81, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* @AIT, align 4
  %84 = call i32 @ew32(i32 %83, i64 0)
  br label %85

85:                                               ; preds = %78, %72, %67
  br label %86

86:                                               ; preds = %10, %85, %66
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
