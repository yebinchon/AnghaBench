; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_test_alive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi_phy.c_efx_mcdi_phy_test_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MC_CMD_GET_PHY_STATE_OUT_LEN = common dso_local global i32 0, align 4
@MC_CMD_GET_PHY_STATE_IN_LEN = common dso_local global i64 0, align 8
@MC_CMD_GET_PHY_STATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GET_PHY_STATE_OUT_STATE = common dso_local global i32 0, align 4
@MC_CMD_PHY_STATE_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_mcdi_phy_test_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_test_alive(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %9 = load i32, i32* @MC_CMD_GET_PHY_STATE_OUT_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i64, i64* @MC_CMD_GET_PHY_STATE_IN_LEN, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUILD_BUG_ON(i32 %15)
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = load i32, i32* @MC_CMD_GET_PHY_STATE, align 4
  %19 = mul nuw i64 4, %10
  %20 = trunc i64 %19 to i32
  %21 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %17, i32 %18, i32* null, i32 0, i32* %12, i32 %20, i64* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @MC_CMD_GET_PHY_STATE_OUT_LEN, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

34:                                               ; preds = %26
  %35 = load i32, i32* @GET_PHY_STATE_OUT_STATE, align 4
  %36 = call i64 @MCDI_DWORD(i32* %12, i32 %35)
  %37 = load i64, i64* @MC_CMD_PHY_STATE_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %39, %31, %24
  %44 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i64*) #2

declare dso_local i64 @MCDI_DWORD(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
