; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64* }

@R0 = common dso_local global i32 0, align 4
@Tx_BUF_EMP = common dso_local global i8 0, align 1
@PMACZILOG_FLAG_TX_ACTIVE = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_REGS_HELD = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_TX_STOPPED = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@RES_Tx_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*)* @pmz_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_transmit_chars(%struct.uart_pmac_port* %0) #0 {
  %2 = alloca %struct.uart_pmac_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i8, align 1
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %2, align 8
  %5 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %6 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %163

9:                                                ; preds = %1
  %10 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %11 = call i64 @ZS_IS_CONS(%struct.uart_pmac_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %15 = load i32, i32* @R0, align 4
  %16 = call zeroext i8 @read_zsreg(%struct.uart_pmac_port* %14, i32 %15)
  store i8 %16, i8* %4, align 1
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @Tx_BUF_EMP, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %163

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %9
  %26 = load i32, i32* @PMACZILOG_FLAG_TX_ACTIVE, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %33 = call i64 @ZS_REGS_HELD(%struct.uart_pmac_port* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %25
  %36 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %37 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pmz_load_zsregs(%struct.uart_pmac_port* %36, i32 %39)
  %41 = load i32, i32* @PMACZILOG_FLAG_REGS_HELD, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %44 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %35, %25
  %48 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %49 = call i64 @ZS_TX_STOPPED(%struct.uart_pmac_port* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* @PMACZILOG_FLAG_TX_STOPPED, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %156

58:                                               ; preds = %47
  %59 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %58
  %65 = load i32, i32* @PMACZILOG_FLAG_TX_ACTIVE, align 4
  %66 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %67 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %71 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %72 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @write_zsdata(%struct.uart_pmac_port* %70, i64 %74)
  %76 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %77 = call i32 @zssync(%struct.uart_pmac_port* %76)
  %78 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %79 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %85 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %163

87:                                               ; preds = %58
  %88 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %89 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = icmp eq %struct.TYPE_5__* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %156

94:                                               ; preds = %87
  %95 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %96 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store %struct.circ_buf* %99, %struct.circ_buf** %3, align 8
  %100 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %101 = call i64 @uart_circ_empty(%struct.circ_buf* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %105 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %104, i32 0, i32 0
  %106 = call i32 @uart_write_wakeup(%struct.TYPE_7__* %105)
  br label %156

107:                                              ; preds = %94
  %108 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %109 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %108, i32 0, i32 0
  %110 = call i64 @uart_tx_stopped(%struct.TYPE_7__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %156

113:                                              ; preds = %107
  %114 = load i32, i32* @PMACZILOG_FLAG_TX_ACTIVE, align 4
  %115 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %116 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %120 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %121 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %124 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @write_zsdata(%struct.uart_pmac_port* %119, i64 %127)
  %129 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %130 = call i32 @zssync(%struct.uart_pmac_port* %129)
  %131 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %132 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  %135 = load i32, i32* @UART_XMIT_SIZE, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = and i64 %134, %137
  %139 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %140 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %142 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %148 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %147)
  %149 = load i64, i64* @WAKEUP_CHARS, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %113
  %152 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %153 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %152, i32 0, i32 0
  %154 = call i32 @uart_write_wakeup(%struct.TYPE_7__* %153)
  br label %155

155:                                              ; preds = %151, %113
  br label %163

156:                                              ; preds = %112, %103, %93, %51
  %157 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %158 = load i32, i32* @R0, align 4
  %159 = load i32, i32* @RES_Tx_P, align 4
  %160 = call i32 @write_zsreg(%struct.uart_pmac_port* %157, i32 %158, i32 %159)
  %161 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %2, align 8
  %162 = call i32 @zssync(%struct.uart_pmac_port* %161)
  br label %163

163:                                              ; preds = %156, %155, %64, %23, %8
  ret void
}

declare dso_local i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_CONS(%struct.uart_pmac_port*) #1

declare dso_local zeroext i8 @read_zsreg(%struct.uart_pmac_port*, i32) #1

declare dso_local i64 @ZS_REGS_HELD(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_load_zsregs(%struct.uart_pmac_port*, i32) #1

declare dso_local i64 @ZS_TX_STOPPED(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsdata(%struct.uart_pmac_port*, i64) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_7__*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_7__*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
