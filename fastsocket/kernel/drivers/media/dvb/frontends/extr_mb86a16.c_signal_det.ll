; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_signal_det.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mb86a16.c_signal_det.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CNTM set Error\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*, i32, i8*)* @signal_det to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signal_det(%struct.mb86a16_state* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mb86a16_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sgt i32 %16, 45
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %20 = call i64 @CNTM_set(%struct.mb86a16_state* %19, i32 2, i32 1, i32 2)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @verbose, align 4
  %24 = load i32, i32* @MB86A16_ERROR, align 4
  %25 = call i32 @dprintk(i32 %23, i32 %24, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %129

26:                                               ; preds = %18
  store i32 40000, i32* %10, align 4
  br label %36

27:                                               ; preds = %3
  %28 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %29 = call i64 @CNTM_set(%struct.mb86a16_state* %28, i32 3, i32 1, i32 2)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @verbose, align 4
  %33 = load i32, i32* @MB86A16_ERROR, align 4
  %34 = call i32 @dprintk(i32 %32, i32 %33, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %129

35:                                               ; preds = %27
  store i32 80000, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %26
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %91, %36
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %94

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %44, 98
  %46 = sdiv i32 %45, 100
  store i32 %46, i32* %9, align 4
  br label %57

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %9, align 4
  br label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %53, 102
  %55 = sdiv i32 %54, 100
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %50
  br label %57

57:                                               ; preds = %56, %43
  %58 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @smrt_info_get(%struct.mb86a16_state* %58, i32 %59)
  %61 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @smrt_set(%struct.mb86a16_state* %61, i32 %62)
  %64 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %65 = call i32 @srst(%struct.mb86a16_state* %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 99, %67
  %69 = sdiv i32 %68, 100
  %70 = add nsw i32 %66, %69
  %71 = load i32, i32* %9, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %57
  %77 = call i32 @msleep_interruptible(i32 10)
  %78 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 %80
  %82 = call i32 @mb86a16_read(%struct.mb86a16_state* %78, i32 55, i8* %81)
  %83 = icmp ne i32 %82, 2
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32, i32* @verbose, align 4
  %86 = load i32, i32* @MB86A16_ERROR, align 4
  %87 = call i32 @dprintk(i32 %85, i32 %86, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EREMOTEIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %129

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %37

94:                                               ; preds = %37
  %95 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = mul nsw i32 %100, 112
  %102 = sdiv i32 %101, 100
  %103 = icmp sgt i32 %97, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %94
  %105 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = mul nsw i32 %110, 112
  %112 = sdiv i32 %111, 100
  %113 = icmp sgt i32 %107, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  store i32 1, i32* %8, align 4
  br label %116

115:                                              ; preds = %104, %94
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %115, %114
  %117 = getelementptr inbounds [3 x i8], [3 x i8]* %12, i64 0, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %7, align 8
  store i8 %118, i8* %119, align 1
  %120 = load %struct.mb86a16_state*, %struct.mb86a16_state** %5, align 8
  %121 = call i64 @CNTM_set(%struct.mb86a16_state* %120, i32 0, i32 1, i32 2)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* @verbose, align 4
  %125 = load i32, i32* @MB86A16_ERROR, align 4
  %126 = call i32 @dprintk(i32 %124, i32 %125, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %129

127:                                              ; preds = %116
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %123, %84, %31, %22
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @CNTM_set(%struct.mb86a16_state*, i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @smrt_info_get(%struct.mb86a16_state*, i32) #1

declare dso_local i32 @smrt_set(%struct.mb86a16_state*, i32) #1

declare dso_local i32 @srst(%struct.mb86a16_state*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
