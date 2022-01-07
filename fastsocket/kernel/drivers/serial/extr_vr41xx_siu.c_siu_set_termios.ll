; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_vr41xx_siu.c_siu_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_vr41xx_siu.c_siu_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@UART_LCR_WLEN5 = common dso_local global i32 0, align 4
@UART_LCR_WLEN6 = common dso_local global i32 0, align 4
@UART_LCR_WLEN7 = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UART_LCR_STOP = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_R_TRIG_10 = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @siu_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siu_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %15 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %16 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CSIZE, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %27 [
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @UART_LCR_WLEN5, align 4
  store i32 %22, i32* %9, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @UART_LCR_WLEN6, align 4
  store i32 %24, i32* %9, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @UART_LCR_WLEN7, align 4
  store i32 %26, i32* %9, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @UART_LCR_WLEN8, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %25, %23, %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @CSTOPB, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @UART_LCR_STOP, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PARENB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @UART_LCR_PARITY, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PARODD, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @PARODD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @UART_LCR_EPAR, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CMSPAR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @UART_LCR_SPAR, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %68 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %69 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %70 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 16
  %74 = call i32 @uart_get_baud_rate(%struct.uart_port* %67, %struct.ktermios* %68, %struct.ktermios* %69, i32 0, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @uart_get_divisor(%struct.uart_port* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %79 = load i32, i32* @UART_FCR_R_TRIG_10, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %10, align 4
  %81 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 3
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  %85 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @uart_update_timeout(%struct.uart_port* %85, i32 %86, i32 %87)
  %89 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %90 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @UART_LSR_THRE, align 4
  %93 = load i32, i32* @UART_LSR_OE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @UART_LSR_DR, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @INPCK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %66
  %104 = load i32, i32* @UART_LSR_FE, align 4
  %105 = load i32, i32* @UART_LSR_PE, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %103, %66
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @BRKINT, align 4
  %114 = load i32, i32* @PARMRK, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* @UART_LSR_BI, align 4
  %120 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %121 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %126 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %125, i32 0, i32 2
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @IGNPAR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load i32, i32* @UART_LSR_FE, align 4
  %133 = load i32, i32* @UART_LSR_PE, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %136 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %131, %124
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @IGNBRK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %139
  %145 = load i32, i32* @UART_LSR_BI, align 4
  %146 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %147 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @IGNPAR, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load i32, i32* @UART_LSR_OE, align 4
  %156 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %157 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %144
  br label %161

161:                                              ; preds = %160, %139
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @CREAD, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* @UART_LSR_DR, align 4
  %168 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %169 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %161
  %173 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %174 = load i32, i32* @UART_IER, align 4
  %175 = call i32 @siu_read(%struct.uart_port* %173, i32 %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* @UART_IER_MSI, align 4
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %11, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %11, align 4
  %180 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i64 @UART_ENABLE_MS(%struct.uart_port* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %172
  %185 = load i32, i32* @UART_IER_MSI, align 4
  %186 = load i32, i32* %11, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %184, %172
  %189 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %190 = load i32, i32* @UART_IER, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @siu_write(%struct.uart_port* %189, i32 %190, i32 %191)
  %193 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %194 = load i32, i32* @UART_LCR, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* @UART_LCR_DLAB, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @siu_write(%struct.uart_port* %193, i32 %194, i32 %197)
  %199 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %200 = load i32, i32* @UART_DLL, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @siu_write(%struct.uart_port* %199, i32 %200, i32 %201)
  %203 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %204 = load i32, i32* @UART_DLM, align 4
  %205 = load i32, i32* %13, align 4
  %206 = lshr i32 %205, 8
  %207 = call i32 @siu_write(%struct.uart_port* %203, i32 %204, i32 %206)
  %208 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %209 = load i32, i32* @UART_LCR, align 4
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @siu_write(%struct.uart_port* %208, i32 %209, i32 %210)
  %212 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %213 = load i32, i32* @UART_FCR, align 4
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @siu_write(%struct.uart_port* %212, i32 %213, i32 %214)
  %216 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %217 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %218 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @siu_set_mctrl(%struct.uart_port* %216, i32 %219)
  %221 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %222 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %221, i32 0, i32 3
  %223 = load i64, i64* %14, align 8
  %224 = call i32 @spin_unlock_irqrestore(i32* %222, i64 %223)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @siu_read(%struct.uart_port*, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @siu_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @siu_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
