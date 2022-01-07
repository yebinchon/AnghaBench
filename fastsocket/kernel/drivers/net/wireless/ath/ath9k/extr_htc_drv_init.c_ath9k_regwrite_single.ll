; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_regwrite_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_regwrite_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath9k_htc_priv = type { i32 }

@WMI_REG_WRITE_CMDID = common dso_local global i32 0, align 4
@WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"REGISTER WRITE FAILED:(0x%04x, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @ath9k_regwrite_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_regwrite_single(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_htc_priv*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ath_hw*
  store %struct.ath_hw* %13, %struct.ath_hw** %7, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %8, align 8
  %16 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %17 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ath9k_htc_priv*
  store %struct.ath9k_htc_priv* %19, %struct.ath9k_htc_priv** %9, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @cpu_to_be32(i32 %21)
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds i32, i32* %20, i64 1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @cpu_to_be32(i32 %24)
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %27 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WMI_REG_WRITE_CMDID, align 4
  %30 = bitcast [2 x i32]* %10 to i32*
  %31 = call i32 @ath9k_wmi_cmd(i32 %28, i32 %29, i32* %30, i32 8, i32* %5, i32 4, i32 100)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %37 = load i32, i32* @WMI, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ath_dbg(%struct.ath_common* %36, i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %3
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ath9k_wmi_cmd(i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
