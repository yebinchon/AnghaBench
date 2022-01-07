; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@RESET_LP_IRQC_DISABLE = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout while clearing FIFO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STAT_XFE = common dso_local global i32 0, align 4
@TPM_VL_VER = common dso_local global i64 0, align 8
@TPM_CTRL_DATA = common dso_local global i64 0, align 8
@TPM_VL_CHANNEL_TPM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i64*, i64)* @tpm_inf_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_inf_send(%struct.tpm_chip* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @RESET_LP_IRQC_DISABLE, align 4
  %17 = load i32, i32* @CMD, align 4
  %18 = call i32 @tpm_data_out(i32 %16, i32 %17)
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %20 = call i32 @empty_fifo(%struct.tpm_chip* %19, i32 1)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %107

30:                                               ; preds = %3
  %31 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %32 = load i32, i32* @STAT_XFE, align 4
  %33 = call i32 @wait(%struct.tpm_chip* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %107

39:                                               ; preds = %30
  %40 = load i64, i64* %7, align 8
  %41 = and i64 %40, 4278190080
  %42 = lshr i64 %41, 24
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %7, align 8
  %44 = and i64 %43, 16711680
  %45 = lshr i64 %44, 16
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %7, align 8
  %47 = and i64 %46, 65280
  %48 = lshr i64 %47, 8
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %7, align 8
  %50 = and i64 %49, 255
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 6
  %53 = and i64 %52, 4294967040
  %54 = lshr i64 %53, 8
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 6
  %57 = and i64 %56, 255
  store i64 %57, i64* %11, align 8
  %58 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %59 = load i64, i64* @TPM_VL_VER, align 8
  %60 = call i32 @wait_and_send(%struct.tpm_chip* %58, i64 %59)
  %61 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %62 = load i64, i64* @TPM_CTRL_DATA, align 8
  %63 = call i32 @wait_and_send(%struct.tpm_chip* %61, i64 %62)
  %64 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @wait_and_send(%struct.tpm_chip* %64, i64 %65)
  %67 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @wait_and_send(%struct.tpm_chip* %67, i64 %68)
  %70 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %71 = load i64, i64* @TPM_VL_VER, align 8
  %72 = call i32 @wait_and_send(%struct.tpm_chip* %70, i64 %71)
  %73 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %74 = load i64, i64* @TPM_VL_CHANNEL_TPM, align 8
  %75 = call i32 @wait_and_send(%struct.tpm_chip* %73, i64 %74)
  %76 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @wait_and_send(%struct.tpm_chip* %76, i64 %77)
  %79 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @wait_and_send(%struct.tpm_chip* %79, i64 %80)
  %82 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @wait_and_send(%struct.tpm_chip* %82, i64 %83)
  %85 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @wait_and_send(%struct.tpm_chip* %85, i64 %86)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %101, %39
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %7, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @wait_and_send(%struct.tpm_chip* %94, i64 %99)
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %88

104:                                              ; preds = %88
  %105 = load i64, i64* %7, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %36, %23
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @tpm_data_out(i32, i32) #1

declare dso_local i32 @empty_fifo(%struct.tpm_chip*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wait(%struct.tpm_chip*, i32) #1

declare dso_local i32 @wait_and_send(%struct.tpm_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
