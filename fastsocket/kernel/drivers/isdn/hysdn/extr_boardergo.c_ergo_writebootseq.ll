; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_boardergo.c_ergo_writebootseq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_boardergo.c_ergo_writebootseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HYSDN_CARD = type { i32, i64 }
%struct.TYPE_2__ = type { i8*, i8, i8, i8 }

@LOG_POF_CARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ERGO: write boot seq len=%d \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ERGO: write boot seq timeout\00", align 1
@ERR_BOOTSEQ_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.HYSDN_CARD*, i8*, i32)* @ergo_writebootseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ergo_writebootseq(%struct.HYSDN_CARD* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.HYSDN_CARD*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.HYSDN_CARD* %0, %struct.HYSDN_CARD** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.HYSDN_CARD*, %struct.HYSDN_CARD** %5, align 8
  %16 = getelementptr inbounds %struct.HYSDN_CARD, %struct.HYSDN_CARD* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %8, align 8
  %19 = load %struct.HYSDN_CARD*, %struct.HYSDN_CARD** %5, align 8
  %20 = getelementptr inbounds %struct.HYSDN_CARD, %struct.HYSDN_CARD* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LOG_POF_CARD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.HYSDN_CARD*, %struct.HYSDN_CARD** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (%struct.HYSDN_CARD*, i8*, ...) @hysdn_addlog(%struct.HYSDN_CARD* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  store i8 %35, i8* %10, align 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %13, align 1
  store i32 4096, i32* %14, align 4
  br label %39

39:                                               ; preds = %129, %94, %29
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %130

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %60, %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i8, i8* %45, align 2
  store i8 %46, i8* %12, align 1
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i8, i8* %12, align 1
  %54 = zext i8 %53 to i32
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i8, i8* %56, align 2
  %58 = zext i8 %57 to i32
  %59 = icmp ne i32 %54, %58
  br label %60

60:                                               ; preds = %52, %49
  %61 = phi i1 [ false, %49 ], [ %59, %52 ]
  br i1 %61, label %43, label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load %struct.HYSDN_CARD*, %struct.HYSDN_CARD** %5, align 8
  %67 = getelementptr inbounds %struct.HYSDN_CARD, %struct.HYSDN_CARD* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @LOG_POF_CARD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.HYSDN_CARD*, %struct.HYSDN_CARD** %5, align 8
  %74 = call i32 (%struct.HYSDN_CARD*, i8*, ...) @hysdn_addlog(%struct.HYSDN_CARD* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, i32* @ERR_BOOTSEQ_FAIL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %131

78:                                               ; preds = %62
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %13, align 1
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %80, %82
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load i8, i8* %10, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %86, %78
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %39

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %95
  store i32 4096, i32* %14, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %125, %101
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %11, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  %112 = load i8, i8* %110, align 1
  %113 = load i8*, i8** %9, align 8
  %114 = load i8, i8* %13, align 1
  %115 = zext i8 %114 to i32
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  store i8 %112, i8* %117, align 1
  %118 = load i8, i8* %13, align 1
  %119 = add i8 %118, 1
  store i8 %119, i8* %13, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* %10, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp sge i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  store i8 0, i8* %13, align 1
  br label %125

125:                                              ; preds = %124, %109
  %126 = load i8, i8* %13, align 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i8 %126, i8* %128, align 1
  br label %105

129:                                              ; preds = %105
  br label %39

130:                                              ; preds = %39
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %75
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @hysdn_addlog(%struct.HYSDN_CARD*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
