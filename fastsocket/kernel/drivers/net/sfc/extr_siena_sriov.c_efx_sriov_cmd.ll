; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MC_CMD_SRIOV_IN_LEN = common dso_local global i32 0, align 4
@MC_CMD_SRIOV_OUT_LEN = common dso_local global i32 0, align 4
@SRIOV_IN_ENABLE = common dso_local global i32 0, align 4
@SRIOV_IN_VI_BASE = common dso_local global i32 0, align 4
@EFX_VI_BASE = common dso_local global i32 0, align 4
@SRIOV_IN_VF_COUNT = common dso_local global i32 0, align 4
@MC_CMD_SRIOV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SRIOV_OUT_VF_TOTAL = common dso_local global i32 0, align 4
@SRIOV_OUT_VI_SCALE = common dso_local global i32 0, align 4
@EFX_VI_SCALE_MAX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i32*, i32*)* @efx_sriov_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_sriov_cmd(%struct.efx_nic* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @MC_CMD_SRIOV_IN_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @MC_CMD_SRIOV_OUT_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32, i32* @SRIOV_IN_ENABLE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = call i32 @MCDI_SET_DWORD(i32* %21, i32 %25, i32 %29)
  %31 = load i32, i32* @SRIOV_IN_VI_BASE, align 4
  %32 = load i32, i32* @EFX_VI_BASE, align 4
  %33 = call i32 @MCDI_SET_DWORD(i32* %21, i32 %31, i32 %32)
  %34 = load i32, i32* @SRIOV_IN_VF_COUNT, align 4
  %35 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MCDI_SET_DWORD(i32* %21, i32 %34, i32 %37)
  %39 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %40 = load i32, i32* @MC_CMD_SRIOV, align 4
  %41 = load i32, i32* @MC_CMD_SRIOV_IN_LEN, align 4
  %42 = load i32, i32* @MC_CMD_SRIOV_OUT_LEN, align 4
  %43 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %39, i32 %40, i32* %21, i32 %41, i32* %24, i32 %42, i64* %15)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %4
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %80

48:                                               ; preds = %4
  %49 = load i64, i64* %15, align 8
  %50 = load i32, i32* @MC_CMD_SRIOV_OUT_LEN, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %80

56:                                               ; preds = %48
  %57 = load i32, i32* @SRIOV_OUT_VF_TOTAL, align 4
  %58 = call i32 @MCDI_DWORD(i32* %24, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* @SRIOV_OUT_VI_SCALE, align 4
  %60 = call i32 @MCDI_DWORD(i32* %24, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @EFX_VI_SCALE_MAX, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %80

67:                                               ; preds = %56
  %68 = load i32*, i32** %8, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %13, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %79, %64, %53, %46
  %81 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MCDI_SET_DWORD(i32*, i32, i32) #2

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i64*) #2

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
