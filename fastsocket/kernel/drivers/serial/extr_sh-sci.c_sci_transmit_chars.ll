; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i8, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i8*, i64 }

@SCxSR = common dso_local global i32 0, align 4
@SCSCR = common dso_local global i32 0, align 4
@SCI_CTRL_FLAGS_TIE = common dso_local global i16 0, align 2
@PORT_SCI = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@SCxTDR = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sci_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_transmit_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %3, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = call i32 @uart_tx_stopped(%struct.uart_port* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load i32, i32* @SCxSR, align 4
  %17 = call zeroext i16 @sci_in(%struct.uart_port* %15, i32 %16)
  store i16 %17, i16* %5, align 2
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = call zeroext i16 @SCxSR_TDxE(%struct.uart_port* %20)
  %22 = zext i16 %21 to i32
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %1
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* @SCSCR, align 4
  %28 = call zeroext i16 @sci_in(%struct.uart_port* %26, i32 %27)
  store i16 %28, i16* %6, align 2
  %29 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %30 = call i64 @uart_circ_empty(%struct.circ_buf* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i16, i16* @SCI_CTRL_FLAGS_TIE, align 2
  %34 = zext i16 %33 to i32
  %35 = xor i32 %34, -1
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, %35
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %6, align 2
  br label %47

40:                                               ; preds = %25
  %41 = load i16, i16* @SCI_CTRL_FLAGS_TIE, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %6, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %6, align 2
  br label %47

47:                                               ; preds = %40, %32
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = load i32, i32* @SCSCR, align 4
  %50 = load i16, i16* %6, align 2
  %51 = call i32 @sci_out(%struct.uart_port* %48, i32 %49, i16 zeroext %50)
  br label %168

52:                                               ; preds = %1
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PORT_SCI, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = call i32 @sci_txroom(%struct.uart_port* %59)
  store i32 %60, i32* %7, align 4
  br label %64

61:                                               ; preds = %52
  %62 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %63 = call i32 @scif_txroom(%struct.uart_port* %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %115, %64
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 8
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 8
  store i8 %73, i8* %8, align 1
  %74 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 1
  store i8 0, i8* %75, align 8
  br label %104

76:                                               ; preds = %65
  %77 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %78 = call i64 @uart_circ_empty(%struct.circ_buf* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %102, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %80
  %84 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %85 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %88 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %8, align 1
  %92 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %93 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  %96 = load i32, i32* @UART_XMIT_SIZE, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = and i64 %95, %98
  %100 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %101 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %103

102:                                              ; preds = %80, %76
  br label %119

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103, %70
  %105 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %106 = load i32, i32* @SCxTDR, align 4
  %107 = load i8, i8* %8, align 1
  %108 = zext i8 %107 to i16
  %109 = call i32 @sci_out(%struct.uart_port* %105, i32 %106, i16 zeroext %108)
  %110 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %7, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %65, label %119

119:                                              ; preds = %115, %102
  %120 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %121 = load i32, i32* @SCxSR, align 4
  %122 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %123 = call zeroext i16 @SCxSR_TDxE_CLEAR(%struct.uart_port* %122)
  %124 = call i32 @sci_out(%struct.uart_port* %120, i32 %121, i16 zeroext %123)
  %125 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %126 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %125)
  %127 = load i64, i64* @WAKEUP_CHARS, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %131 = call i32 @uart_write_wakeup(%struct.uart_port* %130)
  br label %132

132:                                              ; preds = %129, %119
  %133 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %134 = call i64 @uart_circ_empty(%struct.circ_buf* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %138 = call i32 @sci_stop_tx(%struct.uart_port* %137)
  br label %168

139:                                              ; preds = %132
  %140 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %141 = load i32, i32* @SCSCR, align 4
  %142 = call zeroext i16 @sci_in(%struct.uart_port* %140, i32 %141)
  store i16 %142, i16* %6, align 2
  %143 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %144 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PORT_SCI, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %139
  %149 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %150 = load i32, i32* @SCxSR, align 4
  %151 = call zeroext i16 @sci_in(%struct.uart_port* %149, i32 %150)
  %152 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %153 = load i32, i32* @SCxSR, align 4
  %154 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %155 = call zeroext i16 @SCxSR_TDxE_CLEAR(%struct.uart_port* %154)
  %156 = call i32 @sci_out(%struct.uart_port* %152, i32 %153, i16 zeroext %155)
  br label %157

157:                                              ; preds = %148, %139
  %158 = load i16, i16* @SCI_CTRL_FLAGS_TIE, align 2
  %159 = zext i16 %158 to i32
  %160 = load i16, i16* %6, align 2
  %161 = zext i16 %160 to i32
  %162 = or i32 %161, %159
  %163 = trunc i32 %162 to i16
  store i16 %163, i16* %6, align 2
  %164 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %165 = load i32, i32* @SCSCR, align 4
  %166 = load i16, i16* %6, align 2
  %167 = call i32 @sci_out(%struct.uart_port* %164, i32 %165, i16 zeroext %166)
  br label %168

168:                                              ; preds = %47, %157, %136
  ret void
}

declare dso_local i32 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local zeroext i16 @sci_in(%struct.uart_port*, i32) #1

declare dso_local zeroext i16 @SCxSR_TDxE(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @sci_out(%struct.uart_port*, i32, i16 zeroext) #1

declare dso_local i32 @sci_txroom(%struct.uart_port*) #1

declare dso_local i32 @scif_txroom(%struct.uart_port*) #1

declare dso_local zeroext i16 @SCxSR_TDxE_CLEAR(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @sci_stop_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
