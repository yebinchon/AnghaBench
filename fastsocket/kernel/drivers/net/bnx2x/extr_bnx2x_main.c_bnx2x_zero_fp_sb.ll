; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_zero_fp_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_zero_fp_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.hc_status_block_data_e2 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.hc_status_block_data_e1x = type { %struct.TYPE_4__ }

@SB_DISABLED = common dso_local global i8* null, align 8
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@CSTORM_STATUS_BLOCK_SIZE = common dso_local global i32 0, align 4
@CSTORM_SYNC_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_zero_fp_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_zero_fp_sb(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hc_status_block_data_e2, align 8
  %8 = alloca %struct.hc_status_block_data_e1x, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = call i32 @memset(%struct.hc_status_block_data_e2* %7, i32 0, i32 16)
  %14 = load i8*, i8** @SB_DISABLED, align 8
  %15 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %7, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %7, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = bitcast %struct.hc_status_block_data_e2* %7 to i32*
  store i32* %20, i32** %5, align 8
  store i32 4, i32* %6, align 4
  br label %31

21:                                               ; preds = %2
  %22 = bitcast %struct.hc_status_block_data_e1x* %8 to %struct.hc_status_block_data_e2*
  %23 = call i32 @memset(%struct.hc_status_block_data_e2* %22, i32 0, i32 16)
  %24 = load i8*, i8** @SB_DISABLED, align 8
  %25 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %8, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = bitcast %struct.hc_status_block_data_e1x* %8 to i32*
  store i32* %30, i32** %5, align 8
  store i32 4, i32* %6, align 4
  br label %31

31:                                               ; preds = %21, %12
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @bnx2x_wr_fp_sb_data(%struct.bnx2x* %32, i32 %33, i32* %34, i32 %35)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @CSTORM_STATUS_BLOCK_OFFSET(i32 %39)
  %41 = add nsw i64 %38, %40
  %42 = load i32, i32* @CSTORM_STATUS_BLOCK_SIZE, align 4
  %43 = call i32 @bnx2x_fill(%struct.bnx2x* %37, i64 %41, i32 0, i32 %42)
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @CSTORM_SYNC_BLOCK_OFFSET(i32 %46)
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* @CSTORM_SYNC_BLOCK_SIZE, align 4
  %50 = call i32 @bnx2x_fill(%struct.bnx2x* %44, i64 %48, i32 0, i32 %49)
  ret void
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @memset(%struct.hc_status_block_data_e2*, i32, i32) #1

declare dso_local i32 @bnx2x_wr_fp_sb_data(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_fill(%struct.bnx2x*, i64, i32, i32) #1

declare dso_local i64 @CSTORM_STATUS_BLOCK_OFFSET(i32) #1

declare dso_local i64 @CSTORM_SYNC_BLOCK_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
