; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_irda_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_irda_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@R0 = common dso_local global i32 0, align 4
@Tx_BUF_EMP = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@ALL_SNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"transmitter didn't drain\0A\00", align 1
@Rx_CH_AV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"receiver didn't drain\0A\00", align 1
@DTR = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@CS8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"irda_setup timed out on get_version byte\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"IrDA: dongle version %d not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"irda_setup timed out on speed mode byte\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"irda_setup speed mode byte = %x (%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"IrDA setup for %ld bps, dongle version: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_pmac_port*, i64*)* @pmz_irda_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_irda_setup(%struct.uart_pmac_port* %0, i64* %1) #0 {
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_pmac_port* %0, %struct.uart_pmac_port** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  switch i64 %9, label %19 [
    i64 2400, label %10
    i64 4800, label %11
    i64 9600, label %12
    i64 19200, label %13
    i64 38400, label %14
    i64 57600, label %15
    i64 115200, label %16
    i64 1152000, label %17
    i64 4000000, label %18
  ]

10:                                               ; preds = %2
  store i32 83, i32* %5, align 4
  br label %21

11:                                               ; preds = %2
  store i32 82, i32* %5, align 4
  br label %21

12:                                               ; preds = %2
  store i32 81, i32* %5, align 4
  br label %21

13:                                               ; preds = %2
  store i32 80, i32* %5, align 4
  br label %21

14:                                               ; preds = %2
  store i32 79, i32* %5, align 4
  br label %21

15:                                               ; preds = %2
  store i32 78, i32* %5, align 4
  br label %21

16:                                               ; preds = %2
  store i32 77, i32* %5, align 4
  br label %21

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

18:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

19:                                               ; preds = %2
  store i32 81, i32* %5, align 4
  %20 = load i64*, i64** %4, align 8
  store i64 9600, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  store i32 10000, i32* %6, align 4
  br label %22

22:                                               ; preds = %49, %21
  %23 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %24 = load i32, i32* @R0, align 4
  %25 = call i32 @read_zsreg(%struct.uart_pmac_port* %23, i32 %24)
  %26 = load i32, i32* @Tx_BUF_EMP, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %31 = load i32, i32* @R1, align 4
  %32 = call i32 @read_zsreg(%struct.uart_pmac_port* %30, i32 %31)
  %33 = load i32, i32* @ALL_SNT, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi i1 [ true, %22 ], [ %35, %29 ]
  br i1 %37, label %38, label %51

38:                                               ; preds = %36
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %229

49:                                               ; preds = %38
  %50 = call i32 @udelay(i32 10)
  br label %22

51:                                               ; preds = %36
  store i32 100, i32* %6, align 4
  %52 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %53 = call i32 @read_zsdata(%struct.uart_pmac_port* %52)
  %54 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %55 = call i32 @read_zsdata(%struct.uart_pmac_port* %54)
  %56 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %57 = call i32 @read_zsdata(%struct.uart_pmac_port* %56)
  %58 = call i32 @mdelay(i32 10)
  br label %59

59:                                               ; preds = %80, %51
  %60 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %61 = load i32, i32* @R0, align 4
  %62 = call i32 @read_zsreg(%struct.uart_pmac_port* %60, i32 %61)
  %63 = load i32, i32* @Rx_CH_AV, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %68 = call i32 @read_zsdata(%struct.uart_pmac_port* %67)
  %69 = call i32 @mdelay(i32 10)
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %6, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %75 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %229

80:                                               ; preds = %66
  br label %59

81:                                               ; preds = %59
  %82 = load i32, i32* @DTR, align 4
  %83 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %84 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @R5, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %82
  store i32 %89, i32* %87, align 4
  %90 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %91 = load i64, i64* @R5, align 8
  %92 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %93 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @R5, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @write_zsreg(%struct.uart_pmac_port* %90, i64 %91, i32 %97)
  %99 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %100 = call i32 @zssync(%struct.uart_pmac_port* %99)
  %101 = call i32 @mdelay(i32 1)
  %102 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %103 = load i32, i32* @CS8, align 4
  %104 = call i32 @pmz_convert_to_zs(%struct.uart_pmac_port* %102, i32 %103, i32 0, i32 19200)
  %105 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %106 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %107 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @pmz_load_zsregs(%struct.uart_pmac_port* %105, i32* %108)
  %110 = call i32 @mdelay(i32 1)
  %111 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %112 = call i32 @write_zsdata(%struct.uart_pmac_port* %111, i32 1)
  store i32 5000, i32* %6, align 4
  br label %113

113:                                              ; preds = %131, %81
  %114 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %115 = load i32, i32* @R0, align 4
  %116 = call i32 @read_zsreg(%struct.uart_pmac_port* %114, i32 %115)
  %117 = load i32, i32* @Rx_CH_AV, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %113
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %6, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %126 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %129, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %202

131:                                              ; preds = %120
  %132 = call i32 @udelay(i32 10)
  br label %113

133:                                              ; preds = %113
  %134 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %135 = call i32 @read_zsdata(%struct.uart_pmac_port* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 4
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %140 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %145)
  br label %202

147:                                              ; preds = %133
  %148 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @write_zsdata(%struct.uart_pmac_port* %148, i32 %149)
  store i32 5000, i32* %6, align 4
  br label %151

151:                                              ; preds = %169, %147
  %152 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %153 = load i32, i32* @R0, align 4
  %154 = call i32 @read_zsreg(%struct.uart_pmac_port* %152, i32 %153)
  %155 = load i32, i32* @Rx_CH_AV, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %151
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %6, align 4
  %161 = icmp sle i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %164 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = call i32 (i32*, i8*, ...) @dev_err(i32* %167, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %202

169:                                              ; preds = %158
  %170 = call i32 @udelay(i32 10)
  br label %151

171:                                              ; preds = %151
  %172 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %173 = call i32 @read_zsdata(%struct.uart_pmac_port* %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %171
  %178 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %179 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i32 (i32*, i8*, ...) @dev_err(i32* %182, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %177, %171
  %187 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %188 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %187, i32 0, i32 1
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i64*, i64** %4, align 8
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call i32 (i32*, i8*, i64, ...) @dev_info(i32* %191, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %193, i32 %194)
  %196 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %197 = call i32 @read_zsdata(%struct.uart_pmac_port* %196)
  %198 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %199 = call i32 @read_zsdata(%struct.uart_pmac_port* %198)
  %200 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %201 = call i32 @read_zsdata(%struct.uart_pmac_port* %200)
  br label %202

202:                                              ; preds = %186, %162, %138, %124
  %203 = load i32, i32* @DTR, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %206 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @R5, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, %204
  store i32 %211, i32* %209, align 4
  %212 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %213 = load i64, i64* @R5, align 8
  %214 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %215 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* @R5, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @write_zsreg(%struct.uart_pmac_port* %212, i64 %213, i32 %219)
  %221 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %222 = call i32 @zssync(%struct.uart_pmac_port* %221)
  %223 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %224 = call i32 @read_zsdata(%struct.uart_pmac_port* %223)
  %225 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %226 = call i32 @read_zsdata(%struct.uart_pmac_port* %225)
  %227 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %228 = call i32 @read_zsdata(%struct.uart_pmac_port* %227)
  br label %229

229:                                              ; preds = %202, %73, %42
  ret void
}

declare dso_local i32 @read_zsreg(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_zsdata(%struct.uart_pmac_port*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_convert_to_zs(%struct.uart_pmac_port*, i32, i32, i32) #1

declare dso_local i32 @pmz_load_zsregs(%struct.uart_pmac_port*, i32*) #1

declare dso_local i32 @write_zsdata(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
