; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_eni.c_comp_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_eni.c_comp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eni_dev = type { i32 }

@comp_tx.pre_div = internal constant [4 x i32] [i32 4, i32 16, i32 128, i32 2048], align 16
@TS_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"min div %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"max div %d\0A\00", align 1
@MID_SEG_MAX_RATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"out pcr: %d (%d:%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eni_dev*, i32*, i32, i32*, i32*, i32)* @comp_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_tx(%struct.eni_dev* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.eni_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.eni_dev* %0, %struct.eni_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32*, i32** %11, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  br label %140

20:                                               ; preds = %6
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %44, %24
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load i32, i32* @TS_CLOCK, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* @comp_tx.pre_div, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %31, %36
  %38 = sdiv i32 %37, 64
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %48

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %26

48:                                               ; preds = %42, %26
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* @comp_tx.pre_div, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @TS_CLOCK, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sdiv i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %125

64:                                               ; preds = %20
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load %struct.eni_dev*, %struct.eni_dev** %7, align 8
  %70 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %64
  %76 = load i32*, i32** %10, align 8
  store i32 3, i32* %76, align 4
  br label %77

77:                                               ; preds = %96, %75
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i32, i32* @TS_CLOCK, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* @comp_tx.pre_div, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %82, %87
  %89 = sdiv i32 %88, 64
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %100

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %97, align 4
  br label %77

100:                                              ; preds = %94, %77
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* @comp_tx.pre_div, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 0, %115
  %117 = mul nsw i32 %113, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @TS_CLOCK, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @DIV_ROUND_UP(i32 %120, i32 %121)
  %123 = sub nsw i32 %122, 1
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %108, %48
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32*, i32** %11, align 8
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MID_SEG_MAX_RATE, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* @MID_SEG_MAX_RATE, align 4
  %138 = load i32*, i32** %11, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %139, %17
  %141 = load i32, i32* @TS_CLOCK, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* @comp_tx.pre_div, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sdiv i32 %141, %146
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  %151 = sdiv i32 %147, %150
  %152 = load i32*, i32** %8, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %154, i32 %156, i32 %158)
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
