; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_set_scc_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_set_scc_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32, i32 }

@PMAC_FTR_SCC_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"port power on result: %d\0A\00", align 1
@PMAC_FTR_MODEM_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"modem power result: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"port power off result: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_pmac_port*, i32)* @pmz_set_scc_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmz_set_scc_power(%struct.uart_pmac_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load i32, i32* @PMAC_FTR_SCC_ENABLE, align 4
  %11 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pmac_call_feature(i32 %10, i32 %13, i32 %16, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pmz_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %21 = call i64 @ZS_IS_INTMODEM(%struct.uart_pmac_port* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %9
  %24 = load i32, i32* @PMAC_FTR_MODEM_ENABLE, align 4
  %25 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pmac_call_feature(i32 %24, i32 %27, i32 0, i32 1)
  store i32 %28, i32* %6, align 4
  store i32 2500, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pmz_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %23, %9
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %34 = call i64 @ZS_IS_INTMODEM(%struct.uart_pmac_port* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* @PMAC_FTR_MODEM_ENABLE, align 4
  %38 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pmac_call_feature(i32 %37, i32 %40, i32 0, i32 0)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pmz_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %36, %32
  %45 = load i32, i32* @PMAC_FTR_SCC_ENABLE, align 4
  %46 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pmac_call_feature(i32 %45, i32 %48, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %44, %31
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @pmac_call_feature(i32, i32, i32, i32) #1

declare dso_local i32 @pmz_debug(i8*, i32) #1

declare dso_local i64 @ZS_IS_INTMODEM(%struct.uart_pmac_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
