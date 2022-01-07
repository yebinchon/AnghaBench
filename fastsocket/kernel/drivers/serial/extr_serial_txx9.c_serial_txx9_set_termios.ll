; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_serial_txx9_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_serial_txx9_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_txx9_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@HUPCL = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TXX9_SILCR = common dso_local global i32 0, align 4
@TXX9_SILCR_UMODE_MASK = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@TXX9_SILCR_UMODE_7BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_UMODE_8BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_USBL_MASK = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@TXX9_SILCR_USBL_2BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_USBL_1BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_UPEN = common dso_local global i32 0, align 4
@TXX9_SILCR_UEPS = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@TXX9_SIFCR_TDIL_MAX = common dso_local global i32 0, align 4
@TXX9_SIFCR_RDIL_1 = common dso_local global i32 0, align 4
@TXX9_SIDISR_UOER = common dso_local global i32 0, align 4
@TXX9_SIDISR_TDIS = common dso_local global i32 0, align 4
@TXX9_SIDISR_RDIS = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@TXX9_SIDISR_UFER = common dso_local global i32 0, align 4
@TXX9_SIDISR_UPER = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@TXX9_SIDISR_UBRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UPF_TXX9_HAVE_CTS_LINE = common dso_local global i32 0, align 4
@TXX9_SIFLCR = common dso_local global i32 0, align 4
@TXX9_SIFLCR_RCS = common dso_local global i32 0, align 4
@TXX9_SIFLCR_TES = common dso_local global i32 0, align 4
@TXX9_SIFCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial_txx9_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_txx9_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_txx9_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = call %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port* %13)
  store %struct.uart_txx9_port* %14, %struct.uart_txx9_port** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @HUPCL, align 4
  %16 = load i32, i32* @CMSPAR, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @CLOCAL, align 4
  %24 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %25 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %29 = load i32, i32* @TXX9_SILCR, align 4
  %30 = call i32 @sio_in(%struct.uart_txx9_port* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @TXX9_SILCR_UMODE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CSIZE, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %44 [
    i32 129, label %40
    i32 131, label %45
    i32 130, label %45
    i32 128, label %45
  ]

40:                                               ; preds = %3
  %41 = load i32, i32* @TXX9_SILCR_UMODE_7BIT, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %49

44:                                               ; preds = %3
  br label %45

45:                                               ; preds = %3, %3, %3, %44
  %46 = load i32, i32* @TXX9_SILCR_UMODE_8BIT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* @TXX9_SILCR_USBL_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CSTOPB, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @TXX9_SILCR_USBL_2BIT, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %68

64:                                               ; preds = %49
  %65 = load i32, i32* @TXX9_SILCR_USBL_1BIT, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @TXX9_SILCR_UPEN, align 4
  %70 = load i32, i32* @TXX9_SILCR_UEPS, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %76 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PARENB, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i32, i32* @TXX9_SILCR_UPEN, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %68
  %86 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %87 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PARODD, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @TXX9_SILCR_UEPS, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %98 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %99 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %100 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 16
  %104 = sdiv i32 %103, 2
  %105 = call i32 @uart_get_baud_rate(%struct.uart_port* %97, %struct.ktermios* %98, %struct.ktermios* %99, i32 0, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @uart_get_divisor(%struct.uart_port* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* @TXX9_SIFCR_TDIL_MAX, align 4
  %110 = load i32, i32* @TXX9_SIFCR_RDIL_1, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %9, align 4
  %112 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %113 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %118 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %119 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @uart_update_timeout(%struct.uart_port* %117, i32 %120, i32 %121)
  %123 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %124 = load i32, i32* @TXX9_SIDISR_TDIS, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @TXX9_SIDISR_RDIS, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %129 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  %131 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %132 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @INPCK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %96
  %138 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %139 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %142 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %140
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %137, %96
  %147 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %148 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @BRKINT, align 4
  %151 = load i32, i32* @PARMRK, align 4
  %152 = or i32 %150, %151
  %153 = and i32 %149, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %146
  %156 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %157 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %158 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %156
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %155, %146
  %163 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %164 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %167 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IGNPAR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %162
  %173 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %174 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %177 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %172, %162
  %182 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %183 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IGNBRK, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %181
  %189 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %190 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %191 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %189
  store i32 %194, i32* %192, align 4
  %195 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %196 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IGNPAR, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %188
  %202 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %203 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %204 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %202
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %201, %188
  br label %209

209:                                              ; preds = %208, %181
  %210 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %211 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @CREAD, align 4
  %214 = and i32 %212, %213
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %209
  %217 = load i32, i32* @TXX9_SIDISR_RDIS, align 4
  %218 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %219 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %217
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %216, %209
  %224 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %225 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @CRTSCTS, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %223
  %231 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %232 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @UPF_TXX9_HAVE_CTS_LINE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %230
  %239 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %240 = load i32, i32* @TXX9_SIFLCR, align 4
  %241 = load i32, i32* @TXX9_SIFLCR_RCS, align 4
  %242 = load i32, i32* @TXX9_SIFLCR_TES, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @sio_set(%struct.uart_txx9_port* %239, i32 %240, i32 %243)
  br label %252

245:                                              ; preds = %230, %223
  %246 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %247 = load i32, i32* @TXX9_SIFLCR, align 4
  %248 = load i32, i32* @TXX9_SIFLCR_RCS, align 4
  %249 = load i32, i32* @TXX9_SIFLCR_TES, align 4
  %250 = or i32 %248, %249
  %251 = call i32 @sio_mask(%struct.uart_txx9_port* %246, i32 %247, i32 %250)
  br label %252

252:                                              ; preds = %245, %238
  %253 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %254 = load i32, i32* @TXX9_SILCR, align 4
  %255 = load i32, i32* %8, align 4
  %256 = call i32 @sio_out(%struct.uart_txx9_port* %253, i32 %254, i32 %255)
  %257 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @sio_quot_set(%struct.uart_txx9_port* %257, i32 %258)
  %260 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %261 = load i32, i32* @TXX9_SIFCR, align 4
  %262 = load i32, i32* %9, align 4
  %263 = call i32 @sio_out(%struct.uart_txx9_port* %260, i32 %261, i32 %262)
  %264 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %265 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %264, i32 0, i32 0
  %266 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %267 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @serial_txx9_set_mctrl(%struct.TYPE_2__* %265, i32 %269)
  %271 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %7, align 8
  %272 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 3
  %274 = load i64, i64* %10, align 8
  %275 = call i32 @spin_unlock_irqrestore(i32* %273, i64 %274)
  ret void
}

declare dso_local %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port*) #1

declare dso_local i32 @sio_in(%struct.uart_txx9_port*, i32) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @sio_set(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_mask(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_out(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_quot_set(%struct.uart_txx9_port*, i32) #1

declare dso_local i32 @serial_txx9_set_mctrl(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
