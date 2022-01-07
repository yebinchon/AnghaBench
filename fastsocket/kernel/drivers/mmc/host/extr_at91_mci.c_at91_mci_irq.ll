; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_at91_mci.c_at91_mci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91mci_host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AT91_MCI_SR = common dso_local global i32 0, align 4
@AT91_MCI_IMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MCI irq: status = %08X, %08X, %08X\0A\00", align 1
@AT91_MCI_ERRORS = common dso_local global i32 0, align 4
@AT91_MCI_UNRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"MMC: Underrun error\0A\00", align 1
@AT91_MCI_OVRE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"MMC: Overrun error\0A\00", align 1
@AT91_MCI_DTOE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"MMC: Data timeout\0A\00", align 1
@AT91_MCI_DCRCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"MMC: CRC error in data\0A\00", align 1
@AT91_MCI_RTOE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"MMC: Response timeout\0A\00", align 1
@AT91_MCI_RENDE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"MMC: Response end bit error\0A\00", align 1
@AT91_MCI_RCRCE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"MMC: Response CRC error\0A\00", align 1
@AT91_MCI_RDIRE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"MMC: Response direction error\0A\00", align 1
@AT91_MCI_RINDE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"MMC: Response index error\0A\00", align 1
@AT91_MCI_TXBUFE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"TX buffer empty\0A\00", align 1
@AT91_MCI_ENDRX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"ENDRX\0A\00", align 1
@AT91_MCI_RXBUFF = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"RX buffer full\0A\00", align 1
@ATMEL_PDC_PTCR = common dso_local global i32 0, align 4
@ATMEL_PDC_RXTDIS = common dso_local global i32 0, align 4
@ATMEL_PDC_TXTDIS = common dso_local global i32 0, align 4
@AT91_MCI_IDR = common dso_local global i32 0, align 4
@AT91_MCI_ENDTX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"Transmit has ended\0A\00", align 1
@AT91_MCI_NOTBUSY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"Card is ready\0A\00", align 1
@AT91_MCI_DTIP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"Data transfer in progress\0A\00", align 1
@AT91_MCI_BLKE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"Block transfer has ended\0A\00", align 1
@AT91_MCI_IER = common dso_local global i32 0, align 4
@AT91_MCI_SDIOIRQA = common dso_local global i32 0, align 4
@AT91_MCI_SDIOIRQB = common dso_local global i32 0, align 4
@AT91_MCI_TXRDY = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"Ready to transmit\0A\00", align 1
@AT91_MCI_RXRDY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"Ready to receive\0A\00", align 1
@AT91_MCI_CMDRDY = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"Command ready\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Completed command\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_mci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_mci_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.at91mci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.at91mci_host*
  store %struct.at91mci_host* %10, %struct.at91mci_host** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %12 = load i32, i32* @AT91_MCI_SR, align 4
  %13 = call i32 @at91_mci_read(%struct.at91mci_host* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %15 = load i32, i32* @AT91_MCI_IMR, align 4
  %16 = call i32 @at91_mci_read(%struct.at91mci_host* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %19, %20
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AT91_MCI_ERRORS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %94

30:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AT91_MCI_UNRE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AT91_MCI_OVRE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @AT91_MCI_DTOE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @AT91_MCI_DCRCE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @AT91_MCI_RTOE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @AT91_MCI_RENDE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @AT91_MCI_RCRCE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @AT91_MCI_RDIRE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @AT91_MCI_RINDE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %86
  br label %227

94:                                               ; preds = %2
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @AT91_MCI_TXBUFE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %101 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %102 = call i32 @at91_mci_handle_transmitted(%struct.at91mci_host* %101)
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @AT91_MCI_ENDRX, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %110 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %111 = call i32 @at91_mci_post_dma_read(%struct.at91mci_host* %110)
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @AT91_MCI_RXBUFF, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %119 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %120 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %121 = load i32, i32* @ATMEL_PDC_RXTDIS, align 4
  %122 = load i32, i32* @ATMEL_PDC_TXTDIS, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @at91_mci_write(%struct.at91mci_host* %119, i32 %120, i32 %123)
  %125 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %126 = load i32, i32* @AT91_MCI_IDR, align 4
  %127 = load i32, i32* @AT91_MCI_RXBUFF, align 4
  %128 = load i32, i32* @AT91_MCI_ENDRX, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @at91_mci_write(%struct.at91mci_host* %125, i32 %126, i32 %129)
  store i32 1, i32* %6, align 4
  br label %131

131:                                              ; preds = %117, %112
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @AT91_MCI_ENDTX, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @AT91_MCI_NOTBUSY, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %145 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %146 = call i32 @at91_mci_update_bytes_xfered(%struct.at91mci_host* %145)
  store i32 1, i32* %6, align 4
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @AT91_MCI_DTIP, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %147
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @AT91_MCI_BLKE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %183

159:                                              ; preds = %154
  %160 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %161 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %162 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = icmp ne %struct.TYPE_3__* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %159
  %168 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %169 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %168, i32 0, i32 1
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  store i32 1, i32* %6, align 4
  br label %182

177:                                              ; preds = %167, %159
  %178 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %179 = load i32, i32* @AT91_MCI_IER, align 4
  %180 = load i32, i32* @AT91_MCI_NOTBUSY, align 4
  %181 = call i32 @at91_mci_write(%struct.at91mci_host* %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %176
  br label %183

183:                                              ; preds = %182, %154
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @AT91_MCI_SDIOIRQA, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %190 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @mmc_signal_sdio_irq(i32 %191)
  br label %193

193:                                              ; preds = %188, %183
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @AT91_MCI_SDIOIRQB, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %200 = getelementptr inbounds %struct.at91mci_host, %struct.at91mci_host* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @mmc_signal_sdio_irq(i32 %201)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @AT91_MCI_TXRDY, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %203
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @AT91_MCI_RXRDY, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %210
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @AT91_MCI_CMDRDY, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %224 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %225 = call i32 @at91_mci_handle_cmdrdy(%struct.at91mci_host* %224)
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %222, %217
  br label %227

227:                                              ; preds = %226, %93
  %228 = load i32, i32* %6, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %227
  %231 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %232 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %233 = load i32, i32* @AT91_MCI_IDR, align 4
  %234 = load i32, i32* @AT91_MCI_SDIOIRQA, align 4
  %235 = load i32, i32* @AT91_MCI_SDIOIRQB, align 4
  %236 = or i32 %234, %235
  %237 = xor i32 %236, -1
  %238 = and i32 -1, %237
  %239 = call i32 @at91_mci_write(%struct.at91mci_host* %232, i32 %233, i32 %238)
  %240 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @at91_mci_completed_command(%struct.at91mci_host* %240, i32 %241)
  br label %253

243:                                              ; preds = %227
  %244 = load %struct.at91mci_host*, %struct.at91mci_host** %5, align 8
  %245 = load i32, i32* @AT91_MCI_IDR, align 4
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* @AT91_MCI_SDIOIRQA, align 4
  %248 = load i32, i32* @AT91_MCI_SDIOIRQB, align 4
  %249 = or i32 %247, %248
  %250 = xor i32 %249, -1
  %251 = and i32 %246, %250
  %252 = call i32 @at91_mci_write(%struct.at91mci_host* %244, i32 %245, i32 %251)
  br label %253

253:                                              ; preds = %243, %230
  %254 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %254
}

declare dso_local i32 @at91_mci_read(%struct.at91mci_host*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @at91_mci_handle_transmitted(%struct.at91mci_host*) #1

declare dso_local i32 @at91_mci_post_dma_read(%struct.at91mci_host*) #1

declare dso_local i32 @at91_mci_write(%struct.at91mci_host*, i32, i32) #1

declare dso_local i32 @at91_mci_update_bytes_xfered(%struct.at91mci_host*) #1

declare dso_local i32 @mmc_signal_sdio_irq(i32) #1

declare dso_local i32 @at91_mci_handle_cmdrdy(%struct.at91mci_host*) #1

declare dso_local i32 @at91_mci_completed_command(%struct.at91mci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
