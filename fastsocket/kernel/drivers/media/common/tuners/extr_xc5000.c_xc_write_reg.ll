; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_xc5000.c_xc_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_xc5000.c_xc_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc5000_priv = type { i32 }

@XC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@XREG_BUSY = common dso_local global i32 0, align 4
@XC_RESULT_I2C_WRITE_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xc5000_priv*, i32, i32)* @xc_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_write_reg(%struct.xc5000_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xc5000_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xc5000_priv* %0, %struct.xc5000_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 100, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.xc5000_priv*, %struct.xc5000_priv** %4, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %26 = call i32 @xc_send_i2c_data(%struct.xc5000_priv* %24, i32* %25, i32 4)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @XC_RESULT_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @XC_RESULT_SUCCESS, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %63

40:                                               ; preds = %38
  %41 = load %struct.xc5000_priv*, %struct.xc5000_priv** %4, align 8
  %42 = load i32, i32* @XREG_BUSY, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %44 = call i32 @xc5000_readreg(%struct.xc5000_priv* %41, i32 %42, i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @XC_RESULT_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %63

57:                                               ; preds = %52, %48
  %58 = call i32 @xc_wait(i32 5)
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %40
  br label %31

63:                                               ; preds = %56, %38
  br label %64

64:                                               ; preds = %63, %3
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @XC_RESULT_I2C_WRITE_FAILURE, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @xc_send_i2c_data(%struct.xc5000_priv*, i32*, i32) #1

declare dso_local i32 @xc5000_readreg(%struct.xc5000_priv*, i32, i32*) #1

declare dso_local i32 @xc_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
