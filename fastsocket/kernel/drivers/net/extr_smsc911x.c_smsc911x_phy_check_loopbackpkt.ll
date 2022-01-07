; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_check_loopbackpkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_phy_check_loopbackpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i64*, i64* }

@MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@TX_CMD_A_FIRST_SEG_ = common dso_local global i32 0, align 4
@TX_CMD_A_LAST_SEG_ = common dso_local global i32 0, align 4
@TX_DATA_FIFO = common dso_local global i32 0, align 4
@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to transmit during loopback test\00", align 1
@TX_STS_ES_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Transmit encountered errors during loopback test\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to receive during loopback test\00", align 1
@RX_STS_ES_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Receive encountered errors during loopback test\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Unexpected packet size during loop back test, size=%d, will retry\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Successfully verified loopback packet\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Data mismatch during loop back test, will retry\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*)* @smsc911x_phy_check_loopbackpkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_phy_check_loopbackpkt(%struct.smsc911x_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %201, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ult i32 %16, 10
  br i1 %17, label %18, label %204

18:                                               ; preds = %15
  %19 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %20 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %23 = call i32 @memset(i64* %21, i32 0, i32 %22)
  %24 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %25 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = ptrtoint i64* %26 to i32
  %28 = and i32 %27, 3
  %29 = shl i32 %28, 16
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @TX_CMD_A_FIRST_SEG_, align 4
  %31 = load i32, i32* @TX_CMD_A_LAST_SEG_, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %39 = shl i32 %38, 16
  %40 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %43 = load i32, i32* @TX_DATA_FIFO, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %42, i32 %43, i32 %44)
  %46 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %47 = load i32, i32* @TX_DATA_FIFO, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %46, i32 %47, i32 %48)
  %50 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %51 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = ptrtoint i64* %52 to i32
  %54 = and i32 %53, -4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %56 = add i32 %55, 3
  store i32 %56, i32* %5, align 4
  %57 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %58 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = ptrtoint i64* %59 to i32
  %61 = and i32 %60, 3
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 2
  store i32 %65, i32* %5, align 4
  %66 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @smsc911x_tx_writefifo(%struct.smsc911x_data* %66, i32* %69, i32 %70)
  store i32 60, i32* %12, align 4
  br label %72

72:                                               ; preds = %84, %18
  %73 = call i32 @udelay(i32 5)
  %74 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %75 = call i32 @smsc911x_tx_get_txstatus(%struct.smsc911x_data* %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %12, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %72, label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* @HW, align 4
  %91 = call i32 (i32, i8*, ...) @SMSC_WARNING(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %201

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @TX_STS_ES_, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @HW, align 4
  %99 = call i32 (i32, i8*, ...) @SMSC_WARNING(i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %201

100:                                              ; preds = %92
  store i32 60, i32* %12, align 4
  br label %101

101:                                              ; preds = %113, %100
  %102 = call i32 @udelay(i32 5)
  %103 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %104 = call i32 @smsc911x_rx_get_rxstatus(%struct.smsc911x_data* %103)
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %106, -1
  store i32 %107, i32* %12, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i1 [ false, %105 ], [ %112, %109 ]
  br i1 %114, label %101, label %115

115:                                              ; preds = %113
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @HW, align 4
  %120 = call i32 (i32, i8*, ...) @SMSC_WARNING(i32 %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %201

121:                                              ; preds = %115
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @RX_STS_ES_, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @HW, align 4
  %128 = call i32 (i32, i8*, ...) @SMSC_WARNING(i32 %127, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %201

129:                                              ; preds = %121
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = and i64 %131, 1073676288
  %133 = lshr i64 %132, 16
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %11, align 4
  %135 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %136 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = ptrtoint i64* %137 to i32
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add i32 %139, 3
  store i32 %140, i32* %6, align 4
  %141 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %142 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = ptrtoint i64* %143 to i32
  %145 = and i32 %144, 3
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = ashr i32 %148, 2
  store i32 %149, i32* %6, align 4
  %150 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i32*
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @smsc911x_rx_readfifo(%struct.smsc911x_data* %150, i32* %153, i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %158 = add i32 %157, 4
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %129
  %161 = load i32, i32* @HW, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 (i32, i8*, ...) @SMSC_WARNING(i32 %161, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  br label %200

164:                                              ; preds = %129
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %165

165:                                              ; preds = %187, %164
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  %170 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %171 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %178 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %176, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %169
  store i32 1, i32* %14, align 4
  br label %190

186:                                              ; preds = %169
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %13, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %13, align 4
  br label %165

190:                                              ; preds = %185, %165
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @HW, align 4
  %195 = call i32 @SMSC_TRACE(i32 %194, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %207

196:                                              ; preds = %190
  %197 = load i32, i32* @HW, align 4
  %198 = call i32 (i32, i8*, ...) @SMSC_WARNING(i32 %197, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196
  br label %200

200:                                              ; preds = %199, %160
  br label %201

201:                                              ; preds = %200, %126, %118, %97, %89
  %202 = load i32, i32* %4, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %4, align 4
  br label %15

204:                                              ; preds = %15
  %205 = load i32, i32* @EIO, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %204, %193
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @smsc911x_tx_writefifo(%struct.smsc911x_data*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smsc911x_tx_get_txstatus(%struct.smsc911x_data*) #1

declare dso_local i32 @SMSC_WARNING(i32, i8*, ...) #1

declare dso_local i32 @smsc911x_rx_get_rxstatus(%struct.smsc911x_data*) #1

declare dso_local i32 @smsc911x_rx_readfifo(%struct.smsc911x_data*, i32*, i32) #1

declare dso_local i32 @SMSC_TRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
