; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MC_CMD_PTP_IN_DISABLE_LEN = common dso_local global i32 0, align 4
@PTP_IN_OP = common dso_local global i32 0, align 4
@MC_CMD_PTP_OP_DISABLE = common dso_local global i32 0, align 4
@MC_CMD_PTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ptp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_disable(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load i32, i32* @MC_CMD_PTP_IN_DISABLE_LEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i32, i32* @PTP_IN_OP, align 4
  %10 = load i32, i32* @MC_CMD_PTP_OP_DISABLE, align 4
  %11 = call i32 @MCDI_SET_DWORD(i32* %8, i32 %9, i32 %10)
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = load i32, i32* @MC_CMD_PTP, align 4
  %14 = mul nuw i64 4, %6
  %15 = trunc i64 %14 to i32
  %16 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %12, i32 %13, i32* %8, i32 %15, i32* null, i32 0, i32* null)
  %17 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %17)
  ret i32 %16
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MCDI_SET_DWORD(i32*, i32, i32) #2

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
