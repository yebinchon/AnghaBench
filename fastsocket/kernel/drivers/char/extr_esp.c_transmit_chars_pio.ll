; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_transmit_chars_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_transmit_chars_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i32, i32, i32, %struct.TYPE_2__, i64, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.esp_pio_buffer = type { i32* }

@ESP_XMIT_SIZE = common dso_local global i32 0, align 4
@UART_ESI_TX = common dso_local global i64 0, align 8
@UART_ESI_CMD1 = common dso_local global i64 0, align 8
@ESI_NO_COMMAND = common dso_local global i32 0, align 4
@ESI_GET_TX_AVAIL = common dso_local global i32 0, align 4
@UART_ESI_STAT1 = common dso_local global i32 0, align 4
@UART_ESI_STAT2 = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@ESI_SET_SRV_MASK = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*, i32)* @transmit_chars_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars_pio(%struct.esp_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.esp_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.esp_pio_buffer*, align 8
  store %struct.esp_struct* %0, %struct.esp_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.esp_pio_buffer* (...) @get_pio_buffer()
  store %struct.esp_pio_buffer* %7, %struct.esp_pio_buffer** %6, align 8
  %8 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %6, align 8
  %9 = icmp ne %struct.esp_pio_buffer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %209

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %164, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %17 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %165

22:                                               ; preds = %20
  %23 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %24 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %35 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %38 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @memcpy(i32* %33, i32* %41, i32 %42)
  br label %76

44:                                               ; preds = %22
  %45 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %46 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %47 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %54 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %57 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @memcpy(i32* %52, i32* %60, i32 %61)
  %63 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %70 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @memcpy(i32* %68, i32* %71, i32 %74)
  br label %76

76:                                               ; preds = %44, %30
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %79 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %83 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %86, %88
  %90 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %91 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %112, %76
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %6, align 8
  %99 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = bitcast i32* %103 to i16*
  %105 = load i16, i16* %104, align 2
  %106 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %107 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @UART_ESI_TX, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outw(i16 zeroext %105, i64 %110)
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 2
  store i32 %114, i32* %5, align 4
  br label %92

115:                                              ; preds = %92
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %121 = load i64, i64* @UART_ESI_TX, align 8
  %122 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %6, align 8
  %123 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @serial_out(%struct.esp_struct* %120, i64 %121, i32 %129)
  br label %131

131:                                              ; preds = %119, %115
  %132 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %133 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %131
  %137 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %138 = load i64, i64* @UART_ESI_CMD1, align 8
  %139 = load i32, i32* @ESI_NO_COMMAND, align 4
  %140 = call i32 @serial_out(%struct.esp_struct* %137, i64 %138, i32 %139)
  %141 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %142 = load i64, i64* @UART_ESI_CMD1, align 8
  %143 = load i32, i32* @ESI_GET_TX_AVAIL, align 4
  %144 = call i32 @serial_out(%struct.esp_struct* %141, i64 %142, i32 %143)
  %145 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %146 = load i32, i32* @UART_ESI_STAT1, align 4
  %147 = call i32 @serial_in(%struct.esp_struct* %145, i32 %146)
  %148 = shl i32 %147, 8
  store i32 %148, i32* %4, align 4
  %149 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %150 = load i32, i32* @UART_ESI_STAT2, align 4
  %151 = call i32 @serial_in(%struct.esp_struct* %149, i32 %150)
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %156 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %136
  %160 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %161 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %159, %136
  br label %164

164:                                              ; preds = %163, %131
  br label %12

165:                                              ; preds = %20
  %166 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %167 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @WAKEUP_CHARS, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %206

171:                                              ; preds = %165
  %172 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %173 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %179 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @tty_wakeup(i64 %181)
  br label %183

183:                                              ; preds = %177, %171
  %184 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %185 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sle i32 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %183
  %189 = load i32, i32* @UART_IER_THRI, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %192 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %196 = load i64, i64* @UART_ESI_CMD1, align 8
  %197 = load i32, i32* @ESI_SET_SRV_MASK, align 4
  %198 = call i32 @serial_out(%struct.esp_struct* %195, i64 %196, i32 %197)
  %199 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %200 = load i64, i64* @UART_ESI_CMD2, align 8
  %201 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %202 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @serial_out(%struct.esp_struct* %199, i64 %200, i32 %203)
  br label %205

205:                                              ; preds = %188, %183
  br label %206

206:                                              ; preds = %205, %165
  %207 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %6, align 8
  %208 = call i32 @release_pio_buffer(%struct.esp_pio_buffer* %207)
  br label %209

209:                                              ; preds = %206, %10
  ret void
}

declare dso_local %struct.esp_pio_buffer* @get_pio_buffer(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i64, i32) #1

declare dso_local i32 @serial_in(%struct.esp_struct*, i32) #1

declare dso_local i32 @tty_wakeup(i64) #1

declare dso_local i32 @release_pio_buffer(%struct.esp_pio_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
