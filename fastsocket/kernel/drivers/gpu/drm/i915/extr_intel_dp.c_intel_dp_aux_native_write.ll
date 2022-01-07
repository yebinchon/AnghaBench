; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_aux_native_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_aux_native_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }

@AUX_NATIVE_WRITE = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_MASK = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_ACK = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_DEFER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32, i32*, i32)* @intel_dp_aux_native_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_aux_native_write(%struct.intel_dp* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [20 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %15 = call i32 @intel_dp_check_edp(%struct.intel_dp* %14)
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %69

19:                                               ; preds = %4
  %20 = load i32, i32* @AUX_NATIVE_WRITE, align 4
  %21 = shl i32 %20, 4
  %22 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 8
  %25 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 2
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 1
  %31 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 3
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @memcpy(i32* %32, i32* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %66, %19
  %39 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @intel_dp_aux_ch(%struct.intel_dp* %39, i32* %40, i32 %41, i32* %13, i32 1)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %69

47:                                               ; preds = %38
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @AUX_NATIVE_REPLY_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @AUX_NATIVE_REPLY_ACK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %67

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @AUX_NATIVE_REPLY_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @AUX_NATIVE_REPLY_DEFER, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @udelay(i32 100)
  br label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %69

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65
  br label %38

67:                                               ; preds = %53
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %62, %45, %18
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @intel_dp_check_edp(%struct.intel_dp*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @intel_dp_aux_ch(%struct.intel_dp*, i32*, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
