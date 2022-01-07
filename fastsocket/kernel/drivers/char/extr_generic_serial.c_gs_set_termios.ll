; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_generic_serial.c_gs_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios*, i64, %struct.gs_port* }
%struct.gs_port = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.gs_port*)* }
%struct.TYPE_4__ = type { i32, %struct.tty_struct* }
%struct.ktermios = type { i64, i64, i32, i64, i64, i32 }

@GS_DEBUG_TERMIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"gs: Odd: port->port.tty is NULL\0A\00", align 1
@gs_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"termios structure (%p):\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"c_iflag changed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"c_oflag changed\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"c_cflag changed\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"c_lflag changed\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"c_line changed\0A\00", align 1
@NCC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"c_cc changed\0A\00", align 1
@CBAUD = common dso_local global i32 0, align 4
@B38400 = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_HI = common dso_local global i32 0, align 4
@ASYNC_SPD_VHI = common dso_local global i32 0, align 4
@ASYNC_SPD_SHI = common dso_local global i32 0, align 4
@ASYNC_SPD_WARP = common dso_local global i32 0, align 4
@ASYNC_SPD_CUST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.gs_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ktermios*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %10 = call i32 (...) @func_enter()
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 2
  %13 = load %struct.gs_port*, %struct.gs_port** %12, align 8
  store %struct.gs_port* %13, %struct.gs_port** %5, align 8
  %14 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %15 = icmp ne %struct.gs_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %249

17:                                               ; preds = %2
  %18 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %19 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.tty_struct*, %struct.tty_struct** %20, align 8
  %22 = icmp ne %struct.tty_struct* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @GS_DEBUG_TERMIOS, align 4
  %25 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %27 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %28 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store %struct.tty_struct* %26, %struct.tty_struct** %29, align 8
  br label %30

30:                                               ; preds = %23, %17
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  %33 = load %struct.ktermios*, %struct.ktermios** %32, align 8
  store %struct.ktermios* %33, %struct.ktermios** %9, align 8
  %34 = load i32, i32* @gs_debug, align 4
  %35 = load i32, i32* @GS_DEBUG_TERMIOS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @GS_DEBUG_TERMIOS, align 4
  %40 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %41 = call i32 (i32, i8*, ...) @gs_dprintk(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.ktermios* %40)
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %44 = icmp ne %struct.ktermios* %43, null
  br i1 %44, label %45, label %113

45:                                               ; preds = %42
  %46 = load i32, i32* @gs_debug, align 4
  %47 = load i32, i32* @GS_DEBUG_TERMIOS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %113

50:                                               ; preds = %45
  %51 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %52 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %50
  %61 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %65 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %60
  %71 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %72 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %75 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %70
  %81 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %82 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %85 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %80
  %91 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %92 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %95 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %90
  %101 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %102 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %105 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @NCC, align 4
  %108 = call i32 @memcmp(i32 %103, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %100
  %111 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %100
  br label %113

113:                                              ; preds = %112, %45, %42
  %114 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %115 = call i32 @tty_get_baud_rate(%struct.tty_struct* %114)
  store i32 %115, i32* %6, align 4
  %116 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %117 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CBAUD, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @B38400, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %185

123:                                              ; preds = %113
  %124 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %125 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @ASYNC_SPD_HI, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 57600, i32* %6, align 4
  br label %184

133:                                              ; preds = %123
  %134 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %135 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @ASYNC_SPD_VHI, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i32 115200, i32* %6, align 4
  br label %183

143:                                              ; preds = %133
  %144 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %145 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* @ASYNC_SPD_SHI, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store i32 230400, i32* %6, align 4
  br label %182

153:                                              ; preds = %143
  %154 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %155 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* @ASYNC_SPD_WARP, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  store i32 460800, i32* %6, align 4
  br label %181

163:                                              ; preds = %153
  %164 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %165 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %169 = and i32 %167, %168
  %170 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %163
  %173 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %174 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %177 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sdiv i32 %175, %178
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %172, %163
  br label %181

181:                                              ; preds = %180, %162
  br label %182

182:                                              ; preds = %181, %152
  br label %183

183:                                              ; preds = %182, %142
  br label %184

184:                                              ; preds = %183, %132
  br label %185

185:                                              ; preds = %184, %113
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %188 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sdiv i32 %189, 10
  %191 = load i32, i32* @HZ, align 4
  %192 = sdiv i32 %190, %191
  %193 = mul nsw i32 %192, 2
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %185
  store i32 0, i32* %7, align 4
  br label %197

197:                                              ; preds = %196, %185
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %203 = sub nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %201, %197
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %207 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %209 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %210 = call i32 @gs_wait_tx_flushed(%struct.gs_port* %208, i32 %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  br label %249

214:                                              ; preds = %204
  %215 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %216 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %215, i32 0, i32 5
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32 (%struct.gs_port*)*, i32 (%struct.gs_port*)** %218, align 8
  %220 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %221 = call i32 %219(%struct.gs_port* %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  br label %249

225:                                              ; preds = %214
  %226 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %227 = icmp ne %struct.ktermios* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %230 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @CRTSCTS, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %228, %225
  %236 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %237 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @CRTSCTS, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %235
  %243 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %244 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %243, i32 0, i32 1
  store i64 0, i64* %244, align 8
  %245 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %246 = call i32 @gs_start(%struct.tty_struct* %245)
  br label %247

247:                                              ; preds = %242, %235, %228
  %248 = call i32 (...) @func_exit()
  br label %249

249:                                              ; preds = %247, %224, %213, %16
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @gs_dprintk(i32, i8*, ...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @gs_wait_tx_flushed(%struct.gs_port*, i32) #1

declare dso_local i32 @gs_start(%struct.tty_struct*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
