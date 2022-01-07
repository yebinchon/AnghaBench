; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_stop_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.mpsc_port_info = type { i32, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"mpsc_stop_rx[%d]: Stopping...\0A\00", align 1
@MPSC_CHR_2_RA = common dso_local global i32 0, align 4
@MPSC_CHR_2 = common dso_local global i64 0, align 8
@SDMA_SDCM_AR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mpsc_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.mpsc_port_info*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.mpsc_port_info*
  store %struct.mpsc_port_info* %5, %struct.mpsc_port_info** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %11 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %16 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MPSC_CHR_2_RA, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %21 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MPSC_CHR_2, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = call i32 @udelay(i32 100)
  br label %55

27:                                               ; preds = %1
  %28 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %29 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MPSC_CHR_2, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  %34 = load i32, i32* @MPSC_CHR_2_RA, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %37 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MPSC_CHR_2, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %52, %27
  %43 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %44 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MPSC_CHR_2, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  %49 = load i32, i32* @MPSC_CHR_2_RA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 @udelay(i32 10)
  br label %42

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %14
  %56 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %57 = load i32, i32* @SDMA_SDCM_AR, align 4
  %58 = call i32 @mpsc_sdma_cmd(%struct.mpsc_port_info* %56, i32 %57)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mpsc_sdma_cmd(%struct.mpsc_port_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
