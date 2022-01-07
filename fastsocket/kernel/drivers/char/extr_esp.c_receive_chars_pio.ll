; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_receive_chars_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_receive_chars_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.esp_pio_buffer = type { i32* }

@UART_ESI_RX = common dso_local global i64 0, align 8
@UART_ESI_RWS = common dso_local global i64 0, align 8
@ESP_STAT_RX_TIMEOUT = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@ASYNC_SAK = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*, i32)* @receive_chars_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars_pio(%struct.esp_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.esp_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.esp_pio_buffer*, align 8
  %8 = alloca %struct.esp_pio_buffer*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.esp_struct* %0, %struct.esp_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %12 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  store %struct.tty_struct* %14, %struct.tty_struct** %5, align 8
  %15 = call %struct.esp_pio_buffer* (...) @get_pio_buffer()
  store %struct.esp_pio_buffer* %15, %struct.esp_pio_buffer** %7, align 8
  %16 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %7, align 8
  %17 = icmp ne %struct.esp_pio_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %239

19:                                               ; preds = %2
  %20 = call %struct.esp_pio_buffer* (...) @get_pio_buffer()
  store %struct.esp_pio_buffer* %20, %struct.esp_pio_buffer** %8, align 8
  %21 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %22 = icmp ne %struct.esp_pio_buffer* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %7, align 8
  %25 = call i32 @release_pio_buffer(%struct.esp_pio_buffer* %24)
  br label %239

26:                                               ; preds = %19
  %27 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %28 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 2
  %31 = and i32 %30, 7
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %9, align 1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %89, %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %33
  %39 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %40 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UART_ESI_RX, align 8
  %43 = add nsw i64 %41, %42
  %44 = call zeroext i16 @inw(i64 %43)
  %45 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %7, align 8
  %46 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = bitcast i32* %50 to i16*
  store i16 %44, i16* %51, align 2
  %52 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %53 = load i64, i64* @UART_ESI_RWS, align 8
  %54 = call i32 @serial_in(%struct.esp_struct* %52, i64 %53)
  %55 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %56 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %62 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 3
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %73 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %71, i32* %78, align 4
  %79 = load i8, i8* %9, align 1
  %80 = zext i8 %79 to i32
  %81 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %82 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %80
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %38
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %6, align 4
  br label %33

92:                                               ; preds = %33
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %92
  %97 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %98 = load i64, i64* @UART_ESI_RX, align 8
  %99 = call i32 @serial_in(%struct.esp_struct* %97, i64 %98)
  %100 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %7, align 8
  %101 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %99, i32* %106, align 4
  %107 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %108 = load i64, i64* @UART_ESI_RWS, align 8
  %109 = call i32 @serial_in(%struct.esp_struct* %107, i64 %108)
  %110 = ashr i32 %109, 3
  %111 = load i8, i8* %9, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %110, %112
  %114 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %115 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %113, i32* %120, align 4
  br label %121

121:                                              ; preds = %96, %92
  %122 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %123 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load %struct.tty_struct*, %struct.tty_struct** %124, align 8
  store %struct.tty_struct* %125, %struct.tty_struct** %5, align 8
  %126 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %127 = icmp ne %struct.tty_struct* %126, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %121
  %129 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %7, align 8
  %130 = call i32 @release_pio_buffer(%struct.esp_pio_buffer* %129)
  %131 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %132 = call i32 @release_pio_buffer(%struct.esp_pio_buffer* %131)
  %133 = load i32, i32* @ESP_STAT_RX_TIMEOUT, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %136 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %239

139:                                              ; preds = %121
  %140 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %141 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 2
  %144 = and i32 %143, 7
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %9, align 1
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %223, %139
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %226

150:                                              ; preds = %146
  %151 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %152 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i8, i8* %9, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %222, label %162

162:                                              ; preds = %150
  store i32 0, i32* %10, align 4
  %163 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %164 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %162
  %173 = load i32, i32* @TTY_BREAK, align 4
  store i32 %173, i32* %10, align 4
  %174 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %175 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @ASYNC_SAK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %172
  %182 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %183 = call i32 @do_SAK(%struct.tty_struct* %182)
  br label %184

184:                                              ; preds = %181, %172
  br label %211

185:                                              ; preds = %162
  %186 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %187 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 2
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %185
  %196 = load i32, i32* @TTY_FRAME, align 4
  store i32 %196, i32* %10, align 4
  br label %210

197:                                              ; preds = %185
  %198 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %199 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 1
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %197
  %208 = load i32, i32* @TTY_PARITY, align 4
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %207, %197
  br label %210

210:                                              ; preds = %209, %195
  br label %211

211:                                              ; preds = %210, %184
  %212 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %213 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %7, align 8
  %214 = getelementptr inbounds %struct.esp_pio_buffer, %struct.esp_pio_buffer* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @tty_insert_flip_char(%struct.tty_struct* %212, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %211, %150
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %146

226:                                              ; preds = %146
  %227 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %228 = call i32 @tty_schedule_flip(%struct.tty_struct* %227)
  %229 = load i32, i32* @ESP_STAT_RX_TIMEOUT, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %232 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %7, align 8
  %236 = call i32 @release_pio_buffer(%struct.esp_pio_buffer* %235)
  %237 = load %struct.esp_pio_buffer*, %struct.esp_pio_buffer** %8, align 8
  %238 = call i32 @release_pio_buffer(%struct.esp_pio_buffer* %237)
  br label %239

239:                                              ; preds = %226, %128, %23, %18
  ret void
}

declare dso_local %struct.esp_pio_buffer* @get_pio_buffer(...) #1

declare dso_local i32 @release_pio_buffer(%struct.esp_pio_buffer*) #1

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local i32 @serial_in(%struct.esp_struct*, i64) #1

declare dso_local i32 @do_SAK(%struct.tty_struct*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @tty_schedule_flip(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
