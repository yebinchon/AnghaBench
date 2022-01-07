; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_multi_regread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_multi_regread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath9k_htc_priv = type { i32 }

@WMI_REG_READ_CMDID = common dso_local global i32 0, align 4
@WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Multiple REGISTER READ FAILED (count: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32)* @ath9k_multi_regread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_multi_regread(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_hw*, align 8
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca %struct.ath9k_htc_priv*, align 8
  %12 = alloca [8 x i32], align 16
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.ath_hw*
  store %struct.ath_hw* %17, %struct.ath_hw** %9, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  %19 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %18)
  store %struct.ath_common* %19, %struct.ath_common** %10, align 8
  %20 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %21 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ath9k_htc_priv*
  store %struct.ath9k_htc_priv* %23, %struct.ath9k_htc_priv** %11, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %38, %4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_be32(i32 %33)
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  %43 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WMI_REG_READ_CMDID, align 4
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @ath9k_wmi_cmd(i32 %44, i32 %45, i32* %46, i32 %50, i32* %51, i32 %55, i32 100)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %41
  %61 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %62 = load i32, i32* @WMI, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ath_dbg(%struct.ath_common* %61, i32 %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %41
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %80, %65
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be32_to_cpu(i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %66

83:                                               ; preds = %66
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ath9k_wmi_cmd(i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
