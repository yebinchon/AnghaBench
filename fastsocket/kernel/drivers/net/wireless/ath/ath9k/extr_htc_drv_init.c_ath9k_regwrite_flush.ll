; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_regwrite_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_regwrite_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath9k_htc_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@WMI_REG_WRITE_CMDID = common dso_local global i32 0, align 4
@WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"REGISTER WRITE FAILED, multi len: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ath9k_regwrite_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_regwrite_flush(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.ath_hw*
  store %struct.ath_hw* %9, %struct.ath_hw** %3, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %4, align 8
  %12 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %13 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ath9k_htc_priv*
  store %struct.ath9k_htc_priv* %15, %struct.ath9k_htc_priv** %5, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = call i32 @atomic_dec(i32* %19)
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %1
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* @WMI_REG_WRITE_CMDID, align 4
  %37 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %42 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @ath9k_wmi_cmd(%struct.TYPE_2__* %35, i32 %36, i32* %40, i32 %48, i32* %6, i32 4, i32 100)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %32
  %54 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %55 = load i32, i32* @WMI, align 4
  %56 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %57 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ath_dbg(%struct.ath_common* %54, i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %53, %32
  %63 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %64 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %1
  %68 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %69 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_wmi_cmd(%struct.TYPE_2__*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
