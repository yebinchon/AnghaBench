; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_mn10300-serial.c_mn10300_serial_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_mn10300-serial.c_mn10300_serial_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn10300_serial_port = type { i64, i32, i32*, i32*, i64, i32, i32*, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s{%lu}\00", align 1
@CSIZE = common dso_local global i32 0, align 4
@SC01CTR_CLN_7BIT = common dso_local global i32 0, align 4
@SC01CTR_CLN_8BIT = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@SC01CTR_STB_2BIT = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@SC01CTR_PB_ODD = common dso_local global i32 0, align 4
@SC01CTR_PB_EVEN = common dso_local global i32 0, align 4
@SC0CTR_CK_TM8UFLOW_8 = common dso_local global i32 0, align 4
@SC0CTR_CK_TM2UFLOW_8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ALT %d [baud %d]\00", align 1
@UPF_SPD_MASK = common dso_local global i32 0, align 4
@UPF_SPD_CUST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"CUSTOM %u\00", align 1
@TM8MD_SRC_IOCLK = common dso_local global i32 0, align 4
@TM8MD_SRC_IOCLK_8 = common dso_local global i32 0, align 4
@TM8MD_SRC_IOCLK_32 = common dso_local global i32 0, align 4
@TM2MD_SRC_IOCLK = common dso_local global i32 0, align 4
@TM2MD_SRC_IOCLK_8 = common dso_local global i32 0, align 4
@TM2MD_SRC_IOCLK_32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"CAN'T SUPPORT\00", align 1
@CBAUD = common dso_local global i32 0, align 4
@B9600 = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"UARTCLK: %u / %hu\00", align 1
@TM8MD_INIT_COUNTER = common dso_local global i32 0, align 4
@TM8MD_COUNT_ENABLE = common dso_local global i32 0, align 4
@TM2MD_INIT_COUNTER = common dso_local global i32 0, align 4
@TM2MD_COUNT_ENABLE = common dso_local global i32 0, align 4
@SC2CTR_TWE = common dso_local global i32 0, align 4
@SC2CTR_TWS = common dso_local global i32 0, align 4
@PORT_MN10300_CTS = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@SC2STR_CTS = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@SC01CTR_TXE = common dso_local global i32 0, align 4
@SC01CTR_RXE = common dso_local global i32 0, align 4
@SC01CTR_BKE = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@SC01CTR_PB_FIXED0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn10300_serial_port*, %struct.ktermios*, %struct.ktermios*)* @mn10300_serial_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn10300_serial_change_speed(%struct.mn10300_serial_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.mn10300_serial_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mn10300_serial_port* %0, %struct.mn10300_serial_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %19 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %20 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %23 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %18, align 4
  %25 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %26 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28)
  %30 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %31 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CSIZE, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %40 [
    i32 131, label %36
    i32 130, label %38
  ]

36:                                               ; preds = %3
  %37 = load i32, i32* @SC01CTR_CLN_7BIT, align 4
  store i32 %37, i32* %15, align 4
  store i32 9, i32* %11, align 4
  br label %42

38:                                               ; preds = %3
  %39 = load i32, i32* @SC01CTR_CLN_8BIT, align 4
  store i32 %39, i32* %15, align 4
  store i32 10, i32* %11, align 4
  br label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @SC01CTR_CLN_8BIT, align 4
  store i32 %41, i32* %15, align 4
  store i32 10, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %38, %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @CSTOPB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @SC01CTR_STB_2BIT, align 4
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @PARENB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @PARODD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @SC01CTR_PB_ODD, align 4
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %15, align 4
  br label %73

69:                                               ; preds = %58
  %70 = load i32, i32* @SC01CTR_PB_EVEN, align 4
  %71 = load i32, i32* %15, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %53
  store i32 0, i32* %17, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp eq i32 %75, 129
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @SC0CTR_CK_TM8UFLOW_8, align 4
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %15, align 4
  br label %89

81:                                               ; preds = %74
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %82, 128
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* @SC0CTR_CK_TM2UFLOW_8, align 4
  %86 = load i32, i32* %15, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %435, %418, %89
  %91 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %92 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %91, i32 0, i32 8
  %93 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %94 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %95 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %96 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = udiv i64 %97, 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @uart_get_baud_rate(%struct.TYPE_3__* %92, %struct.ktermios* %93, %struct.ktermios* %94, i32 0, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %90
  store i32 9600, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %90
  store i32 1, i32* %12, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 134
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 269, i32* %10, align 4
  store i32 2, i32* %12, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 38400
  br i1 %113, label %114, label %266

114:                                              ; preds = %111
  %115 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %116 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %115, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @UPF_SPD_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @UPF_SPD_CUST, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %266

123:                                              ; preds = %114
  %124 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %125 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %18, align 4
  %130 = icmp eq i32 %129, 129
  br i1 %130, label %131, label %196

131:                                              ; preds = %123
  %132 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %133 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp sle i32 %135, 65535
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load i32, i32* @TM8MD_SRC_IOCLK, align 4
  store i32 %138, i32* %16, align 4
  %139 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %140 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %14, align 4
  %143 = load i64, i64* %8, align 8
  %144 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %145 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  store i64 %143, i64* %146, align 8
  br label %476

147:                                              ; preds = %131
  %148 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %149 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %148, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sdiv i32 %151, 8
  %153 = icmp sle i32 %152, 65535
  br i1 %153, label %154, label %171

154:                                              ; preds = %147
  %155 = load i32, i32* @TM8MD_SRC_IOCLK_8, align 4
  store i32 %155, i32* %16, align 4
  %156 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %157 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 8
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = mul nsw i32 %161, 8
  %163 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %164 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %163, i32 0, i32 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load i64, i64* %8, align 8
  %167 = udiv i64 %166, 8
  %168 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %169 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %168, i32 0, i32 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  store i64 %167, i64* %170, align 8
  br label %476

171:                                              ; preds = %147
  %172 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %173 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %172, i32 0, i32 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 32
  %177 = icmp sle i32 %176, 65535
  br i1 %177, label %178, label %195

178:                                              ; preds = %171
  %179 = load i32, i32* @TM8MD_SRC_IOCLK_32, align 4
  store i32 %179, i32* %16, align 4
  %180 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %181 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %180, i32 0, i32 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sdiv i32 %183, 32
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %14, align 4
  %186 = mul nsw i32 %185, 32
  %187 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %188 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %187, i32 0, i32 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  %190 = load i64, i64* %8, align 8
  %191 = udiv i64 %190, 32
  %192 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %193 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %192, i32 0, i32 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  store i64 %191, i64* %194, align 8
  br label %476

195:                                              ; preds = %171
  br label %265

196:                                              ; preds = %123
  %197 = load i32, i32* %18, align 4
  %198 = icmp eq i32 %197, 128
  br i1 %198, label %199, label %264

199:                                              ; preds = %196
  %200 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %201 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %200, i32 0, i32 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp sle i32 %203, 255
  br i1 %204, label %205, label %215

205:                                              ; preds = %199
  %206 = load i32, i32* @TM2MD_SRC_IOCLK, align 4
  store i32 %206, i32* %16, align 4
  %207 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %208 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %207, i32 0, i32 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %14, align 4
  %211 = load i64, i64* %8, align 8
  %212 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %213 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %212, i32 0, i32 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  store i64 %211, i64* %214, align 8
  br label %476

215:                                              ; preds = %199
  %216 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %217 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %216, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sdiv i32 %219, 8
  %221 = icmp sle i32 %220, 255
  br i1 %221, label %222, label %239

222:                                              ; preds = %215
  %223 = load i32, i32* @TM2MD_SRC_IOCLK_8, align 4
  store i32 %223, i32* %16, align 4
  %224 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %225 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %224, i32 0, i32 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sdiv i32 %227, 8
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %14, align 4
  %230 = mul nsw i32 %229, 8
  %231 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %232 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %231, i32 0, i32 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  store i32 %230, i32* %233, align 4
  %234 = load i64, i64* %8, align 8
  %235 = udiv i64 %234, 8
  %236 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %237 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %236, i32 0, i32 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 2
  store i64 %235, i64* %238, align 8
  br label %476

239:                                              ; preds = %215
  %240 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %241 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %240, i32 0, i32 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = sdiv i32 %243, 32
  %245 = icmp sle i32 %244, 255
  br i1 %245, label %246, label %263

246:                                              ; preds = %239
  %247 = load i32, i32* @TM2MD_SRC_IOCLK_32, align 4
  store i32 %247, i32* %16, align 4
  %248 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %249 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %248, i32 0, i32 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sdiv i32 %251, 32
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %14, align 4
  %254 = mul nsw i32 %253, 32
  %255 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %256 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %255, i32 0, i32 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  store i32 %254, i32* %257, align 4
  %258 = load i64, i64* %8, align 8
  %259 = udiv i64 %258, 32
  %260 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %261 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %260, i32 0, i32 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 2
  store i64 %259, i64* %262, align 8
  br label %476

263:                                              ; preds = %239
  br label %264

264:                                              ; preds = %263, %196
  br label %265

265:                                              ; preds = %264, %195
  br label %266

266:                                              ; preds = %265, %114, %111
  %267 = load i32, i32* %18, align 4
  switch i32 %267, label %410 [
    i32 129, label %268
    i32 128, label %339
  ]

268:                                              ; preds = %266
  %269 = load i64, i64* %8, align 8
  %270 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %271 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %270, i32 0, i32 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 2
  store i64 %269, i64* %272, align 8
  %273 = load i32, i32* @TM8MD_SRC_IOCLK, align 4
  store i32 %273, i32* %16, align 4
  %274 = load i64, i64* %8, align 8
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* %12, align 4
  %277 = mul nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = udiv i64 %274, %278
  %280 = add i64 %279, 4
  %281 = udiv i64 %280, 8
  %282 = sub i64 %281, 1
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %13, align 4
  store i32 %283, i32* %14, align 4
  %284 = load i32, i32* %13, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %268
  %287 = load i32, i32* %13, align 4
  %288 = icmp sle i32 %287, 65535
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  br label %476

290:                                              ; preds = %286, %268
  %291 = load i64, i64* %8, align 8
  %292 = udiv i64 %291, 8
  %293 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %294 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %293, i32 0, i32 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 2
  store i64 %292, i64* %295, align 8
  %296 = load i32, i32* @TM8MD_SRC_IOCLK_8, align 4
  store i32 %296, i32* %16, align 4
  %297 = load i64, i64* %8, align 8
  %298 = load i32, i32* %10, align 4
  %299 = mul nsw i32 %298, 8
  %300 = load i32, i32* %12, align 4
  %301 = mul nsw i32 %299, %300
  %302 = sext i32 %301 to i64
  %303 = udiv i64 %297, %302
  %304 = add i64 %303, 4
  %305 = udiv i64 %304, 8
  %306 = sub i64 %305, 1
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %13, align 4
  store i32 %307, i32* %14, align 4
  %308 = load i32, i32* %13, align 4
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %290
  %311 = load i32, i32* %13, align 4
  %312 = icmp sle i32 %311, 65535
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %476

314:                                              ; preds = %310, %290
  %315 = load i64, i64* %8, align 8
  %316 = udiv i64 %315, 32
  %317 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %318 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %317, i32 0, i32 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 2
  store i64 %316, i64* %319, align 8
  %320 = load i32, i32* @TM8MD_SRC_IOCLK_32, align 4
  store i32 %320, i32* %16, align 4
  %321 = load i64, i64* %8, align 8
  %322 = load i32, i32* %10, align 4
  %323 = mul nsw i32 %322, 32
  %324 = load i32, i32* %12, align 4
  %325 = mul nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = udiv i64 %321, %326
  %328 = add i64 %327, 4
  %329 = udiv i64 %328, 8
  %330 = sub i64 %329, 1
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %13, align 4
  store i32 %331, i32* %14, align 4
  %332 = load i32, i32* %13, align 4
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %314
  %335 = load i32, i32* %13, align 4
  %336 = icmp sle i32 %335, 65535
  br i1 %336, label %337, label %338

337:                                              ; preds = %334
  br label %476

338:                                              ; preds = %334, %314
  br label %412

339:                                              ; preds = %266
  %340 = load i64, i64* %8, align 8
  %341 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %342 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %341, i32 0, i32 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 2
  store i64 %340, i64* %343, align 8
  %344 = load i32, i32* @TM2MD_SRC_IOCLK, align 4
  store i32 %344, i32* %16, align 4
  %345 = load i64, i64* %8, align 8
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* %12, align 4
  %348 = mul nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = udiv i64 %345, %349
  %351 = add i64 %350, 4
  %352 = udiv i64 %351, 8
  %353 = sub i64 %352, 1
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %13, align 4
  store i32 %354, i32* %14, align 4
  %355 = load i32, i32* %13, align 4
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %339
  %358 = load i32, i32* %13, align 4
  %359 = icmp sle i32 %358, 255
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  br label %476

361:                                              ; preds = %357, %339
  %362 = load i64, i64* %8, align 8
  %363 = udiv i64 %362, 8
  %364 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %365 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %364, i32 0, i32 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 2
  store i64 %363, i64* %366, align 8
  %367 = load i32, i32* @TM2MD_SRC_IOCLK_8, align 4
  store i32 %367, i32* %16, align 4
  %368 = load i64, i64* %8, align 8
  %369 = load i32, i32* %10, align 4
  %370 = mul nsw i32 %369, 8
  %371 = load i32, i32* %12, align 4
  %372 = mul nsw i32 %370, %371
  %373 = sext i32 %372 to i64
  %374 = udiv i64 %368, %373
  %375 = add i64 %374, 4
  %376 = udiv i64 %375, 8
  %377 = sub i64 %376, 1
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %13, align 4
  store i32 %378, i32* %14, align 4
  %379 = load i32, i32* %13, align 4
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %361
  %382 = load i32, i32* %13, align 4
  %383 = icmp sle i32 %382, 255
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  br label %476

385:                                              ; preds = %381, %361
  %386 = load i64, i64* %8, align 8
  %387 = udiv i64 %386, 32
  %388 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %389 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %388, i32 0, i32 8
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 2
  store i64 %387, i64* %390, align 8
  %391 = load i32, i32* @TM2MD_SRC_IOCLK_32, align 4
  store i32 %391, i32* %16, align 4
  %392 = load i64, i64* %8, align 8
  %393 = load i32, i32* %10, align 4
  %394 = mul nsw i32 %393, 32
  %395 = load i32, i32* %12, align 4
  %396 = mul nsw i32 %394, %395
  %397 = sext i32 %396 to i64
  %398 = udiv i64 %392, %397
  %399 = add i64 %398, 4
  %400 = udiv i64 %399, 8
  %401 = sub i64 %400, 1
  %402 = trunc i64 %401 to i32
  store i32 %402, i32* %13, align 4
  store i32 %402, i32* %14, align 4
  %403 = load i32, i32* %13, align 4
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %385
  %406 = load i32, i32* %13, align 4
  %407 = icmp sle i32 %406, 255
  br i1 %407, label %408, label %409

408:                                              ; preds = %405
  br label %476

409:                                              ; preds = %405, %385
  br label %412

410:                                              ; preds = %266
  %411 = call i32 (...) @BUG()
  br label %704

412:                                              ; preds = %409, %338
  %413 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %414 = load i32, i32* %17, align 4
  switch i32 %414, label %447 [
    i32 0, label %415
    i32 1, label %435
  ]

415:                                              ; preds = %412
  %416 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %417 = icmp ne %struct.ktermios* %416, null
  br i1 %417, label %418, label %434

418:                                              ; preds = %415
  %419 = load i32, i32* @CBAUD, align 4
  %420 = xor i32 %419, -1
  %421 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %422 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = and i32 %423, %420
  store i32 %424, i32* %422, align 4
  %425 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %426 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @CBAUD, align 4
  %429 = and i32 %427, %428
  %430 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %431 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = or i32 %432, %429
  store i32 %433, i32* %431, align 4
  store i32 1, i32* %17, align 4
  br label %90

434:                                              ; preds = %415
  br label %435

435:                                              ; preds = %412, %434
  %436 = load i32, i32* @CBAUD, align 4
  %437 = xor i32 %436, -1
  %438 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %439 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = and i32 %440, %437
  store i32 %441, i32* %439, align 4
  %442 = load i32, i32* @B9600, align 4
  %443 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %444 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = or i32 %445, %442
  store i32 %446, i32* %444, align 4
  store i32 2, i32* %17, align 4
  br label %90

447:                                              ; preds = %412
  %448 = load i32, i32* @CBAUD, align 4
  %449 = xor i32 %448, -1
  %450 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %451 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = and i32 %452, %449
  store i32 %453, i32* %451, align 4
  %454 = load i32, i32* @B0, align 4
  %455 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %456 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = or i32 %457, %454
  store i32 %458, i32* %456, align 4
  %459 = load i32, i32* %18, align 4
  %460 = icmp eq i32 %459, 129
  br i1 %460, label %461, label %463

461:                                              ; preds = %447
  %462 = load i32, i32* @TM8MD_SRC_IOCLK_32, align 4
  store i32 %462, i32* %16, align 4
  br label %469

463:                                              ; preds = %447
  %464 = load i32, i32* %18, align 4
  %465 = icmp eq i32 %464, 128
  br i1 %465, label %466, label %468

466:                                              ; preds = %463
  %467 = load i32, i32* @TM2MD_SRC_IOCLK_32, align 4
  store i32 %467, i32* %16, align 4
  br label %468

468:                                              ; preds = %466, %463
  br label %469

469:                                              ; preds = %468, %461
  store i32 1, i32* %14, align 4
  %470 = load i64, i64* %8, align 8
  %471 = udiv i64 %470, 32
  %472 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %473 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %472, i32 0, i32 8
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 2
  store i64 %471, i64* %474, align 8
  br label %475

475:                                              ; preds = %469
  br label %476

476:                                              ; preds = %475, %408, %384, %360, %337, %313, %289, %246, %222, %205, %178, %154, %137
  %477 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %478 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %477, i32 0, i32 8
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 2
  %480 = load i64, i64* %479, align 8
  %481 = load i32, i32* %14, align 4
  %482 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %480, i32 %481)
  %483 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %484 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %483, i32 0, i32 8
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %484, i32 0, i32 5
  %486 = load i64, i64* %7, align 8
  %487 = call i32 @spin_lock_irqsave(i32* %485, i64 %486)
  %488 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %489 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %488, i32 0, i32 8
  %490 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %491 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %10, align 4
  %494 = call i32 @uart_update_timeout(%struct.TYPE_3__* %489, i32 %492, i32 %493)
  %495 = load i32, i32* %18, align 4
  switch i32 %495, label %532 [
    i32 129, label %496
    i32 128, label %514
  ]

496:                                              ; preds = %476
  %497 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %498 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %497, i32 0, i32 2
  %499 = load i32*, i32** %498, align 8
  store i32 0, i32* %499, align 4
  %500 = load i32, i32* %14, align 4
  %501 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %502 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %501, i32 0, i32 3
  %503 = load i32*, i32** %502, align 8
  store i32 %500, i32* %503, align 4
  %504 = load i32, i32* @TM8MD_INIT_COUNTER, align 4
  %505 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %506 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %505, i32 0, i32 2
  %507 = load i32*, i32** %506, align 8
  store i32 %504, i32* %507, align 4
  %508 = load i32, i32* %16, align 4
  %509 = load i32, i32* @TM8MD_COUNT_ENABLE, align 4
  %510 = or i32 %508, %509
  %511 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %512 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %511, i32 0, i32 2
  %513 = load i32*, i32** %512, align 8
  store i32 %510, i32* %513, align 4
  br label %532

514:                                              ; preds = %476
  %515 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %516 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %515, i32 0, i32 2
  %517 = load i32*, i32** %516, align 8
  store i32 0, i32* %517, align 4
  %518 = load i32, i32* %14, align 4
  %519 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %520 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %519, i32 0, i32 3
  %521 = load i32*, i32** %520, align 8
  store volatile i32 %518, i32* %521, align 4
  %522 = load i32, i32* @TM2MD_INIT_COUNTER, align 4
  %523 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %524 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %523, i32 0, i32 2
  %525 = load i32*, i32** %524, align 8
  store i32 %522, i32* %525, align 4
  %526 = load i32, i32* %16, align 4
  %527 = load i32, i32* @TM2MD_COUNT_ENABLE, align 4
  %528 = or i32 %526, %527
  %529 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %530 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %529, i32 0, i32 2
  %531 = load i32*, i32** %530, align 8
  store i32 %528, i32* %531, align 4
  br label %532

532:                                              ; preds = %476, %514, %496
  %533 = load i32, i32* @SC2CTR_TWE, align 4
  %534 = load i32, i32* @SC2CTR_TWS, align 4
  %535 = or i32 %533, %534
  %536 = xor i32 %535, -1
  %537 = load i32, i32* %15, align 4
  %538 = and i32 %537, %536
  store i32 %538, i32* %15, align 4
  %539 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %540 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %539, i32 0, i32 4
  %541 = load i64, i64* %540, align 8
  %542 = load i64, i64* @PORT_MN10300_CTS, align 8
  %543 = icmp eq i64 %541, %542
  br i1 %543, label %544, label %573

544:                                              ; preds = %532
  %545 = load i32, i32* %9, align 4
  %546 = load i32, i32* @CRTSCTS, align 4
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %573

549:                                              ; preds = %544
  %550 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %551 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %550, i32 0, i32 6
  %552 = load i32*, i32** %551, align 8
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %555 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %554, i32 0, i32 5
  store i32 %553, i32* %555, align 8
  %556 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %557 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %556, i32 0, i32 5
  %558 = load i32, i32* %557, align 8
  %559 = load i32, i32* @SC2STR_CTS, align 4
  %560 = and i32 %558, %559
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %566

562:                                              ; preds = %549
  %563 = load i32, i32* @SC2CTR_TWE, align 4
  %564 = load i32, i32* %15, align 4
  %565 = or i32 %564, %563
  store i32 %565, i32* %15, align 4
  br label %572

566:                                              ; preds = %549
  %567 = load i32, i32* @SC2CTR_TWE, align 4
  %568 = load i32, i32* @SC2CTR_TWS, align 4
  %569 = or i32 %567, %568
  %570 = load i32, i32* %15, align 4
  %571 = or i32 %570, %569
  store i32 %571, i32* %15, align 4
  br label %572

572:                                              ; preds = %566, %562
  br label %573

573:                                              ; preds = %572, %544, %532
  %574 = load i32, i32* @TTY_NORMAL, align 4
  %575 = shl i32 1, %574
  %576 = load i32, i32* @TTY_OVERRUN, align 4
  %577 = shl i32 1, %576
  %578 = or i32 %575, %577
  %579 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %580 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %579, i32 0, i32 8
  %581 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %580, i32 0, i32 3
  store i32 %578, i32* %581, align 8
  %582 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %583 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = load i32, i32* @INPCK, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %599

588:                                              ; preds = %573
  %589 = load i32, i32* @TTY_PARITY, align 4
  %590 = shl i32 1, %589
  %591 = load i32, i32* @TTY_FRAME, align 4
  %592 = shl i32 1, %591
  %593 = or i32 %590, %592
  %594 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %595 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %594, i32 0, i32 8
  %596 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %595, i32 0, i32 3
  %597 = load i32, i32* %596, align 8
  %598 = or i32 %597, %593
  store i32 %598, i32* %596, align 8
  br label %599

599:                                              ; preds = %588, %573
  %600 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %601 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = load i32, i32* @BRKINT, align 4
  %604 = load i32, i32* @PARMRK, align 4
  %605 = or i32 %603, %604
  %606 = and i32 %602, %605
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %616

608:                                              ; preds = %599
  %609 = load i32, i32* @TTY_BREAK, align 4
  %610 = shl i32 1, %609
  %611 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %612 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %611, i32 0, i32 8
  %613 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %612, i32 0, i32 3
  %614 = load i32, i32* %613, align 8
  %615 = or i32 %614, %610
  store i32 %615, i32* %613, align 8
  br label %616

616:                                              ; preds = %608, %599
  %617 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %618 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %617, i32 0, i32 8
  %619 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %618, i32 0, i32 4
  store i32 0, i32* %619, align 4
  %620 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %621 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %620, i32 0, i32 1
  %622 = load i32, i32* %621, align 4
  %623 = load i32, i32* @IGNPAR, align 4
  %624 = and i32 %622, %623
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %637

626:                                              ; preds = %616
  %627 = load i32, i32* @TTY_PARITY, align 4
  %628 = shl i32 1, %627
  %629 = load i32, i32* @TTY_FRAME, align 4
  %630 = shl i32 1, %629
  %631 = or i32 %628, %630
  %632 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %633 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %632, i32 0, i32 8
  %634 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %633, i32 0, i32 4
  %635 = load i32, i32* %634, align 4
  %636 = or i32 %635, %631
  store i32 %636, i32* %634, align 4
  br label %637

637:                                              ; preds = %626, %616
  %638 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %639 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %638, i32 0, i32 1
  %640 = load i32, i32* %639, align 4
  %641 = load i32, i32* @IGNBRK, align 4
  %642 = and i32 %640, %641
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %667

644:                                              ; preds = %637
  %645 = load i32, i32* @TTY_BREAK, align 4
  %646 = shl i32 1, %645
  %647 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %648 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %647, i32 0, i32 8
  %649 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %648, i32 0, i32 4
  %650 = load i32, i32* %649, align 4
  %651 = or i32 %650, %646
  store i32 %651, i32* %649, align 4
  %652 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %653 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %652, i32 0, i32 1
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* @IGNPAR, align 4
  %656 = and i32 %654, %655
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %666

658:                                              ; preds = %644
  %659 = load i32, i32* @TTY_OVERRUN, align 4
  %660 = shl i32 1, %659
  %661 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %662 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %661, i32 0, i32 8
  %663 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %662, i32 0, i32 4
  %664 = load i32, i32* %663, align 4
  %665 = or i32 %664, %660
  store i32 %665, i32* %663, align 4
  br label %666

666:                                              ; preds = %658, %644
  br label %667

667:                                              ; preds = %666, %637
  %668 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %669 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = load i32, i32* @CREAD, align 4
  %672 = and i32 %670, %671
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %682

674:                                              ; preds = %667
  %675 = load i32, i32* @TTY_NORMAL, align 4
  %676 = shl i32 1, %675
  %677 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %678 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %677, i32 0, i32 8
  %679 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %678, i32 0, i32 4
  %680 = load i32, i32* %679, align 4
  %681 = or i32 %680, %676
  store i32 %681, i32* %679, align 4
  br label %682

682:                                              ; preds = %674, %667
  %683 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %684 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %683, i32 0, i32 7
  %685 = load i32*, i32** %684, align 8
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* @SC01CTR_TXE, align 4
  %688 = load i32, i32* @SC01CTR_RXE, align 4
  %689 = or i32 %687, %688
  %690 = load i32, i32* @SC01CTR_BKE, align 4
  %691 = or i32 %689, %690
  %692 = and i32 %686, %691
  %693 = load i32, i32* %15, align 4
  %694 = or i32 %693, %692
  store i32 %694, i32* %15, align 4
  %695 = load i32, i32* %15, align 4
  %696 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %697 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %696, i32 0, i32 7
  %698 = load i32*, i32** %697, align 8
  store i32 %695, i32* %698, align 4
  %699 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %4, align 8
  %700 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %699, i32 0, i32 8
  %701 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %700, i32 0, i32 5
  %702 = load i64, i64* %7, align 8
  %703 = call i32 @spin_unlock_irqrestore(i32* %701, i64 %702)
  br label %704

704:                                              ; preds = %682, %410
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local i32 @uart_get_baud_rate(%struct.TYPE_3__*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
