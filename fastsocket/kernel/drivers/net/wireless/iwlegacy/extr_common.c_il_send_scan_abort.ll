; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_scan_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_scan_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.il_host_cmd = type { i64, i32, i32 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4
@C_SCAN_ABORT = common dso_local global i32 0, align 4
@S_READY = common dso_local global i32 0, align 4
@S_GEO_CONFIGURED = common dso_local global i32 0, align 4
@S_SCAN_HW = common dso_local global i32 0, align 4
@S_FW_ERROR = common dso_local global i32 0, align 4
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CAN_ABORT_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"SCAN_ABORT ret %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il_send_scan_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_send_scan_abort(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca %struct.il_host_cmd, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %7 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 1
  %9 = load i32, i32* @CMD_WANT_SKB, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 2
  %11 = load i32, i32* @C_SCAN_ABORT, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @S_READY, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = load i32, i32* @S_GEO_CONFIGURED, align 4
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 0
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load i32, i32* @S_SCAN_HW, align 4
  %25 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32, i32* @S_FW_ERROR, align 4
  %31 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @S_EXIT_PENDING, align 4
  %37 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 0
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %29, %23, %17, %1
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %75

44:                                               ; preds = %35
  %45 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %46 = call i32 @il_send_cmd_sync(%struct.il_priv* %45, %struct.il_host_cmd* %6)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %75

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.il_rx_pkt*
  store %struct.il_rx_pkt* %54, %struct.il_rx_pkt** %5, align 8
  %55 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %56 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CAN_ABORT_STATUS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %63 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @D_SCAN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %61, %51
  %70 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %71 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %6, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @il_free_pages(%struct.il_priv* %70, i64 %72)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %49, %41
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_send_cmd_sync(%struct.il_priv*, %struct.il_host_cmd*) #1

declare dso_local i32 @D_SCAN(i8*, i64) #1

declare dso_local i32 @il_free_pages(%struct.il_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
