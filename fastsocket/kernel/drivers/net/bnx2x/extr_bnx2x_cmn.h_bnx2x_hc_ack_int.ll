; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_hc_ack_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_hc_ack_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HC_REG_COMMAND_REG = common dso_local global i64 0, align 8
@COMMAND_REG_SIMD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnx2x*)* @bnx2x_hc_ack_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2x_hc_ack_int(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load i64, i64* @HC_REG_COMMAND_REG, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = call i32 @BP_PORT(%struct.bnx2x* %6)
  %8 = mul nsw i32 %7, 32
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %5, %9
  %11 = load i64, i64* @COMMAND_REG_SIMD_MASK, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %3, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @REG_RD(%struct.bnx2x* %13, i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = call i32 (...) @barrier()
  %17 = load i64, i64* %4, align 8
  ret i64 %17
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
