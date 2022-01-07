; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i32, %struct.TYPE_4__*, %struct.mxser_port* }
%struct.TYPE_4__ = type { i32 }
%struct.mxser_port = type { i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ktermios = type { i32 }

@mxser_set_baud_method = common dso_local global i64* null, align 8
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i32 0, align 4
@PORT_8250 = common dso_local global i64 0, align 8
@PORT_16450 = common dso_local global i64 0, align 8
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@MOXA_MUST_FCR_GDA_MODE_ENABLE = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_1 = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_4 = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_8 = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_14 = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_MCR_AFE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i64 0, align 8
@UART_MSR = common dso_local global i64 0, align 8
@UART_MSR_CTS = common dso_local global i8 0, align 1
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@UART_MCR = common dso_local global i64 0, align 8
@CLOCAL = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.ktermios*)* @mxser_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_change_speed(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.mxser_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 3
  %14 = load %struct.mxser_port*, %struct.mxser_port** %13, align 8
  store %struct.mxser_port* %14, %struct.mxser_port** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %21 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %488

26:                                               ; preds = %2
  %27 = load i64*, i64** @mxser_set_baud_method, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %37 = call i32 @tty_get_baud_rate(%struct.tty_struct* %36)
  %38 = call i32 @mxser_set_baud(%struct.tty_struct* %35, i32 %37)
  br label %39

39:                                               ; preds = %34, %26
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @CSIZE, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %47 [
    i32 131, label %43
    i32 130, label %44
    i32 129, label %45
    i32 128, label %46
  ]

43:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %48

44:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %48

45:                                               ; preds = %39
  store i32 2, i32* %8, align 4
  br label %48

46:                                               ; preds = %39
  store i32 3, i32* %8, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %46, %45, %44, %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @CSTOPB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PARENB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @UART_LCR_PARITY, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PARODD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @UART_LCR_EPAR, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @CMSPAR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @UART_LCR_SPAR, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %85 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PORT_8250, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %91 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PORT_16450, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %89, %83
  %96 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %97 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %96, i32 0, i32 7
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @MOXA_MUST_FCR_GDA_MODE_ENABLE, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %108 = call i32 @mxser_set_must_fifo_value(%struct.mxser_port* %107)
  br label %110

109:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %109, %102
  br label %147

111:                                              ; preds = %89
  %112 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  store i32 %112, i32* %9, align 4
  %113 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %114 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %113, i32 0, i32 7
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load i32, i32* @MOXA_MUST_FCR_GDA_MODE_ENABLE, align 4
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %124 = call i32 @mxser_set_must_fifo_value(%struct.mxser_port* %123)
  br label %146

125:                                              ; preds = %111
  %126 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %127 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %141 [
    i32 1, label %129
    i32 4, label %133
    i32 8, label %137
  ]

129:                                              ; preds = %125
  %130 = load i32, i32* @UART_FCR_TRIGGER_1, align 4
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %145

133:                                              ; preds = %125
  %134 = load i32, i32* @UART_FCR_TRIGGER_4, align 4
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %9, align 4
  br label %145

137:                                              ; preds = %125
  %138 = load i32, i32* @UART_FCR_TRIGGER_8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %145

141:                                              ; preds = %125
  %142 = load i32, i32* @UART_FCR_TRIGGER_14, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %141, %137, %133, %129
  br label %146

146:                                              ; preds = %145, %119
  br label %147

147:                                              ; preds = %146, %110
  %148 = load i32, i32* @UART_IER_MSI, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %151 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* @UART_MCR_AFE, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %157 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @CRTSCTS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %300

164:                                              ; preds = %147
  %165 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %166 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %167 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %166, i32 0, i32 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %165
  store i32 %170, i32* %168, align 8
  %171 = load i32, i32* @UART_IER_MSI, align 4
  %172 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %173 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %177 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @PORT_16550A, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %188, label %181

181:                                              ; preds = %164
  %182 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %183 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %182, i32 0, i32 7
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181, %164
  %189 = load i32, i32* @UART_MCR_AFE, align 4
  %190 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %191 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %299

194:                                              ; preds = %181
  %195 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %196 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @UART_MSR, align 8
  %199 = add nsw i64 %197, %198
  %200 = call zeroext i8 @inb(i64 %199)
  store i8 %200, i8* %11, align 1
  %201 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %202 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %258

205:                                              ; preds = %194
  %206 = load i8, i8* %11, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8, i8* @UART_MSR_CTS, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %207, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %257

212:                                              ; preds = %205
  %213 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %214 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %213, i32 0, i32 1
  store i32 0, i32* %214, align 8
  %215 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %216 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @PORT_16550A, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %254

220:                                              ; preds = %212
  %221 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %222 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %221, i32 0, i32 7
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %254, label %227

227:                                              ; preds = %220
  %228 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %229 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @UART_IER_THRI, align 4
  %232 = xor i32 %231, -1
  %233 = and i32 %230, %232
  %234 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %235 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @UART_IER, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @outb(i32 %233, i64 %238)
  %240 = load i32, i32* @UART_IER_THRI, align 4
  %241 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %242 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %246 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %249 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %248, i32 0, i32 6
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @UART_IER, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 @outb(i32 %247, i64 %252)
  br label %254

254:                                              ; preds = %227, %220, %212
  %255 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %256 = call i32 @tty_wakeup(%struct.tty_struct* %255)
  br label %257

257:                                              ; preds = %254, %205
  br label %298

258:                                              ; preds = %194
  %259 = load i8, i8* %11, align 1
  %260 = zext i8 %259 to i32
  %261 = load i8, i8* @UART_MSR_CTS, align 1
  %262 = zext i8 %261 to i32
  %263 = and i32 %260, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %297, label %265

265:                                              ; preds = %258
  %266 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %267 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %266, i32 0, i32 1
  store i32 1, i32* %267, align 8
  %268 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %269 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @PORT_16550A, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %296

273:                                              ; preds = %265
  %274 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %275 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %274, i32 0, i32 7
  %276 = load %struct.TYPE_6__*, %struct.TYPE_6__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %296, label %280

280:                                              ; preds = %273
  %281 = load i32, i32* @UART_IER_THRI, align 4
  %282 = xor i32 %281, -1
  %283 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %284 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = and i32 %285, %282
  store i32 %286, i32* %284, align 4
  %287 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %288 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %291 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %290, i32 0, i32 6
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @UART_IER, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 @outb(i32 %289, i64 %294)
  br label %296

296:                                              ; preds = %280, %273, %265
  br label %297

297:                                              ; preds = %296, %258
  br label %298

298:                                              ; preds = %297, %257
  br label %299

299:                                              ; preds = %298, %188
  br label %308

300:                                              ; preds = %147
  %301 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %302 = xor i32 %301, -1
  %303 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %304 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %303, i32 0, i32 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = and i32 %306, %302
  store i32 %307, i32* %305, align 8
  br label %308

308:                                              ; preds = %300, %299
  %309 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %310 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %313 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @UART_MCR, align 8
  %316 = add nsw i64 %314, %315
  %317 = call i32 @outb(i32 %311, i64 %316)
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* @CLOCAL, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %308
  %323 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %324 = xor i32 %323, -1
  %325 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %326 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %325, i32 0, i32 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, %324
  store i32 %329, i32* %327, align 8
  br label %342

330:                                              ; preds = %308
  %331 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %332 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %333 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %332, i32 0, i32 8
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %331
  store i32 %336, i32* %334, align 8
  %337 = load i32, i32* @UART_IER_MSI, align 4
  %338 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %339 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 4
  br label %342

342:                                              ; preds = %330, %322
  %343 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %344 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %347 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %346, i32 0, i32 6
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @UART_IER, align 8
  %350 = add nsw i64 %348, %349
  %351 = call i32 @outb(i32 %345, i64 %350)
  %352 = load i32, i32* @UART_LSR_OE, align 4
  %353 = load i32, i32* @UART_LSR_THRE, align 4
  %354 = or i32 %352, %353
  %355 = load i32, i32* @UART_LSR_DR, align 4
  %356 = or i32 %354, %355
  %357 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %358 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %357, i32 0, i32 4
  store i32 %356, i32* %358, align 4
  %359 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %360 = call i64 @I_INPCK(%struct.tty_struct* %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %342
  %363 = load i32, i32* @UART_LSR_FE, align 4
  %364 = load i32, i32* @UART_LSR_PE, align 4
  %365 = or i32 %363, %364
  %366 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %367 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %362, %342
  %371 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %372 = call i64 @I_BRKINT(%struct.tty_struct* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %370
  %375 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %376 = call i64 @I_PARMRK(%struct.tty_struct* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %374, %370
  %379 = load i32, i32* @UART_LSR_BI, align 4
  %380 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %381 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 4
  %383 = or i32 %382, %379
  store i32 %383, i32* %381, align 4
  br label %384

384:                                              ; preds = %378, %374
  %385 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %386 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %385, i32 0, i32 5
  store i32 0, i32* %386, align 8
  %387 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %388 = call i64 @I_IGNBRK(%struct.tty_struct* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %424

390:                                              ; preds = %384
  %391 = load i32, i32* @UART_LSR_BI, align 4
  %392 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %393 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 8
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 8
  %396 = load i32, i32* @UART_LSR_BI, align 4
  %397 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %398 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %399, %396
  store i32 %400, i32* %398, align 4
  %401 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %402 = call i64 @I_IGNPAR(%struct.tty_struct* %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %423

404:                                              ; preds = %390
  %405 = load i32, i32* @UART_LSR_OE, align 4
  %406 = load i32, i32* @UART_LSR_PE, align 4
  %407 = or i32 %405, %406
  %408 = load i32, i32* @UART_LSR_FE, align 4
  %409 = or i32 %407, %408
  %410 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %411 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %410, i32 0, i32 5
  %412 = load i32, i32* %411, align 8
  %413 = or i32 %412, %409
  store i32 %413, i32* %411, align 8
  %414 = load i32, i32* @UART_LSR_OE, align 4
  %415 = load i32, i32* @UART_LSR_PE, align 4
  %416 = or i32 %414, %415
  %417 = load i32, i32* @UART_LSR_FE, align 4
  %418 = or i32 %416, %417
  %419 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %420 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = or i32 %421, %418
  store i32 %422, i32* %420, align 4
  br label %423

423:                                              ; preds = %404, %390
  br label %424

424:                                              ; preds = %423, %384
  %425 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %426 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %425, i32 0, i32 7
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %472

431:                                              ; preds = %424
  %432 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %433 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %432, i32 0, i32 6
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %436 = call i32 @START_CHAR(%struct.tty_struct* %435)
  %437 = call i32 @mxser_set_must_xon1_value(i64 %434, i32 %436)
  %438 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %439 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %438, i32 0, i32 6
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %442 = call i32 @STOP_CHAR(%struct.tty_struct* %441)
  %443 = call i32 @mxser_set_must_xoff1_value(i64 %440, i32 %442)
  %444 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %445 = call i64 @I_IXON(%struct.tty_struct* %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %452

447:                                              ; preds = %431
  %448 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %449 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %448, i32 0, i32 6
  %450 = load i64, i64* %449, align 8
  %451 = call i32 @mxser_enable_must_rx_software_flow_control(i64 %450)
  br label %457

452:                                              ; preds = %431
  %453 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %454 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %453, i32 0, i32 6
  %455 = load i64, i64* %454, align 8
  %456 = call i32 @mxser_disable_must_rx_software_flow_control(i64 %455)
  br label %457

457:                                              ; preds = %452, %447
  %458 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %459 = call i64 @I_IXOFF(%struct.tty_struct* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %466

461:                                              ; preds = %457
  %462 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %463 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %462, i32 0, i32 6
  %464 = load i64, i64* %463, align 8
  %465 = call i32 @mxser_enable_must_tx_software_flow_control(i64 %464)
  br label %471

466:                                              ; preds = %457
  %467 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %468 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %467, i32 0, i32 6
  %469 = load i64, i64* %468, align 8
  %470 = call i32 @mxser_disable_must_tx_software_flow_control(i64 %469)
  br label %471

471:                                              ; preds = %466, %461
  br label %472

472:                                              ; preds = %471, %424
  %473 = load i32, i32* %9, align 4
  %474 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %475 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %474, i32 0, i32 6
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @UART_FCR, align 8
  %478 = add nsw i64 %476, %477
  %479 = call i32 @outb(i32 %473, i64 %478)
  %480 = load i32, i32* %8, align 4
  %481 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %482 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %481, i32 0, i32 6
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @UART_LCR, align 8
  %485 = add nsw i64 %483, %484
  %486 = call i32 @outb(i32 %480, i64 %485)
  %487 = load i32, i32* %10, align 4
  store i32 %487, i32* %3, align 4
  br label %488

488:                                              ; preds = %472, %24
  %489 = load i32, i32* %3, align 4
  ret i32 %489
}

declare dso_local i32 @mxser_set_baud(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @mxser_set_must_fifo_value(%struct.mxser_port*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

declare dso_local i64 @I_INPCK(%struct.tty_struct*) #1

declare dso_local i64 @I_BRKINT(%struct.tty_struct*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNBRK(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNPAR(%struct.tty_struct*) #1

declare dso_local i32 @mxser_set_must_xon1_value(i64, i32) #1

declare dso_local i32 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @mxser_set_must_xoff1_value(i64, i32) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i32 @mxser_enable_must_rx_software_flow_control(i64) #1

declare dso_local i32 @mxser_disable_must_rx_software_flow_control(i64) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @mxser_enable_must_tx_software_flow_control(i64) #1

declare dso_local i32 @mxser_disable_must_tx_software_flow_control(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
