; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_zero_sp_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_zero_sp_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.hc_sp_status_block_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SB_DISABLED = common dso_local global i32 0, align 4
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@CSTORM_SP_STATUS_BLOCK_SIZE = common dso_local global i32 0, align 4
@CSTORM_SP_SYNC_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_zero_sp_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_zero_sp_sb(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_sp_status_block_data, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = call i32 @BP_FUNC(%struct.bnx2x* %5)
  store i32 %6, i32* %3, align 4
  %7 = call i32 @memset(%struct.hc_sp_status_block_data* %4, i32 0, i32 8)
  %8 = load i32, i32* @SB_DISABLED, align 4
  %9 = getelementptr inbounds %struct.hc_sp_status_block_data, %struct.hc_sp_status_block_data* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.hc_sp_status_block_data, %struct.hc_sp_status_block_data* %4, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = call i32 @bnx2x_wr_sp_sb_data(%struct.bnx2x* %12, %struct.hc_sp_status_block_data* %4)
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @CSTORM_SP_STATUS_BLOCK_OFFSET(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @CSTORM_SP_STATUS_BLOCK_SIZE, align 4
  %20 = call i32 @bnx2x_fill(%struct.bnx2x* %14, i64 %18, i32 0, i32 %19)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @CSTORM_SP_SYNC_BLOCK_OFFSET(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* @CSTORM_SP_SYNC_BLOCK_SIZE, align 4
  %27 = call i32 @bnx2x_fill(%struct.bnx2x* %21, i64 %25, i32 0, i32 %26)
  ret void
}

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @memset(%struct.hc_sp_status_block_data*, i32, i32) #1

declare dso_local i32 @bnx2x_wr_sp_sb_data(%struct.bnx2x*, %struct.hc_sp_status_block_data*) #1

declare dso_local i32 @bnx2x_fill(%struct.bnx2x*, i64, i32, i32) #1

declare dso_local i64 @CSTORM_SP_STATUS_BLOCK_OFFSET(i32) #1

declare dso_local i64 @CSTORM_SP_SYNC_BLOCK_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
