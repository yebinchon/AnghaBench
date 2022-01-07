; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sn_console.c_sn_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sn_console.c_sn_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_cons_port = type { %struct.TYPE_10__, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i32, i8* }
%struct.TYPE_8__ = type { i32 (i8*, i32)*, i32 (i8*, i32)* }

@SAL_CONSOLE_INTR_XMIT = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@TRANSMIT_RAW = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sn_cons_port*, i32)* @sn_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn_transmit_chars(%struct.sn_cons_port* %0, i32 %1) #0 {
  %3 = alloca %struct.sn_cons_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.circ_buf*, align 8
  store %struct.sn_cons_port* %0, %struct.sn_cons_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %14 = icmp ne %struct.sn_cons_port* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %160

16:                                               ; preds = %2
  %17 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %18 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %25 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %31 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store %struct.circ_buf* %34, %struct.circ_buf** %12, align 8
  br label %36

35:                                               ; preds = %16
  br label %160

36:                                               ; preds = %29
  %37 = load %struct.circ_buf*, %struct.circ_buf** %12, align 8
  %38 = call i64 @uart_circ_empty(%struct.circ_buf* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %42 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %41, i32 0, i32 0
  %43 = call i64 @uart_tx_stopped(%struct.TYPE_10__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %36
  %46 = load i32, i32* @SAL_CONSOLE_INTR_XMIT, align 4
  %47 = call i32 @ia64_sn_console_intr_disable(i32 %46)
  br label %160

48:                                               ; preds = %40
  %49 = load %struct.circ_buf*, %struct.circ_buf** %12, align 8
  %50 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  %52 = load %struct.circ_buf*, %struct.circ_buf** %12, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.circ_buf*, %struct.circ_buf** %12, align 8
  %56 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8* %60, i8** %11, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 2, i32 1
  store i32 %65, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %140, %48
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %143

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @UART_XMIT_SIZE, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %75, %76
  br label %82

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %79, %80
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i32 [ %77, %74 ], [ %81, %78 ]
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %139

86:                                               ; preds = %82
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @TRANSMIT_RAW, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %92 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32 (i8*, i32)*, i32 (i8*, i32)** %94, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 %95(i8* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  br label %108

99:                                               ; preds = %86
  %100 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %101 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32 (i8*, i32)*, i32 (i8*, i32)** %103, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 %104(i8* %105, i32 %106)
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %99, %90
  %109 = load i32, i32* %10, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %117 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, %115
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* @UART_XMIT_SIZE, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.circ_buf*, %struct.circ_buf** %12, align 8
  %131 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.circ_buf*, %struct.circ_buf** %12, align 8
  %133 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8* %137, i8** %11, align 8
  br label %138

138:                                              ; preds = %111, %108
  br label %139

139:                                              ; preds = %138, %82
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %66

143:                                              ; preds = %66
  %144 = load %struct.circ_buf*, %struct.circ_buf** %12, align 8
  %145 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %144)
  %146 = load i64, i64* @WAKEUP_CHARS, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %150 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %149, i32 0, i32 0
  %151 = call i32 @uart_write_wakeup(%struct.TYPE_10__* %150)
  br label %152

152:                                              ; preds = %148, %143
  %153 = load %struct.circ_buf*, %struct.circ_buf** %12, align 8
  %154 = call i64 @uart_circ_empty(%struct.circ_buf* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load %struct.sn_cons_port*, %struct.sn_cons_port** %3, align 8
  %158 = getelementptr inbounds %struct.sn_cons_port, %struct.sn_cons_port* %157, i32 0, i32 0
  %159 = call i32 @snp_stop_tx(%struct.TYPE_10__* %158)
  br label %160

160:                                              ; preds = %15, %35, %45, %156, %152
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_10__*) #1

declare dso_local i32 @ia64_sn_console_intr_disable(i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_10__*) #1

declare dso_local i32 @snp_stop_tx(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
