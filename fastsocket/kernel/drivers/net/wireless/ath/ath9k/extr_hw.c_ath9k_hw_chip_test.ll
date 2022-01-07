; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_chip_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_chip_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR_STA_ID0 = common dso_local global i32 0, align 4
@ath9k_hw_chip_test.patternData = internal constant [4 x i32] [i32 1431655765, i32 -1431655766, i32 1717986918, i32 -1717986919], align 16
@AR_PHY_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"address test failed addr: 0x%08x - wr:0x%08x != rd:0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*)* @ath9k_hw_chip_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hw_chip_test(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %4, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %16 = load i32, i32* @AR_STA_ID0, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = getelementptr inbounds i32, i32* %15, i64 2
  br label %19

19:                                               ; preds = %19, %1
  %20 = phi i32* [ %17, %1 ], [ %21, %19 ]
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = icmp eq i32* %21, %18
  br i1 %22, label %23, label %19

23:                                               ; preds = %19
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  store i32 2, i32* %9, align 4
  %28 = load i32, i32* @AR_PHY_BASE, align 4
  %29 = add nsw i32 %28, 32
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  br label %32

31:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %27
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %116, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %119

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @REG_READ(%struct.ath_hw* %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %46
  store i32 %44, i32* %47, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %73, %37
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 256
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @REG_WRITE(%struct.ath_hw* %56, i32 %57, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @REG_READ(%struct.ath_hw* %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @ath_err(%struct.ath_common* %67, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  store i32 0, i32* %2, align 4
  br label %121

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %48

76:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %102, %76
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %105

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* @ath9k_hw_chip_test.patternData, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %11, align 4
  %85 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @REG_WRITE(%struct.ath_hw* %85, i32 %86, i32 %87)
  %89 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @REG_READ(%struct.ath_hw* %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %80
  %96 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @ath_err(%struct.ath_common* %96, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98, i32 %99)
  store i32 0, i32* %2, align 4
  br label %121

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %77

105:                                              ; preds = %77
  %106 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @REG_WRITE(%struct.ath_hw* %106, i32 %110, i32 %114)
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %33

119:                                              ; preds = %33
  %120 = call i32 @udelay(i32 100)
  store i32 1, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %95, %66
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
