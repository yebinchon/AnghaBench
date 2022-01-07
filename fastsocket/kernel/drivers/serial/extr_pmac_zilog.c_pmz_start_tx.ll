; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }
%struct.uart_pmac_port = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"pmz: start_tx()\0A\00", align 1
@PMACZILOG_FLAG_TX_ACTIVE = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_TX_STOPPED = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@Tx_BUF_EMP = common dso_local global i8 0, align 1
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"pmz: start_tx() done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pmz_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.circ_buf*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %6)
  store %struct.uart_pmac_port* %7, %struct.uart_pmac_port** %3, align 8
  %8 = call i32 @pmz_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @PMACZILOG_FLAG_TX_ACTIVE, align 4
  %10 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @PMACZILOG_FLAG_TX_STOPPED, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %21 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %1
  br label %103

29:                                               ; preds = %23
  %30 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %31 = load i32, i32* @R0, align 4
  %32 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %30, i32 %31)
  store i8 %32, i8* %4, align 1
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @Tx_BUF_EMP, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %103

40:                                               ; preds = %29
  %41 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @write_zsdata(%struct.uart_pmac_port* %46, i64 %49)
  %51 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %52 = call i32 @zssync(%struct.uart_pmac_port* %51)
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  br label %101

60:                                               ; preds = %40
  %61 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store %struct.circ_buf* %64, %struct.circ_buf** %5, align 8
  %65 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %66 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %67 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %70 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @write_zsdata(%struct.uart_pmac_port* %65, i64 %73)
  %75 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %76 = call i32 @zssync(%struct.uart_pmac_port* %75)
  %77 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %78 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  %81 = load i32, i32* @UART_XMIT_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = and i64 %80, %83
  %85 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %86 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %93 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %92)
  %94 = load i64, i64* @WAKEUP_CHARS, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %60
  %97 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %98 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %97, i32 0, i32 0
  %99 = call i32 @uart_write_wakeup(i32* %98)
  br label %100

100:                                              ; preds = %96, %60
  br label %101

101:                                              ; preds = %100, %45
  %102 = call i32 @pmz_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %39, %28
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @pmz_debug(i8*) #1

declare dso_local i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port*) #1

declare dso_local zeroext i8 @read_zsreg(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @write_zsdata(%struct.uart_pmac_port*, i64) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
