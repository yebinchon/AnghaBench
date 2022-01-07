; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_drv.c_cpc_init_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_drv.c_cpc_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_17__, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i64, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_16__, %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.net_device*, i64, i64, i64, %struct.TYPE_19__* }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@cpc_init_card.board_nbr = internal global i32 1, align 4
@PC300_OSC_CLOCK = common dso_local global i32 0, align 4
@PCR = common dso_local global i64 0, align 8
@PCR_PR2 = common dso_local global i32 0, align 4
@BTCR = common dso_local global i64 0, align 8
@WCRL = common dso_local global i64 0, align 8
@DMER = common dso_local global i64 0, align 8
@CPLD_REG1 = common dso_local global i64 0, align 8
@CPLD_ID_REG = common dso_local global i64 0, align 8
@CPLD_V2_REG1 = common dso_local global i64 0, align 8
@CPLD_V2_REG2 = common dso_local global i32 0, align 4
@CPLD_REG2 = common dso_local global i32 0, align 4
@CPLD_REG1_GLOBAL_CLK = common dso_local global i32 0, align 4
@CLOCK_EXT = common dso_local global i32 0, align 4
@ENCODING_NRZ = common dso_local global i32 0, align 4
@PARITY_CRC16_PR1_CCITT = common dso_local global i32 0, align 4
@IF_IFACE_T1 = common dso_local global i32 0, align 4
@PC300_LC_B8ZS = common dso_local global i32 0, align 4
@PC300_FR_ESF = common dso_local global i32 0, align 4
@PC300_LBO_0_DB = common dso_local global i32 0, align 4
@PC300_RX_SENS_SH = common dso_local global i32 0, align 4
@IF_IFACE_X21 = common dso_local global i32 0, align 4
@IF_IFACE_V35 = common dso_local global i32 0, align 4
@IF_PROTO_PPP = common dso_local global i32 0, align 4
@N_DMA_RX_BUF = common dso_local global i64 0, align 8
@N_DMA_TX_BUF = common dso_local global i32 0, align 4
@cpc_queue_xmit = common dso_local global i32 0, align 4
@cpc_attach = common dso_local global i32 0, align 4
@PC300_TX_QUEUE_LEN = common dso_local global i32 0, align 4
@PC300_DEF_MTU = common dso_local global i32 0, align 4
@cpc_netdev_ops = common dso_local global i32 0, align 4
@PC300_TX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: Cyclades-PC300/\00", align 1
@PC300_PMC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"TE-M\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TE  \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"X21 \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"RSV \00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c" #%d, %dKB of RAM at 0x%08x, IRQ%d, channel %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Dev%d on card(0x%08x): unable to allocate i/f name.\0A\00", align 1
@PC300_PCI_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @cpc_init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc_init_card(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %11 = call i32 @plx_init(%struct.TYPE_20__* %10)
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 13
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 14
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %15, %19
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 13
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 14
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %24, %28
  %30 = call i32 @cpc_readw(i64 %29)
  %31 = or i32 %30, 64
  %32 = call i32 @cpc_writew(i64 %20, i32 %31)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 13
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %36, %40
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 12
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %45, %49
  %51 = call i32 @cpc_readl(i64 %50)
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, -5
  %54 = trunc i64 %53 to i32
  %55 = call i32 @cpc_writel(i64 %41, i32 %54)
  %56 = load i32, i32* @PC300_OSC_CLOCK, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 11
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %61 = call i32 @detect_ram(%struct.TYPE_20__* %60)
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 10
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCR, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* @PCR_PR2, align 4
  %72 = call i32 @cpc_writeb(i64 %70, i32 %71)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 10
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BTCR, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @cpc_writeb(i64 %78, i32 16)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @WCRL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @cpc_writeb(i64 %85, i32 0)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @DMER, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @cpc_writeb(i64 %92, i32 128)
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 129
  br i1 %98, label %99, label %187

99:                                               ; preds = %1
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CPLD_REG1, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @cpc_readb(i64 %105)
  store i32 %106, i32* %5, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CPLD_REG1, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 90
  %115 = call i32 @cpc_writeb(i64 %112, i32 %114)
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CPLD_REG1, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @cpc_readb(i64 %121)
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %99
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @CPLD_ID_REG, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @cpc_readb(i64 %131)
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 8
  %136 = load i64, i64* @CPLD_V2_REG1, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 7
  store i64 %136, i64* %139, align 8
  %140 = load i32, i32* @CPLD_V2_REG2, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 9
  store i32 %140, i32* %143, align 8
  br label %164

144:                                              ; preds = %99
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  store i32 0, i32* %147, align 8
  %148 = load i64, i64* @CPLD_REG1, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 7
  store i64 %148, i64* %151, align 8
  %152 = load i32, i32* @CPLD_REG2, align 4
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 9
  store i32 %152, i32* %155, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @CPLD_REG1, align 8
  %161 = add nsw i64 %159, %160
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @cpc_writeb(i64 %161, i32 %162)
  br label %164

164:                                              ; preds = %144, %125
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 7
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %168, %172
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 8
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %177, %181
  %183 = call i32 @cpc_readb(i64 %182)
  %184 = load i32, i32* @CPLD_REG1_GLOBAL_CLK, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @cpc_writeb(i64 %173, i32 %185)
  br label %187

187:                                              ; preds = %164, %1
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %407, %187
  %189 = load i32, i32* %3, align 4
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %189, %193
  br i1 %194, label %195, label %410

195:                                              ; preds = %188
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %197, align 8
  %199 = load i32, i32* %3, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i64 %200
  store %struct.TYPE_19__* %201, %struct.TYPE_19__** %6, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 8
  store %struct.TYPE_18__* %203, %struct.TYPE_18__** %7, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 7
  store %struct.TYPE_20__* %204, %struct.TYPE_20__** %206, align 8
  %207 = load i32, i32* %3, align 4
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  %214 = load i32, i32* @CLOCK_EXT, align 4
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  store i32 %214, i32* %218, align 8
  %219 = load i32, i32* @ENCODING_NRZ, align 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  store i32 %219, i32* %223, align 4
  %224 = load i32, i32* @PARITY_CRC16_PR1_CCITT, align 4
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 6
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  store i32 %224, i32* %228, align 4
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  switch i32 %232, label %263 [
    i32 129, label %233
    i32 128, label %257
    i32 130, label %262
  ]

233:                                              ; preds = %195
  %234 = load i32, i32* @IF_IFACE_T1, align 4
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 6
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 2
  store i32 %234, i32* %237, align 8
  %238 = load i32, i32* @PC300_LC_B8ZS, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 6
  store i32 %238, i32* %241, align 8
  %242 = load i32, i32* @PC300_FR_ESF, align 4
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 5
  store i32 %242, i32* %245, align 4
  %246 = load i32, i32* @PC300_LBO_0_DB, align 4
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 6
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 4
  store i32 %246, i32* %249, align 8
  %250 = load i32, i32* @PC300_RX_SENS_SH, align 4
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 6
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 3
  store i32 %250, i32* %253, align 4
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  store i32 -1, i32* %256, align 8
  br label %268

257:                                              ; preds = %195
  %258 = load i32, i32* @IF_IFACE_X21, align 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 2
  store i32 %258, i32* %261, align 8
  br label %268

262:                                              ; preds = %195
  br label %263

263:                                              ; preds = %195, %262
  %264 = load i32, i32* @IF_IFACE_V35, align 4
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 6
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 2
  store i32 %264, i32* %267, align 8
  br label %268

268:                                              ; preds = %263, %257, %233
  %269 = load i32, i32* @IF_PROTO_PPP, align 4
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 6
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 1
  store i32 %269, i32* %272, align 4
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 5
  store i64 0, i64* %274, align 8
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 4
  store i64 0, i64* %276, align 8
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 3
  store i64 0, i64* %278, align 8
  %279 = load i64, i64* @N_DMA_RX_BUF, align 8
  %280 = sub nsw i64 %279, 1
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 2
  store i64 %280, i64* %282, align 8
  %283 = load i32, i32* @N_DMA_TX_BUF, align 4
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 4
  store %struct.TYPE_19__* %286, %struct.TYPE_19__** %288, align 8
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 3
  store i64 0, i64* %290, align 8
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 2
  store i64 0, i64* %292, align 8
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 1
  store i64 0, i64* %294, align 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %296 = call %struct.net_device* @alloc_hdlcdev(%struct.TYPE_18__* %295)
  store %struct.net_device* %296, %struct.net_device** %9, align 8
  %297 = load %struct.net_device*, %struct.net_device** %9, align 8
  %298 = icmp eq %struct.net_device* %297, null
  br i1 %298, label %299, label %300

299:                                              ; preds = %268
  br label %407

300:                                              ; preds = %268
  %301 = load %struct.net_device*, %struct.net_device** %9, align 8
  %302 = call %struct.TYPE_21__* @dev_to_hdlc(%struct.net_device* %301)
  store %struct.TYPE_21__* %302, %struct.TYPE_21__** %8, align 8
  %303 = load i32, i32* @cpc_queue_xmit, align 4
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* @cpc_attach, align 4
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 4
  %309 = load %struct.net_device*, %struct.net_device** %9, align 8
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  store %struct.net_device* %309, %struct.net_device** %311, align 8
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.net_device*, %struct.net_device** %9, align 8
  %317 = getelementptr inbounds %struct.net_device, %struct.net_device* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 8
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %321, %325
  %327 = sub nsw i32 %326, 1
  %328 = load %struct.net_device*, %struct.net_device** %9, align 8
  %329 = getelementptr inbounds %struct.net_device, %struct.net_device* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 4
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.net_device*, %struct.net_device** %9, align 8
  %335 = getelementptr inbounds %struct.net_device, %struct.net_device* %334, i32 0, i32 7
  store i32 %333, i32* %335, align 8
  %336 = load i32, i32* @PC300_TX_QUEUE_LEN, align 4
  %337 = load %struct.net_device*, %struct.net_device** %9, align 8
  %338 = getelementptr inbounds %struct.net_device, %struct.net_device* %337, i32 0, i32 6
  store i32 %336, i32* %338, align 4
  %339 = load i32, i32* @PC300_DEF_MTU, align 4
  %340 = load %struct.net_device*, %struct.net_device** %9, align 8
  %341 = getelementptr inbounds %struct.net_device, %struct.net_device* %340, i32 0, i32 5
  store i32 %339, i32* %341, align 8
  %342 = load %struct.net_device*, %struct.net_device** %9, align 8
  %343 = getelementptr inbounds %struct.net_device, %struct.net_device* %342, i32 0, i32 4
  store i32* @cpc_netdev_ops, i32** %343, align 8
  %344 = load i32, i32* @PC300_TX_TIMEOUT, align 4
  %345 = load %struct.net_device*, %struct.net_device** %9, align 8
  %346 = getelementptr inbounds %struct.net_device, %struct.net_device* %345, i32 0, i32 3
  store i32 %344, i32* %346, align 4
  %347 = load %struct.net_device*, %struct.net_device** %9, align 8
  %348 = call i64 @register_hdlc_device(%struct.net_device* %347)
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %396

350:                                              ; preds = %300
  %351 = load %struct.net_device*, %struct.net_device** %9, align 8
  %352 = getelementptr inbounds %struct.net_device, %struct.net_device* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %353)
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  switch i32 %358, label %374 [
    i32 129, label %359
    i32 128, label %371
    i32 130, label %373
  ]

359:                                              ; preds = %350
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @PC300_PMC, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %359
  %367 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %370

368:                                              ; preds = %359
  %369 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %370

370:                                              ; preds = %368, %366
  br label %376

371:                                              ; preds = %350
  %372 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %376

373:                                              ; preds = %350
  br label %374

374:                                              ; preds = %350, %373
  %375 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %376

376:                                              ; preds = %374, %371, %370
  %377 = load i32, i32* @cpc_init_card.board_nbr, align 4
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = sdiv i32 %381, 1024
  %383 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %384 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 5
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %3, align 4
  %392 = add nsw i32 %391, 1
  %393 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %377, i32 %382, i32 %386, i32 %390, i32 %392)
  %394 = load i32, i32* %4, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %4, align 4
  br label %406

396:                                              ; preds = %300
  %397 = load i32, i32* %3, align 4
  %398 = add nsw i32 %397, 1
  %399 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 8
  %403 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %398, i32 %402)
  %404 = load %struct.net_device*, %struct.net_device** %9, align 8
  %405 = call i32 @free_netdev(%struct.net_device* %404)
  br label %407

406:                                              ; preds = %376
  br label %407

407:                                              ; preds = %406, %396, %299
  %408 = load i32, i32* %3, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %3, align 4
  br label %188

410:                                              ; preds = %188
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 0
  %413 = call i32 @spin_lock_init(i32* %412)
  %414 = load i32, i32* @cpc_init_card.board_nbr, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* @cpc_init_card.board_nbr, align 4
  ret void
}

declare dso_local i32 @plx_init(%struct.TYPE_20__*) #1

declare dso_local i32 @cpc_writew(i64, i32) #1

declare dso_local i32 @cpc_readw(i64) #1

declare dso_local i32 @cpc_writel(i64, i32) #1

declare dso_local i32 @cpc_readl(i64) #1

declare dso_local i32 @detect_ram(%struct.TYPE_20__*) #1

declare dso_local i32 @cpc_writeb(i64, i32) #1

declare dso_local i32 @cpc_readb(i64) #1

declare dso_local %struct.net_device* @alloc_hdlcdev(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_21__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i64 @register_hdlc_device(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
