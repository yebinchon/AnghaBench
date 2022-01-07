; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_receive_peg_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_receive_peg_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLCNIC_RCVPEG_CHECK_RETRY_COUNT = common dso_local global i32 0, align 4
@QLCNIC_RCVPEG_STATE = common dso_local global i32 0, align 4
@PHAN_PEG_RCV_INITIALIZED = common dso_local global i64 0, align 8
@QLCNIC_RCVPEG_CHECK_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Receive Peg initialization not complete, state: 0x%x.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_receive_peg_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_receive_peg_ready(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load i32, i32* @QLCNIC_RCVPEG_CHECK_RETRY_COUNT, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %9 = load i32, i32* @QLCNIC_RCVPEG_STATE, align 4
  %10 = call i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @PHAN_PEG_RCV_INITIALIZED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %35

15:                                               ; preds = %7
  %16 = load i32, i32* @QLCNIC_RCVPEG_CHECK_DELAY, align 4
  %17 = call i32 @msleep(i32 %16)
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %7, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %25, %14
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
