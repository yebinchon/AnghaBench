; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_sio_port = type { i8, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@UART_LCR_WLEN5 = common dso_local global i8 0, align 1
@UART_LCR_WLEN6 = common dso_local global i8 0, align 1
@UART_LCR_WLEN7 = common dso_local global i8 0, align 1
@UART_LCR_WLEN8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@UART_LCR_STOP = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i8 0, align 1
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
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
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @m32r_sio_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m32r_sio_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_sio_port*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = bitcast %struct.uart_port* %12 to %struct.uart_sio_port*
  store %struct.uart_sio_port* %13, %struct.uart_sio_port** %7, align 8
  store i8 0, i8* %8, align 1
  %14 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CSIZE, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %25 [
    i32 131, label %19
    i32 130, label %21
    i32 129, label %23
    i32 128, label %26
  ]

19:                                               ; preds = %3
  %20 = load i8, i8* @UART_LCR_WLEN5, align 1
  store i8 %20, i8* %8, align 1
  br label %28

21:                                               ; preds = %3
  %22 = load i8, i8* @UART_LCR_WLEN6, align 1
  store i8 %22, i8* %8, align 1
  br label %28

23:                                               ; preds = %3
  %24 = load i8, i8* @UART_LCR_WLEN7, align 1
  store i8 %24, i8* %8, align 1
  br label %28

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %3, %25
  %27 = load i8, i8* @UART_LCR_WLEN8, align 1
  store i8 %27, i8* %8, align 1
  br label %28

28:                                               ; preds = %26, %23, %21, %19
  %29 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %30 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CSTOPB, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i8, i8* @UART_LCR_STOP, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PARENB, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i8, i8* @UART_LCR_PARITY, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %8, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, %51
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %8, align 1
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %58 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PARODD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load i8, i8* @UART_LCR_EPAR, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %8, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %8, align 1
  br label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %72 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %73 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %74 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 16
  %78 = call i32 @uart_get_baud_rate(%struct.uart_port* %71, %struct.ktermios* %72, %struct.ktermios* %73, i32 0, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @m32r_sio_get_divisor(%struct.uart_port* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %83 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @sio_set_baud_rate(i32 %87)
  %89 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %90 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %91 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @uart_update_timeout(%struct.uart_port* %89, i32 %92, i32 %93)
  %95 = load i32, i32* @UART_LSR_OE, align 4
  %96 = load i32, i32* @UART_LSR_THRE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @UART_LSR_DR, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %101 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %104 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @INPCK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %70
  %110 = load i32, i32* @UART_LSR_FE, align 4
  %111 = load i32, i32* @UART_LSR_PE, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %114 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %109, %70
  %119 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %120 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @BRKINT, align 4
  %123 = load i32, i32* @PARMRK, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load i32, i32* @UART_LSR_BI, align 4
  %129 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %130 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %128
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %118
  %135 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %136 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 0, i32* %137, align 4
  %138 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %139 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IGNPAR, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %134
  %145 = load i32, i32* @UART_LSR_PE, align 4
  %146 = load i32, i32* @UART_LSR_FE, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %149 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %147
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %144, %134
  %154 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %155 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IGNBRK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %153
  %161 = load i32, i32* @UART_LSR_BI, align 4
  %162 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %163 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %161
  store i32 %166, i32* %164, align 4
  %167 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %168 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @IGNPAR, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %160
  %174 = load i32, i32* @UART_LSR_OE, align 4
  %175 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %176 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %174
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %173, %160
  br label %181

181:                                              ; preds = %180, %153
  %182 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %183 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @CREAD, align 4
  %186 = and i32 %184, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load i32, i32* @UART_LSR_DR, align 4
  %190 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %191 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %189
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %188, %181
  %196 = load i32, i32* @UART_IER_MSI, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %199 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %203 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %202, i32 0, i32 1
  %204 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %205 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @UART_ENABLE_MS(%struct.TYPE_2__* %203, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %195
  %210 = load i32, i32* @UART_IER_MSI, align 4
  %211 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %212 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %209, %195
  %216 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %217 = load i32, i32* @UART_IER, align 4
  %218 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %219 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @serial_out(%struct.uart_sio_port* %216, i32 %217, i32 %220)
  %222 = load i8, i8* %8, align 1
  %223 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %224 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %223, i32 0, i32 0
  store i8 %222, i8* %224, align 4
  %225 = load %struct.uart_sio_port*, %struct.uart_sio_port** %7, align 8
  %226 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 2
  %228 = load i64, i64* %9, align 8
  %229 = call i32 @spin_unlock_irqrestore(i32* %227, i64 %228)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @m32r_sio_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sio_set_baud_rate(i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_sio_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
