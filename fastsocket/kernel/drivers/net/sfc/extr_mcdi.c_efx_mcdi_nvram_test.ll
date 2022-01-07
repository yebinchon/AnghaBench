; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_nvram_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_nvram_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MC_CMD_NVRAM_TEST_IN_LEN = common dso_local global i32 0, align 4
@MC_CMD_NVRAM_TEST_OUT_LEN = common dso_local global i32 0, align 4
@NVRAM_TEST_IN_TYPE = common dso_local global i32 0, align 4
@MC_CMD_NVRAM_TEST = common dso_local global i32 0, align 4
@NVRAM_TEST_OUT_RESULT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32)* @efx_mcdi_nvram_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_nvram_test(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @MC_CMD_NVRAM_TEST_IN_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @MC_CMD_NVRAM_TEST_OUT_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load i32, i32* @NVRAM_TEST_IN_TYPE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @MCDI_SET_DWORD(i32* %14, i32 %18, i32 %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %22 = load i32, i32* @MC_CMD_NVRAM_TEST, align 4
  %23 = mul nuw i64 4, %12
  %24 = trunc i64 %23 to i32
  %25 = mul nuw i64 4, %16
  %26 = trunc i64 %25 to i32
  %27 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %21, i32 %22, i32* %14, i32 %24, i32* %17, i32 %26, i32* null)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @NVRAM_TEST_OUT_RESULT, align 4
  %34 = call i32 @MCDI_DWORD(i32* %17, i32 %33)
  switch i32 %34, label %36 [
    i32 128, label %35
    i32 129, label %35
  ]

35:                                               ; preds = %32, %32
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %35, %30
  %40 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MCDI_SET_DWORD(i32*, i32, i32) #2

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i32*) #2

declare dso_local i32 @MCDI_DWORD(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
