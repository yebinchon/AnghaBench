; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_autoconfig_16550a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_autoconfig_16550a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PORT_16550A = common dso_local global i32 0, align 4
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"EFRv1 \00", align 1
@PORT_16650 = common dso_local global i32 0, align 4
@UART_CAP_EFR = common dso_local global i32 0, align 4
@UART_CAP_SLEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Motorola 8xxx DUART \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"EFRv2 \00", align 1
@UART_MCR = common dso_local global i32 0, align 4
@UART_MCR_LOOP = common dso_local global i8 0, align 1
@PORT_NS16550A = common dso_local global i32 0, align 4
@UART_NATSEMI = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR7_64BYTE = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"iir1=%d iir2=%d \00", align 1
@PORT_16750 = common dso_local global i32 0, align 4
@UART_CAP_AFE = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_IER_UUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"Xscale \00", align 1
@PORT_XSCALE = common dso_local global i32 0, align 4
@UART_CAP_UUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Couldn't force IER_UUE to 0 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @autoconfig_16550a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autoconfig_16550a(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %7 = load i32, i32* @PORT_16550A, align 4
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @UART_CAP_FIFO, align 4
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %17 = load i32, i32* @UART_LCR, align 4
  %18 = load i32, i32* @UART_LCR_DLAB, align 4
  %19 = call i32 @serial_outp(%struct.uart_8250_port* %16, i32 %17, i32 %18)
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %21 = load i32, i32* @UART_EFR, align 4
  %22 = call i32 @serial_in(%struct.uart_8250_port* %20, i32 %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %1
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %26 = load i32, i32* @UART_EFR, align 4
  %27 = call i32 @serial_outp(%struct.uart_8250_port* %25, i32 %26, i32 168)
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %29 = load i32, i32* @UART_EFR, align 4
  %30 = call i32 @serial_in(%struct.uart_8250_port* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @PORT_16650, align 4
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @UART_CAP_EFR, align 4
  %39 = load i32, i32* @UART_CAP_SLEEP, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %47

45:                                               ; preds = %24
  %46 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %32
  %48 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %49 = load i32, i32* @UART_EFR, align 4
  %50 = call i32 @serial_outp(%struct.uart_8250_port* %48, i32 %49, i32 0)
  br label %283

51:                                               ; preds = %1
  %52 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %53 = load i32, i32* @UART_LCR, align 4
  %54 = call i32 @serial_outp(%struct.uart_8250_port* %52, i32 %53, i32 191)
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %56 = load i32, i32* @UART_EFR, align 4
  %57 = call i32 @serial_in(%struct.uart_8250_port* %55, i32 %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %61 = call i32 @broken_efr(%struct.uart_8250_port* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %66 = call i32 @autoconfig_has_efr(%struct.uart_8250_port* %65)
  br label %283

67:                                               ; preds = %59, %51
  %68 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %69 = load i32, i32* @UART_LCR, align 4
  %70 = call i32 @serial_outp(%struct.uart_8250_port* %68, i32 %69, i32 0)
  %71 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %72 = load i32, i32* @UART_MCR, align 4
  %73 = call i32 @serial_in(%struct.uart_8250_port* %71, i32 %72)
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %3, align 1
  %75 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %76 = load i32, i32* @UART_LCR, align 4
  %77 = call i32 @serial_outp(%struct.uart_8250_port* %75, i32 %76, i32 224)
  %78 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %79 = call i32 @serial_in(%struct.uart_8250_port* %78, i32 2)
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %4, align 1
  %81 = load i8, i8* %4, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %3, align 1
  %84 = zext i8 %83 to i32
  %85 = xor i32 %82, %84
  %86 = load i8, i8* @UART_MCR_LOOP, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %169, label %90

90:                                               ; preds = %67
  %91 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %92 = load i32, i32* @UART_LCR, align 4
  %93 = call i32 @serial_outp(%struct.uart_8250_port* %91, i32 %92, i32 0)
  %94 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %95 = load i32, i32* @UART_MCR, align 4
  %96 = load i8, i8* %3, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @UART_MCR_LOOP, align 1
  %99 = zext i8 %98 to i32
  %100 = xor i32 %97, %99
  %101 = call i32 @serial_outp(%struct.uart_8250_port* %94, i32 %95, i32 %100)
  %102 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %103 = load i32, i32* @UART_LCR, align 4
  %104 = call i32 @serial_outp(%struct.uart_8250_port* %102, i32 %103, i32 224)
  %105 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %106 = call i32 @serial_in(%struct.uart_8250_port* %105, i32 2)
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %4, align 1
  %108 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %109 = load i32, i32* @UART_LCR, align 4
  %110 = call i32 @serial_outp(%struct.uart_8250_port* %108, i32 %109, i32 0)
  %111 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %112 = load i32, i32* @UART_MCR, align 4
  %113 = load i8, i8* %3, align 1
  %114 = zext i8 %113 to i32
  %115 = call i32 @serial_outp(%struct.uart_8250_port* %111, i32 %112, i32 %114)
  %116 = load i8, i8* %4, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8, i8* %3, align 1
  %119 = zext i8 %118 to i32
  %120 = xor i32 %117, %119
  %121 = load i8, i8* @UART_MCR_LOOP, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %168

125:                                              ; preds = %90
  %126 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %127 = load i32, i32* @UART_LCR, align 4
  %128 = call i32 @serial_outp(%struct.uart_8250_port* %126, i32 %127, i32 224)
  %129 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %130 = call zeroext i16 @serial_dl_read(%struct.uart_8250_port* %129)
  store i16 %130, i16* %6, align 2
  %131 = load i16, i16* %6, align 2
  %132 = zext i16 %131 to i32
  %133 = shl i32 %132, 3
  %134 = trunc i32 %133 to i16
  store i16 %134, i16* %6, align 2
  %135 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %136 = call i32 @serial_in(%struct.uart_8250_port* %135, i32 4)
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %3, align 1
  %138 = load i8, i8* %3, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %139, -177
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %3, align 1
  %142 = load i8, i8* %3, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %143, 16
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %3, align 1
  %146 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %147 = load i8, i8* %3, align 1
  %148 = zext i8 %147 to i32
  %149 = call i32 @serial_outp(%struct.uart_8250_port* %146, i32 4, i32 %148)
  %150 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %151 = load i16, i16* %6, align 2
  %152 = call i32 @serial_dl_write(%struct.uart_8250_port* %150, i16 zeroext %151)
  %153 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %154 = load i32, i32* @UART_LCR, align 4
  %155 = call i32 @serial_outp(%struct.uart_8250_port* %153, i32 %154, i32 0)
  %156 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %157 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i32 14745600, i32* %158, align 4
  %159 = load i32, i32* @PORT_NS16550A, align 4
  %160 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %161 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @UART_NATSEMI, align 4
  %164 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %165 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %283

168:                                              ; preds = %90
  br label %169

169:                                              ; preds = %168, %67
  %170 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %171 = load i32, i32* @UART_LCR, align 4
  %172 = call i32 @serial_outp(%struct.uart_8250_port* %170, i32 %171, i32 0)
  %173 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %174 = load i32, i32* @UART_FCR, align 4
  %175 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %176 = load i32, i32* @UART_FCR7_64BYTE, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @serial_outp(%struct.uart_8250_port* %173, i32 %174, i32 %177)
  %179 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %180 = load i32, i32* @UART_IIR, align 4
  %181 = call i32 @serial_in(%struct.uart_8250_port* %179, i32 %180)
  %182 = lshr i32 %181, 5
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %3, align 1
  %184 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %185 = load i32, i32* @UART_FCR, align 4
  %186 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %187 = call i32 @serial_outp(%struct.uart_8250_port* %184, i32 %185, i32 %186)
  %188 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %189 = load i32, i32* @UART_LCR, align 4
  %190 = load i32, i32* @UART_LCR_DLAB, align 4
  %191 = call i32 @serial_outp(%struct.uart_8250_port* %188, i32 %189, i32 %190)
  %192 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %193 = load i32, i32* @UART_FCR, align 4
  %194 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %195 = load i32, i32* @UART_FCR7_64BYTE, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @serial_outp(%struct.uart_8250_port* %192, i32 %193, i32 %196)
  %198 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %199 = load i32, i32* @UART_IIR, align 4
  %200 = call i32 @serial_in(%struct.uart_8250_port* %198, i32 %199)
  %201 = lshr i32 %200, 5
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %4, align 1
  %203 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %204 = load i32, i32* @UART_FCR, align 4
  %205 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %206 = call i32 @serial_outp(%struct.uart_8250_port* %203, i32 %204, i32 %205)
  %207 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %208 = load i32, i32* @UART_LCR, align 4
  %209 = call i32 @serial_outp(%struct.uart_8250_port* %207, i32 %208, i32 0)
  %210 = load i8, i8* %3, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8, i8* %4, align 1
  %213 = zext i8 %212 to i32
  %214 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %211, i32 %213)
  %215 = load i8, i8* %3, align 1
  %216 = zext i8 %215 to i32
  %217 = icmp eq i32 %216, 6
  br i1 %217, label %218, label %234

218:                                              ; preds = %169
  %219 = load i8, i8* %4, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp eq i32 %220, 7
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = load i32, i32* @PORT_16750, align 4
  %224 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %225 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  store i32 %223, i32* %226, align 4
  %227 = load i32, i32* @UART_CAP_AFE, align 4
  %228 = load i32, i32* @UART_CAP_SLEEP, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %231 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %283

234:                                              ; preds = %218, %169
  %235 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %236 = load i32, i32* @UART_IER, align 4
  %237 = call i32 @serial_in(%struct.uart_8250_port* %235, i32 %236)
  store i32 %237, i32* %5, align 4
  %238 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %239 = load i32, i32* @UART_IER, align 4
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* @UART_IER_UUE, align 4
  %242 = xor i32 %241, -1
  %243 = and i32 %240, %242
  %244 = call i32 @serial_outp(%struct.uart_8250_port* %238, i32 %239, i32 %243)
  %245 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %246 = load i32, i32* @UART_IER, align 4
  %247 = call i32 @serial_in(%struct.uart_8250_port* %245, i32 %246)
  %248 = load i32, i32* @UART_IER_UUE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %276, label %251

251:                                              ; preds = %234
  %252 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %253 = load i32, i32* @UART_IER, align 4
  %254 = load i32, i32* %5, align 4
  %255 = load i32, i32* @UART_IER_UUE, align 4
  %256 = or i32 %254, %255
  %257 = call i32 @serial_outp(%struct.uart_8250_port* %252, i32 %253, i32 %256)
  %258 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %259 = load i32, i32* @UART_IER, align 4
  %260 = call i32 @serial_in(%struct.uart_8250_port* %258, i32 %259)
  %261 = load i32, i32* @UART_IER_UUE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %251
  %265 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %266 = load i32, i32* @PORT_XSCALE, align 4
  %267 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %268 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 1
  store i32 %266, i32* %269, align 4
  %270 = load i32, i32* @UART_CAP_UUE, align 4
  %271 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %272 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 4
  br label %283

275:                                              ; preds = %251
  br label %278

276:                                              ; preds = %234
  %277 = call i32 (i8*, ...) @DEBUG_AUTOCONF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %275
  %279 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %280 = load i32, i32* @UART_IER, align 4
  %281 = load i32, i32* %5, align 4
  %282 = call i32 @serial_outp(%struct.uart_8250_port* %279, i32 %280, i32 %281)
  br label %283

283:                                              ; preds = %278, %264, %222, %125, %63, %47
  ret void
}

declare dso_local i32 @serial_outp(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @DEBUG_AUTOCONF(i8*, ...) #1

declare dso_local i32 @broken_efr(%struct.uart_8250_port*) #1

declare dso_local i32 @autoconfig_has_efr(%struct.uart_8250_port*) #1

declare dso_local zeroext i16 @serial_dl_read(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_dl_write(%struct.uart_8250_port*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
