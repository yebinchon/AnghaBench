; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsu.c_sunsu_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.uart_port = type { i32 }
%struct.uart_sunsu_port = type { i64, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32 }

@PORT_16C950 = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_EFR_ECB = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_CSR = common dso_local global i32 0, align 4
@uart_config = common dso_local global %struct.TYPE_3__* null, align 8
@UART_CLEAR_FIFO = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@UPF_BUGGY_UART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ttyS%d: LSR safety check engaged!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SU_PORT_PORT = common dso_local global i64 0, align 8
@sunsu_kbd_ms_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@su_typev = common dso_local global i32* null, align 8
@sunsu_serial_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"su: Cannot register IRQ %d\0A\00", align 1
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UPF_FOURPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sunsu_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunsu_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_sunsu_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = bitcast %struct.uart_port* %8 to %struct.uart_sunsu_port*
  store %struct.uart_sunsu_port* %9, %struct.uart_sunsu_port** %4, align 8
  %10 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %11 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PORT_16C950, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %1
  %17 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %20 = load i32, i32* @UART_LCR, align 4
  %21 = call i32 @serial_outp(%struct.uart_sunsu_port* %19, i32 %20, i32 191)
  %22 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %23 = load i32, i32* @UART_EFR, align 4
  %24 = load i32, i32* @UART_EFR_ECB, align 4
  %25 = call i32 @serial_outp(%struct.uart_sunsu_port* %22, i32 %23, i32 %24)
  %26 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %27 = load i32, i32* @UART_IER, align 4
  %28 = call i32 @serial_outp(%struct.uart_sunsu_port* %26, i32 %27, i32 0)
  %29 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %30 = load i32, i32* @UART_LCR, align 4
  %31 = call i32 @serial_outp(%struct.uart_sunsu_port* %29, i32 %30, i32 0)
  %32 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %33 = load i32, i32* @UART_CSR, align 4
  %34 = call i32 @serial_icr_write(%struct.uart_sunsu_port* %32, i32 %33, i32 0)
  %35 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %36 = load i32, i32* @UART_LCR, align 4
  %37 = call i32 @serial_outp(%struct.uart_sunsu_port* %35, i32 %36, i32 191)
  %38 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %39 = load i32, i32* @UART_EFR, align 4
  %40 = load i32, i32* @UART_EFR_ECB, align 4
  %41 = call i32 @serial_outp(%struct.uart_sunsu_port* %38, i32 %39, i32 %40)
  %42 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %43 = load i32, i32* @UART_LCR, align 4
  %44 = call i32 @serial_outp(%struct.uart_sunsu_port* %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %16, %1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @uart_config, align 8
  %47 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UART_CLEAR_FIFO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %45
  %58 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %59 = load i32, i32* @UART_FCR, align 4
  %60 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %61 = call i32 @serial_outp(%struct.uart_sunsu_port* %58, i32 %59, i32 %60)
  %62 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %63 = load i32, i32* @UART_FCR, align 4
  %64 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %65 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @serial_outp(%struct.uart_sunsu_port* %62, i32 %63, i32 %68)
  %70 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %71 = load i32, i32* @UART_FCR, align 4
  %72 = call i32 @serial_outp(%struct.uart_sunsu_port* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %57, %45
  %74 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %75 = load i32, i32* @UART_LSR, align 4
  %76 = call i32 @serial_inp(%struct.uart_sunsu_port* %74, i32 %75)
  %77 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %78 = load i32, i32* @UART_RX, align 4
  %79 = call i32 @serial_inp(%struct.uart_sunsu_port* %77, i32 %78)
  %80 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %81 = load i32, i32* @UART_IIR, align 4
  %82 = call i32 @serial_inp(%struct.uart_sunsu_port* %80, i32 %81)
  %83 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %84 = load i32, i32* @UART_MSR, align 4
  %85 = call i32 @serial_inp(%struct.uart_sunsu_port* %83, i32 %84)
  %86 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %87 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @UPF_BUGGY_UART, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %73
  %94 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %95 = load i32, i32* @UART_LSR, align 4
  %96 = call i32 @serial_inp(%struct.uart_sunsu_port* %94, i32 %95)
  %97 = icmp eq i32 %96, 255
  br i1 %97, label %98, label %106

98:                                               ; preds = %93
  %99 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %100 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %222

106:                                              ; preds = %93, %73
  %107 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %108 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SU_PORT_PORT, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %106
  %113 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %114 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @sunsu_kbd_ms_interrupt, align 4
  %118 = load i32, i32* @IRQF_SHARED, align 4
  %119 = load i32*, i32** @su_typev, align 8
  %120 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %121 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %126 = call i32 @request_irq(i32 %116, i32 %117, i32 %118, i32 %124, %struct.uart_sunsu_port* %125)
  store i32 %126, i32* %6, align 4
  br label %142

127:                                              ; preds = %106
  %128 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %129 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @sunsu_serial_interrupt, align 4
  %133 = load i32, i32* @IRQF_SHARED, align 4
  %134 = load i32*, i32** @su_typev, align 8
  %135 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %136 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %141 = call i32 @request_irq(i32 %131, i32 %132, i32 %133, i32 %139, %struct.uart_sunsu_port* %140)
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %127, %112
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %147 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %222

152:                                              ; preds = %142
  %153 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %154 = load i32, i32* @UART_LCR, align 4
  %155 = load i32, i32* @UART_LCR_WLEN8, align 4
  %156 = call i32 @serial_outp(%struct.uart_sunsu_port* %153, i32 %154, i32 %155)
  %157 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %158 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i64, i64* %5, align 8
  %161 = call i32 @spin_lock_irqsave(i32* %159, i64 %160)
  %162 = load i32, i32* @TIOCM_OUT2, align 4
  %163 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %164 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %162
  store i32 %167, i32* %165, align 4
  %168 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %169 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %168, i32 0, i32 2
  %170 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %171 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @sunsu_set_mctrl(%struct.TYPE_4__* %169, i32 %173)
  %175 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %176 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i64, i64* %5, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load i32, i32* @UART_IER_RLSI, align 4
  %181 = load i32, i32* @UART_IER_RDI, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %184 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %186 = load i32, i32* @UART_IER, align 4
  %187 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %188 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @serial_outp(%struct.uart_sunsu_port* %185, i32 %186, i32 %189)
  %191 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %192 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @UPF_FOURPORT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %152
  %199 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %200 = getelementptr inbounds %struct.uart_sunsu_port, %struct.uart_sunsu_port* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 4064
  %204 = or i32 %203, 31
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @outb_p(i32 128, i32 %205)
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @inb_p(i32 %207)
  br label %209

209:                                              ; preds = %198, %152
  %210 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %211 = load i32, i32* @UART_LSR, align 4
  %212 = call i32 @serial_inp(%struct.uart_sunsu_port* %210, i32 %211)
  %213 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %214 = load i32, i32* @UART_RX, align 4
  %215 = call i32 @serial_inp(%struct.uart_sunsu_port* %213, i32 %214)
  %216 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %217 = load i32, i32* @UART_IIR, align 4
  %218 = call i32 @serial_inp(%struct.uart_sunsu_port* %216, i32 %217)
  %219 = load %struct.uart_sunsu_port*, %struct.uart_sunsu_port** %4, align 8
  %220 = load i32, i32* @UART_MSR, align 4
  %221 = call i32 @serial_inp(%struct.uart_sunsu_port* %219, i32 %220)
  store i32 0, i32* %2, align 4
  br label %222

222:                                              ; preds = %209, %145, %98
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i32 @serial_outp(%struct.uart_sunsu_port*, i32, i32) #1

declare dso_local i32 @serial_icr_write(%struct.uart_sunsu_port*, i32, i32) #1

declare dso_local i32 @serial_inp(%struct.uart_sunsu_port*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_sunsu_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sunsu_set_mctrl(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
