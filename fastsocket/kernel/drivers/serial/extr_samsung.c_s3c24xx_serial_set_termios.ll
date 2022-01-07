; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.s3c2410_uartcfg = type { i32 }
%struct.s3c24xx_uart_port = type { i32, %struct.TYPE_2__*, %struct.clk*, %struct.s3c24xx_uart_clksrc* }
%struct.TYPE_2__ = type { i64 }
%struct.clk = type { i32 }
%struct.s3c24xx_uart_clksrc = type { i32 }

@HUPCL = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@UPF_SPD_MASK = common dso_local global i32 0, align 4
@UPF_SPD_CUST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"selecting clock %p\0A\00", align 1
@udivslot_table = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"udivslot = %04x (div %d)\0A\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"config: 5bits/char\0A\00", align 1
@S3C2410_LCON_CS5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"config: 6bits/char\0A\00", align 1
@S3C2410_LCON_CS6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"config: 7bits/char\0A\00", align 1
@S3C2410_LCON_CS7 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"config: 8bits/char\0A\00", align 1
@S3C2410_LCON_CS8 = common dso_local global i32 0, align 4
@S3C2410_LCON_IRM = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@S3C2410_LCON_STOPB = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@S3C2410_UMCOM_AFC = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@S3C2410_LCON_PODD = common dso_local global i32 0, align 4
@S3C2410_LCON_PEVEN = common dso_local global i32 0, align 4
@S3C2410_LCON_PNONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"setting ulcon to %08x, brddiv to %d, udivslot %08x\0A\00", align 1
@S3C2410_ULCON = common dso_local global i32 0, align 4
@S3C2410_UBRDIV = common dso_local global i32 0, align 4
@S3C2410_UMCON = common dso_local global i32 0, align 4
@S3C2443_DIVSLOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"uart: ulcon = 0x%08x, ucon = 0x%08x, ufcon = 0x%08x\0A\00", align 1
@S3C2410_UCON = common dso_local global i32 0, align 4
@S3C2410_UFCON = common dso_local global i32 0, align 4
@S3C2410_UERSTAT_OVERRUN = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@S3C2410_UERSTAT_FRAME = common dso_local global i32 0, align 4
@S3C2410_UERSTAT_PARITY = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@RXSTAT_DUMMY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @s3c24xx_serial_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.s3c2410_uartcfg*, align 8
  %8 = alloca %struct.s3c24xx_uart_port*, align 8
  %9 = alloca %struct.s3c24xx_uart_clksrc*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = call %struct.s3c2410_uartcfg* @s3c24xx_port_to_cfg(%struct.uart_port* %18)
  store %struct.s3c2410_uartcfg* %19, %struct.s3c2410_uartcfg** %7, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = call %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port* %20)
  store %struct.s3c24xx_uart_port* %21, %struct.s3c24xx_uart_port** %8, align 8
  store %struct.s3c24xx_uart_clksrc* null, %struct.s3c24xx_uart_clksrc** %9, align 8
  store %struct.clk* null, %struct.clk** %10, align 8
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* @HUPCL, align 4
  %23 = load i32, i32* @CMSPAR, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %27 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @CLOCAL, align 4
  %31 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %37 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %38 = call i32 @uart_get_baud_rate(%struct.uart_port* %35, %struct.ktermios* %36, %struct.ktermios* %37, i32 0, i32 921600)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 38400
  br i1 %40, label %41, label %53

41:                                               ; preds = %3
  %42 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UPF_SPD_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @UPF_SPD_CUST, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  br label %57

53:                                               ; preds = %41, %3
  %54 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @s3c24xx_serial_getclk(%struct.uart_port* %54, %struct.s3c24xx_uart_clksrc** %9, %struct.clk** %10, i32 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %58, i32 0, i32 3
  %60 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %59, align 8
  %61 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %9, align 8
  %62 = icmp ne %struct.s3c24xx_uart_clksrc* %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %65 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %64, i32 0, i32 2
  %66 = load %struct.clk*, %struct.clk** %65, align 8
  %67 = load %struct.clk*, %struct.clk** %10, align 8
  %68 = icmp ne %struct.clk* %66, %67
  br i1 %68, label %69, label %111

69:                                               ; preds = %63, %57
  %70 = load %struct.clk*, %struct.clk** %10, align 8
  %71 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.clk* %70)
  %72 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %73 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %9, align 8
  %74 = call i32 @s3c24xx_serial_setsource(%struct.uart_port* %72, %struct.s3c24xx_uart_clksrc* %73)
  %75 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %76 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %75, i32 0, i32 2
  %77 = load %struct.clk*, %struct.clk** %76, align 8
  %78 = icmp ne %struct.clk* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %69
  %80 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %81 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %80, i32 0, i32 2
  %82 = load %struct.clk*, %struct.clk** %81, align 8
  %83 = call i32 @IS_ERR(%struct.clk* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %79
  %86 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %87 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %86, i32 0, i32 2
  %88 = load %struct.clk*, %struct.clk** %87, align 8
  %89 = call i32 @clk_disable(%struct.clk* %88)
  %90 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %91 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %90, i32 0, i32 2
  store %struct.clk* null, %struct.clk** %91, align 8
  br label %92

92:                                               ; preds = %85, %79, %69
  %93 = load %struct.clk*, %struct.clk** %10, align 8
  %94 = call i32 @clk_enable(%struct.clk* %93)
  %95 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %9, align 8
  %96 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %97 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %96, i32 0, i32 3
  store %struct.s3c24xx_uart_clksrc* %95, %struct.s3c24xx_uart_clksrc** %97, align 8
  %98 = load %struct.clk*, %struct.clk** %10, align 8
  %99 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %100 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %99, i32 0, i32 2
  store %struct.clk* %98, %struct.clk** %100, align 8
  %101 = load %struct.clk*, %struct.clk** %10, align 8
  %102 = icmp ne %struct.clk* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load %struct.clk*, %struct.clk** %10, align 8
  %105 = call i32 @clk_get_rate(%struct.clk* %104)
  br label %107

106:                                              ; preds = %92
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i32 [ %105, %103 ], [ 0, %106 ]
  %109 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %110 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %63
  %112 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %113 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %111
  %119 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %120 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = udiv i32 %121, %122
  store i32 %123, i32* %17, align 4
  %124 = load i32*, i32** @udivslot_table, align 8
  %125 = load i32, i32* %17, align 4
  %126 = and i32 %125, 15
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %17, align 4
  %132 = and i32 %131, 15
  %133 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %132)
  br label %134

134:                                              ; preds = %118, %111
  %135 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %136 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @CSIZE, align 4
  %139 = and i32 %137, %138
  switch i32 %139, label %150 [
    i32 131, label %140
    i32 130, label %143
    i32 129, label %146
    i32 128, label %149
  ]

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* @S3C2410_LCON_CS5, align 4
  store i32 %142, i32* %14, align 4
  br label %153

143:                                              ; preds = %134
  %144 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @S3C2410_LCON_CS6, align 4
  store i32 %145, i32* %14, align 4
  br label %153

146:                                              ; preds = %134
  %147 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* @S3C2410_LCON_CS7, align 4
  store i32 %148, i32* %14, align 4
  br label %153

149:                                              ; preds = %134
  br label %150

150:                                              ; preds = %134, %149
  %151 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i32, i32* @S3C2410_LCON_CS8, align 4
  store i32 %152, i32* %14, align 4
  br label %153

153:                                              ; preds = %150, %146, %143, %140
  %154 = load %struct.s3c2410_uartcfg*, %struct.s3c2410_uartcfg** %7, align 8
  %155 = getelementptr inbounds %struct.s3c2410_uartcfg, %struct.s3c2410_uartcfg* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @S3C2410_LCON_IRM, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* %14, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %14, align 4
  %161 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %162 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @CSTOPB, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %153
  %168 = load i32, i32* @S3C2410_LCON_STOPB, align 4
  %169 = load i32, i32* %14, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %167, %153
  %172 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %173 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @CRTSCTS, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* @S3C2410_UMCOM_AFC, align 4
  br label %181

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180, %178
  %182 = phi i32 [ %179, %178 ], [ 0, %180 ]
  store i32 %182, i32* %15, align 4
  %183 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %184 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @PARENB, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %181
  %190 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %191 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @PARODD, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %189
  %197 = load i32, i32* @S3C2410_LCON_PODD, align 4
  %198 = load i32, i32* %14, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %14, align 4
  br label %204

200:                                              ; preds = %189
  %201 = load i32, i32* @S3C2410_LCON_PEVEN, align 4
  %202 = load i32, i32* %14, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %200, %196
  br label %209

205:                                              ; preds = %181
  %206 = load i32, i32* @S3C2410_LCON_PNONE, align 4
  %207 = load i32, i32* %14, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %205, %204
  %210 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %211 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %210, i32 0, i32 4
  %212 = load i64, i64* %11, align 8
  %213 = call i32 @spin_lock_irqsave(i32* %211, i64 %212)
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %16, align 4
  %217 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32 %215, i32 %216)
  %218 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %219 = load i32, i32* @S3C2410_ULCON, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @wr_regl(%struct.uart_port* %218, i32 %219, i32 %220)
  %222 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %223 = load i32, i32* @S3C2410_UBRDIV, align 4
  %224 = load i32, i32* %13, align 4
  %225 = call i32 @wr_regl(%struct.uart_port* %222, i32 %223, i32 %224)
  %226 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %227 = load i32, i32* @S3C2410_UMCON, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @wr_regl(%struct.uart_port* %226, i32 %227, i32 %228)
  %230 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %8, align 8
  %231 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %230, i32 0, i32 1
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %209
  %237 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %238 = load i32, i32* @S3C2443_DIVSLOT, align 4
  %239 = load i32, i32* %16, align 4
  %240 = call i32 @wr_regl(%struct.uart_port* %237, i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %236, %209
  %242 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %243 = load i32, i32* @S3C2410_ULCON, align 4
  %244 = call i32 @rd_regl(%struct.uart_port* %242, i32 %243)
  %245 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %246 = load i32, i32* @S3C2410_UCON, align 4
  %247 = call i32 @rd_regl(%struct.uart_port* %245, i32 %246)
  %248 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %249 = load i32, i32* @S3C2410_UFCON, align 4
  %250 = call i32 @rd_regl(%struct.uart_port* %248, i32 %249)
  %251 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %244, i32 %247, i32 %250)
  %252 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %253 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %254 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %12, align 4
  %257 = call i32 @uart_update_timeout(%struct.uart_port* %252, i32 %255, i32 %256)
  %258 = load i32, i32* @S3C2410_UERSTAT_OVERRUN, align 4
  %259 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %260 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 4
  %261 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %262 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @INPCK, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %241
  %268 = load i32, i32* @S3C2410_UERSTAT_FRAME, align 4
  %269 = load i32, i32* @S3C2410_UERSTAT_PARITY, align 4
  %270 = or i32 %268, %269
  %271 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %272 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 4
  br label %275

275:                                              ; preds = %267, %241
  %276 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %277 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %276, i32 0, i32 3
  store i32 0, i32* %277, align 4
  %278 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %279 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @IGNPAR, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %275
  %285 = load i32, i32* @S3C2410_UERSTAT_OVERRUN, align 4
  %286 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %287 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %284, %275
  %291 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %292 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @IGNBRK, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %290
  %298 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %299 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @IGNPAR, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %297
  %305 = load i32, i32* @S3C2410_UERSTAT_FRAME, align 4
  %306 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %307 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %304, %297, %290
  %311 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %312 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @CREAD, align 4
  %315 = and i32 %313, %314
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %310
  %318 = load i32, i32* @RXSTAT_DUMMY_READ, align 4
  %319 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %320 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %317, %310
  %324 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %325 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %324, i32 0, i32 4
  %326 = load i64, i64* %11, align 8
  %327 = call i32 @spin_unlock_irqrestore(i32* %325, i64 %326)
  ret void
}

declare dso_local %struct.s3c2410_uartcfg* @s3c24xx_port_to_cfg(%struct.uart_port*) #1

declare dso_local %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @s3c24xx_serial_getclk(%struct.uart_port*, %struct.s3c24xx_uart_clksrc**, %struct.clk**, i32) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @s3c24xx_serial_setsource(%struct.uart_port*, %struct.s3c24xx_uart_clksrc*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

declare dso_local i32 @clk_enable(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
