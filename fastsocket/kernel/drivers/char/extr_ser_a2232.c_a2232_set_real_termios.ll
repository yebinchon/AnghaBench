; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_set_real_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_set_real_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2232_port = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.a2232status = type { i32, i32, i32, i32, i32, i64 }
%struct.a2232memory = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@A2232CMD_CMask = common dso_local global i32 0, align 4
@A2232CMD_Close = common dso_local global i32 0, align 4
@A2232_BAUD_TABLE_NOAVAIL = common dso_local global i32 0, align 4
@A2232_BAUD_TABLE_NUM_RATES = common dso_local global i32 0, align 4
@a2232_baud_table = common dso_local global i32* null, align 8
@A2232_TURBO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"a2232: Board %d Port %d unsupported baud rate: %d baud. Using another.\0A\00", align 1
@A2232PARAM_B9600 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@A2232PARAM_8Bit = common dso_local global i32 0, align 4
@A2232PARAM_7Bit = common dso_local global i32 0, align 4
@A2232PARAM_6Bit = common dso_local global i32 0, align 4
@A2232PARAM_5Bit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"a2232: Board %d Port %d unsupported character size: %d. Using 8 data bits.\0A\00", align 1
@CSTOPB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"a2232: Board %d Port %d 2 stop bits unsupported. Using 1 stop bit.\0A\00", align 1
@CRTSCTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [95 x i8] c"a2232: Board %d Port %d cannot switch off firmware-implemented RTS/CTS hardware flow control.\0A\00", align 1
@IXOFF = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@A2232CMD_OddParity = common dso_local global i32 0, align 4
@A2232CMD_EvenParity = common dso_local global i32 0, align 4
@A2232CMD_NoParity = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@A2232PARAM_RcvBaud = common dso_local global i32 0, align 4
@A2232CMD_Open = common dso_local global i32 0, align 4
@A2232CMD_Enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @a2232_set_real_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2232_set_real_termios(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.a2232_port*, align 8
  %16 = alloca %struct.a2232status*, align 8
  %17 = alloca %struct.a2232memory*, align 8
  store i8* %0, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = bitcast i8* %18 to %struct.a2232_port*
  store %struct.a2232_port* %19, %struct.a2232_port** %15, align 8
  %20 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %21 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %28 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26, %1
  store i32 0, i32* %2, align 4
  br label %289

36:                                               ; preds = %26
  %37 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %38 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %41 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.a2232status* @a2232stat(i32 %39, i32 %42)
  store %struct.a2232status* %43, %struct.a2232status** %16, align 8
  %44 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %45 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.a2232memory* @a2232mem(i32 %46)
  store %struct.a2232memory* %47, %struct.a2232memory** %17, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %48 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %49 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %36
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @local_irq_save(i64 %55)
  %57 = load %struct.a2232status*, %struct.a2232status** %16, align 8
  %58 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %57, i32 0, i32 0
  %59 = load volatile i32, i32* %58, align 8
  %60 = load i32, i32* @A2232CMD_CMask, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = load i32, i32* @A2232CMD_Close, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.a2232status*, %struct.a2232status** %16, align 8
  %66 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %65, i32 0, i32 0
  store volatile i32 %64, i32* %66, align 8
  %67 = load %struct.a2232status*, %struct.a2232status** %16, align 8
  %68 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %67, i32 0, i32 1
  store volatile i32 -1, i32* %68, align 4
  %69 = load %struct.a2232status*, %struct.a2232status** %16, align 8
  %70 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %69, i32 0, i32 2
  store volatile i32 -1, i32* %70, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @local_irq_restore(i64 %71)
  store i32 0, i32* %2, align 4
  br label %289

73:                                               ; preds = %36
  %74 = load i32, i32* @A2232_BAUD_TABLE_NOAVAIL, align 4
  store i32 %74, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %111, %73
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @A2232_BAUD_TABLE_NUM_RATES, align 4
  %78 = mul nsw i32 %77, 3
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %75
  %81 = load i32*, i32** @a2232_baud_table, align 8
  %82 = load i32, i32* %14, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %80
  %89 = load %struct.a2232memory*, %struct.a2232memory** %17, align 8
  %90 = getelementptr inbounds %struct.a2232memory, %struct.a2232memory* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load volatile i64, i64* %91, align 8
  %93 = load i64, i64* @A2232_TURBO, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load i32*, i32** @a2232_baud_table, align 8
  %97 = load i32, i32* %14, align 4
  %98 = add i32 %97, 2
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  br label %109

102:                                              ; preds = %88
  %103 = load i32*, i32** @a2232_baud_table, align 8
  %104 = load i32, i32* %14, align 4
  %105 = add i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %102, %95
  br label %110

110:                                              ; preds = %109, %80
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %14, align 4
  %113 = add i32 %112, 3
  store i32 %113, i32* %14, align 4
  br label %75

114:                                              ; preds = %75
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @A2232_BAUD_TABLE_NOAVAIL, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %120 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %123 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %124, i32 %125)
  %127 = load i32, i32* @A2232PARAM_B9600, align 4
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %118, %114
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %11, align 4
  %132 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %133 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @CSIZE, align 4
  %143 = and i32 %141, %142
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  switch i32 %144, label %161 [
    i32 128, label %145
    i32 129, label %149
    i32 130, label %153
    i32 131, label %157
  ]

145:                                              ; preds = %128
  %146 = load i32, i32* @A2232PARAM_8Bit, align 4
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %11, align 4
  br label %173

149:                                              ; preds = %128
  %150 = load i32, i32* @A2232PARAM_7Bit, align 4
  %151 = load i32, i32* %11, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %173

153:                                              ; preds = %128
  %154 = load i32, i32* @A2232PARAM_6Bit, align 4
  %155 = load i32, i32* %11, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %11, align 4
  br label %173

157:                                              ; preds = %128
  %158 = load i32, i32* @A2232PARAM_5Bit, align 4
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %173

161:                                              ; preds = %128
  %162 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %163 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %166 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %164, i32 %167, i32 %168)
  %170 = load i32, i32* @A2232PARAM_8Bit, align 4
  %171 = load i32, i32* %11, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %11, align 4
  br label %173

173:                                              ; preds = %161, %157, %153, %149, %145
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @CSTOPB, align 4
  %176 = and i32 %174, %175
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %173
  %180 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %181 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %184 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %179, %173
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @CRTSCTS, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %187
  %193 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %194 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %197 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0), i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %192, %187
  %201 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %202 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @IXOFF, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @PARENB, align 4
  %218 = load i32, i32* @PARODD, align 4
  %219 = or i32 %217, %218
  %220 = and i32 %216, %219
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @PARENB, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %200
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @PARODD, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load i32, i32* @A2232CMD_OddParity, align 4
  %232 = load i32, i32* %12, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %12, align 4
  br label %238

234:                                              ; preds = %225
  %235 = load i32, i32* @A2232CMD_EvenParity, align 4
  %236 = load i32, i32* %12, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %12, align 4
  br label %238

238:                                              ; preds = %234, %230
  br label %243

239:                                              ; preds = %200
  %240 = load i32, i32* @A2232CMD_NoParity, align 4
  %241 = load i32, i32* %12, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %12, align 4
  br label %243

243:                                              ; preds = %239, %238
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* @CLOCAL, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %243
  %249 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %250 = xor i32 %249, -1
  %251 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %252 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %250
  store i32 %256, i32* %254, align 8
  br label %265

257:                                              ; preds = %243
  %258 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %259 = load %struct.a2232_port*, %struct.a2232_port** %15, align 8
  %260 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %258
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %257, %248
  %266 = load i64, i64* %13, align 8
  %267 = call i32 @local_irq_save(i64 %266)
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @A2232PARAM_RcvBaud, align 4
  %270 = or i32 %268, %269
  %271 = load %struct.a2232status*, %struct.a2232status** %16, align 8
  %272 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %271, i32 0, i32 3
  store volatile i32 %270, i32* %272, align 4
  %273 = load i32, i32* %12, align 4
  %274 = load i32, i32* @A2232CMD_Open, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @A2232CMD_Enable, align 4
  %277 = or i32 %275, %276
  %278 = load %struct.a2232status*, %struct.a2232status** %16, align 8
  %279 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %278, i32 0, i32 0
  store volatile i32 %277, i32* %279, align 8
  %280 = load i32, i32* %9, align 4
  %281 = load %struct.a2232status*, %struct.a2232status** %16, align 8
  %282 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %281, i32 0, i32 4
  store volatile i32 %280, i32* %282, align 8
  %283 = load %struct.a2232status*, %struct.a2232status** %16, align 8
  %284 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %283, i32 0, i32 5
  store volatile i64 0, i64* %284, align 8
  %285 = load %struct.a2232status*, %struct.a2232status** %16, align 8
  %286 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %285, i32 0, i32 2
  store volatile i32 -1, i32* %286, align 8
  %287 = load i64, i64* %13, align 8
  %288 = call i32 @local_irq_restore(i64 %287)
  store i32 0, i32* %2, align 4
  br label %289

289:                                              ; preds = %265, %54, %35
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local %struct.a2232status* @a2232stat(i32, i32) #1

declare dso_local %struct.a2232memory* @a2232mem(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
