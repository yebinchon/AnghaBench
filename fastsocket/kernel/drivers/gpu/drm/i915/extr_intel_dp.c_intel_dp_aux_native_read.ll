; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_aux_native_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_aux_native_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }

@AUX_NATIVE_READ = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_MASK = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_ACK = common dso_local global i32 0, align 4
@AUX_NATIVE_REPLY_DEFER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32, i32*, i32)* @intel_dp_aux_native_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_aux_native_read(%struct.intel_dp* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [20 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %17 = call i32 @intel_dp_check_edp(%struct.intel_dp* %16)
  %18 = load i32, i32* @AUX_NATIVE_READ, align 4
  %19 = shl i32 %18, 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  store i32 4, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %78, %4
  %33 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @intel_dp_aux_ch(%struct.intel_dp* %33, i32* %34, i32 %35, i32* %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EPROTO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %79

44:                                               ; preds = %32
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %5, align 4
  br label %79

49:                                               ; preds = %44
  %50 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @AUX_NATIVE_REPLY_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @AUX_NATIVE_REPLY_ACK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds [20 x i32], [20 x i32]* %12, i64 0, i64 0
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %15, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @memcpy(i32* %58, i32* %60, i32 %62)
  %64 = load i32, i32* %15, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %79

66:                                               ; preds = %49
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @AUX_NATIVE_REPLY_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @AUX_NATIVE_REPLY_DEFER, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @udelay(i32 100)
  br label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %79

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  br label %32

79:                                               ; preds = %74, %57, %47, %41
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @intel_dp_check_edp(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_aux_ch(%struct.intel_dp*, i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
