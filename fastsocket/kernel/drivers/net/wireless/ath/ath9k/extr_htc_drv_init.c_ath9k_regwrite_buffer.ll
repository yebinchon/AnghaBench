; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_regwrite_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_regwrite_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i64 }
%struct.ath9k_htc_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8* }

@MAX_CMD_NUMBER = common dso_local global i64 0, align 8
@WMI_REG_WRITE_CMDID = common dso_local global i32 0, align 4
@WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"REGISTER WRITE FAILED, multi len: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @ath9k_regwrite_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_regwrite_buffer(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_htc_priv*, align 8
  %10 = alloca i32, align 4
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
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %21 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %28 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %33 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %26, i8** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %42 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %40, i8** %52, align 8
  %53 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %54 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %60 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MAX_CMD_NUMBER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %3
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* @WMI_REG_WRITE_CMDID, align 4
  %71 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %72 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = bitcast %struct.TYPE_3__** %74 to i32*
  %76 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %77 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 4, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @ath9k_wmi_cmd(%struct.TYPE_4__* %69, i32 %70, i32* %75, i32 %82, i32* %10, i32 4, i32 100)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %66
  %88 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %89 = load i32, i32* @WMI, align 4
  %90 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %91 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @ath_dbg(%struct.ath_common* %88, i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %87, %66
  %98 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %99 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %3
  %103 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %104 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ath9k_wmi_cmd(%struct.TYPE_4__*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
