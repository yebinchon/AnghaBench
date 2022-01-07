; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfe4003_check_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_sfe4003_check_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.falcon_board = type { i64, i32 }

@LM87_ALARM_TEMP_EXT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @sfe4003_check_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe4003_check_hw(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_board*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = call %struct.falcon_board* @falcon_board(%struct.efx_nic* %5)
  store %struct.falcon_board* %6, %struct.falcon_board** %3, align 8
  %7 = load %struct.falcon_board*, %struct.falcon_board** %3, align 8
  %8 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.falcon_board*, %struct.falcon_board** %3, align 8
  %13 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @LM87_ALARM_TEMP_EXT1, align 4
  %18 = xor i32 %17, -1
  br label %20

19:                                               ; preds = %11, %1
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ -1, %19 ]
  store i32 %21, i32* %4, align 4
  %22 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @efx_check_lm87(%struct.efx_nic* %22, i32 %23)
  ret i32 %24
}

declare dso_local %struct.falcon_board* @falcon_board(%struct.efx_nic*) #1

declare dso_local i32 @efx_check_lm87(%struct.efx_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
