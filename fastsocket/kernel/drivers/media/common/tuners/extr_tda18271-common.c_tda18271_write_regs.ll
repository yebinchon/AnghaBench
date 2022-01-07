; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_write_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@TDA18271_NUM_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"ERROR: idx = 0x%x, len = %d, i2c_transfer returned: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_write_regs(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tda18271_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.tda18271_priv*, %struct.tda18271_priv** %16, align 8
  store %struct.tda18271_priv* %17, %struct.tda18271_priv** %7, align 8
  %18 = load %struct.tda18271_priv*, %struct.tda18271_priv** %7, align 8
  %19 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* @TDA18271_NUM_REGS, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %30 = load %struct.tda18271_priv*, %struct.tda18271_priv** %7, align 8
  %31 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %29, align 8
  store i32 1, i32* %13, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %40, %23
  br label %42

42:                                               ; preds = %36, %3
  %43 = phi i1 [ true, %3 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.tda18271_priv*, %struct.tda18271_priv** %7, align 8
  %47 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %53 [
    i32 131, label %49
    i32 130, label %50
    i32 129, label %51
    i32 128, label %52
  ]

49:                                               ; preds = %42
  store i32 3, i32* %14, align 4
  br label %54

50:                                               ; preds = %42
  store i32 8, i32* %14, align 4
  br label %54

51:                                               ; preds = %42
  store i32 16, i32* %14, align 4
  br label %54

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %42, %52
  store i32 39, i32* %14, align 4
  br label %54

54:                                               ; preds = %53, %51, %50, %49
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %56 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %55, i32 1)
  br label %57

57:                                               ; preds = %101, %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %108

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %5, align 4
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %68, i8* %69, align 16
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %86, %66
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %75, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %25, i64 %84
  store i8 %82, i8* %85, align 1
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %70

89:                                               ; preds = %70
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = load %struct.tda18271_priv*, %struct.tda18271_priv** %7, align 8
  %94 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @i2c_transfer(i32 %96, %struct.i2c_msg* %11, i32 1)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %108

101:                                              ; preds = %89
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %57

108:                                              ; preds = %100, %57
  %109 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %110 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %109, i32 0)
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @tda_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* %13, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %124

122:                                              ; preds = %118
  %123 = load i32, i32* %13, align 4
  br label %124

124:                                              ; preds = %122, %121
  %125 = phi i32 [ 0, %121 ], [ %123, %122 ]
  %126 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %126)
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @tda_err(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
