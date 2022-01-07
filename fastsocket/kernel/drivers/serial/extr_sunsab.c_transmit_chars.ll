; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsab_port = type { i32, %struct.TYPE_16__, %struct.TYPE_15__*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%union.sab82532_irq_status = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@SAB82532_ISR1_ALLS = common dso_local global i32 0, align 4
@SAB82532_IMR1_ALLS = common dso_local global i32 0, align 4
@SAB82532_ALLS = common dso_local global i32 0, align 4
@SAB82532_STAR_XFW = common dso_local global i32 0, align 4
@SAB82532_XPR = common dso_local global i32 0, align 4
@SAB82532_IMR1_XPR = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@SAB82532_CMDR_XF = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@SAB82532_ISR1_XPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsab_port*, %union.sab82532_irq_status*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.uart_sunsab_port* %0, %union.sab82532_irq_status* %1) #0 {
  %3 = alloca %struct.uart_sunsab_port*, align 8
  %4 = alloca %union.sab82532_irq_status*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_sunsab_port* %0, %struct.uart_sunsab_port** %3, align 8
  store %union.sab82532_irq_status* %1, %union.sab82532_irq_status** %4, align 8
  %7 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store %struct.circ_buf* %11, %struct.circ_buf** %5, align 8
  %12 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %4, align 8
  %13 = bitcast %union.sab82532_irq_status* %12 to %struct.TYPE_11__*
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SAB82532_ISR1_ALLS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load i32, i32* @SAB82532_IMR1_ALLS, align 4
  %21 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %28, i32 0, i32 2
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = call i32 @writeb(i32 %27, i32* %32)
  %34 = load i32, i32* @SAB82532_ALLS, align 4
  %35 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %35, i32 0, i32 3
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %19, %2
  %39 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %40 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %39, i32 0, i32 2
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = call i32 @readb(i32* %43)
  %45 = load i32, i32* @SAB82532_STAR_XFW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %181

49:                                               ; preds = %38
  %50 = load i32, i32* @SAB82532_XPR, align 4
  %51 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %52 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %51, i32 0, i32 3
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %55 = call i32 @sunsab_tx_idle(%struct.uart_sunsab_port* %54)
  %56 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %57 = call i64 @uart_circ_empty(%struct.circ_buf* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %49
  %60 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %61 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %60, i32 0, i32 1
  %62 = call i64 @uart_tx_stopped(%struct.TYPE_16__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59, %49
  %65 = load i32, i32* @SAB82532_IMR1_XPR, align 4
  %66 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %67 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %71 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %74 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %73, i32 0, i32 2
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = call i32 @writeb(i32 %72, i32* %77)
  br label %181

79:                                               ; preds = %59
  %80 = load i32, i32* @SAB82532_IMR1_ALLS, align 4
  %81 = load i32, i32* @SAB82532_IMR1_XPR, align 4
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %85 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %92 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %91, i32 0, i32 2
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = call i32 @writeb(i32 %90, i32* %95)
  %97 = load i32, i32* @SAB82532_ALLS, align 4
  %98 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %99 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %98, i32 0, i32 3
  %100 = call i32 @clear_bit(i32 %97, i32* %99)
  %101 = load i32, i32* @SAB82532_XPR, align 4
  %102 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %103 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %102, i32 0, i32 3
  %104 = call i32 @clear_bit(i32 %101, i32* %103)
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %152, %79
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %108 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %155

112:                                              ; preds = %105
  %113 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %114 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %117 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %122 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %121, i32 0, i32 2
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i32 @writeb(i32 %120, i32* %129)
  %131 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %132 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  %135 = load i32, i32* @UART_XMIT_SIZE, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = and i64 %134, %137
  %139 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %140 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %142 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %148 = call i64 @uart_circ_empty(%struct.circ_buf* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %112
  br label %155

151:                                              ; preds = %112
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %105

155:                                              ; preds = %150, %105
  %156 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %157 = call i32 @sunsab_cec_wait(%struct.uart_sunsab_port* %156)
  %158 = load i32, i32* @SAB82532_CMDR_XF, align 4
  %159 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %160 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %159, i32 0, i32 2
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = call i32 @writeb(i32 %158, i32* %163)
  %165 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %166 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %165)
  %167 = load i64, i64* @WAKEUP_CHARS, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %155
  %170 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %171 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %170, i32 0, i32 1
  %172 = call i32 @uart_write_wakeup(%struct.TYPE_16__* %171)
  br label %173

173:                                              ; preds = %169, %155
  %174 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %175 = call i64 @uart_circ_empty(%struct.circ_buf* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %179 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %178, i32 0, i32 1
  %180 = call i32 @sunsab_stop_tx(%struct.TYPE_16__* %179)
  br label %181

181:                                              ; preds = %48, %64, %177, %173
  ret void
}

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @sunsab_tx_idle(%struct.uart_sunsab_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_16__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sunsab_cec_wait(%struct.uart_sunsab_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_16__*) #1

declare dso_local i32 @sunsab_stop_tx(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
