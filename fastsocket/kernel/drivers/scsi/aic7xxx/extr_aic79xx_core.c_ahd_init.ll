; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i32, i32, i32*, i32, i32, %struct.hardware_scb*, %struct.TYPE_2__, %struct.TYPE_2__*, %struct.target_cmd*, %struct.ahd_completion*, i32, i32, i32, i32* }
%struct.hardware_scb = type { i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.target_cmd = type { i32 }
%struct.ahd_completion = type { i32 }

@AHD_MODE_SCSI_MSK = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Hardware SCB size is incorrect\00", align 1
@AHD_INITIATORROLE = common dso_local global i32 0, align 4
@AHD_TMODE_ENABLE = common dso_local global i32 0, align 4
@AHD_TARGETMODE = common dso_local global i32 0, align 4
@AHD_SCB_MAX = common dso_local global i32 0, align 4
@AHD_TMODE_CMDS = common dso_local global i32 0, align 4
@AHD_PKT_BITBUCKET_BUG = common dso_local global i32 0, align 4
@PKT_OVERRUN_BUFSIZE = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ahd_dmamap_cb = common dso_local global i32 0, align 4
@AHD_QOUT_SIZE = common dso_local global i64 0, align 8
@AHD_RESET_BUS_A = common dso_local global i32 0, align 4
@AHD_CURRENT_SENSING = common dso_local global i32 0, align 4
@FLXADDR_ROMSTAT_CURSENSECTL = common dso_local global i32 0, align 4
@CURSENSE_ENB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: current sensing timeout 1\0A\00", align 1
@FLX_FSTAT_BUSY = common dso_local global i32 0, align 4
@FLXADDR_FLEXSTAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: current sensing timeout 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: Timedout during current-sensing test\0A\00", align 1
@FLXADDR_CURRENT_STAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: current sensing timeout 3\0A\00", align 1
@FLX_CSTAT_MASK = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: %s Channel %s\0A\00", align 1
@channel_strings = common dso_local global i8** null, align 8
@termstat_strings = common dso_local global i8** null, align 8
@FLX_CSTAT_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [98 x i8] c"%s: WARNING. Termination is not configured correctly.\0A%s: WARNING. SCSI bus operations may FAIL.\0A\00", align 1
@AHD_STAT_UPDATE_US = common dso_local global i32 0, align 4
@ahd_stat_timer = common dso_local global i32 0, align 4
@AHD_39BIT_ADDRESSING = common dso_local global i32 0, align 4
@AHD_DEBUG_SEQUENCER = common dso_local global i32 0, align 4
@AHD_MAXTRANSFER_SIZE = common dso_local global i32 0, align 4
@AHD_NSEG = common dso_local global i32 0, align 4
@AHD_SEQUENCER_DEBUG = common dso_local global i32 0, align 4
@AHD_SHOW_TERMCTL = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_init(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %14 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %15 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %16 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = call i32 @ahd_probe_stack_size(%struct.ahd_softc* %17)
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call i32* @malloc(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 16
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %32, i32 0, i32 16
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %2, align 4
  br label %380

38:                                               ; preds = %1
  %39 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @AHD_INITIATORROLE, align 4
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @AHD_TMODE_ENABLE, align 4
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 1, %48
  %50 = and i32 %45, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  %53 = load i32, i32* @AHD_TARGETMODE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %38
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @AHD_SCB_MAX, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = add i64 %66, 4
  store i64 %67, i64* %6, align 8
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AHD_TARGETMODE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %59
  %75 = load i32, i32* @AHD_TMODE_CMDS, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %74, %59
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AHD_PKT_BITBUCKET_BUG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i64, i64* @PKT_OVERRUN_BUFSIZE, align 8
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %93, i32 0, i32 14
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %97 = add nsw i64 %96, 1
  %98 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %99 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %100 = load i64, i64* %6, align 8
  %101 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %102, i32 0, i32 13
  %104 = call i64 @ahd_dma_tag_create(%struct.ahd_softc* %92, i32 %95, i32 1, i64 %97, i64 %98, i32 %99, i32* null, i32* null, i64 %100, i32 1, i32 %101, i32 0, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %91
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %2, align 4
  br label %380

108:                                              ; preds = %91
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %110 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %118 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = bitcast i64* %119 to i8**
  %121 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %122 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %123 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = call i64 @ahd_dmamem_alloc(%struct.ahd_softc* %113, i32 %116, i8** %120, i32 %121, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %108
  %128 = load i32, i32* @ENOMEM, align 4
  store i32 %128, i32* %2, align 4
  br label %380

129:                                              ; preds = %108
  %130 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %131 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %136 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %143 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %142, i32 0, i32 9
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load i32, i32* @ahd_dmamap_cb, align 4
  %148 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %149 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %148, i32 0, i32 9
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = call i32 @ahd_dmamap_load(%struct.ahd_softc* %134, i32 %137, i32 %141, i64 %145, i64 %146, i32 %147, i64* %150, i32 0)
  %152 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %153 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to %struct.ahd_completion*
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %158 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %157, i32 0, i32 12
  store %struct.ahd_completion* %156, %struct.ahd_completion** %158, align 8
  %159 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %160 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %159, i32 0, i32 12
  %161 = load %struct.ahd_completion*, %struct.ahd_completion** %160, align 8
  %162 = load i64, i64* @AHD_QOUT_SIZE, align 8
  %163 = getelementptr inbounds %struct.ahd_completion, %struct.ahd_completion* %161, i64 %162
  %164 = bitcast %struct.ahd_completion* %163 to i32*
  store i32* %164, i32** %4, align 8
  %165 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %166 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @AHD_QOUT_SIZE, align 8
  %170 = mul i64 %169, 4
  %171 = add i64 %168, %170
  store i64 %171, i64* %5, align 8
  %172 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %173 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @AHD_TARGETMODE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %129
  %179 = load i32*, i32** %4, align 8
  %180 = bitcast i32* %179 to %struct.target_cmd*
  %181 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %182 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %181, i32 0, i32 11
  store %struct.target_cmd* %180, %struct.target_cmd** %182, align 8
  %183 = load i32, i32* @AHD_TMODE_CMDS, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  %186 = load i32*, i32** %4, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  store i32* %187, i32** %4, align 8
  %188 = load i32, i32* @AHD_TMODE_CMDS, align 4
  %189 = sext i32 %188 to i64
  %190 = mul i64 %189, 4
  %191 = load i64, i64* %5, align 8
  %192 = add i64 %191, %190
  store i64 %192, i64* %5, align 8
  br label %193

193:                                              ; preds = %178, %129
  %194 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %195 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @AHD_PKT_BITBUCKET_BUG, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %193
  %201 = load i32*, i32** %4, align 8
  %202 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %203 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %202, i32 0, i32 5
  store i32* %201, i32** %203, align 8
  %204 = load i64, i64* @PKT_OVERRUN_BUFSIZE, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 %204
  store i32* %206, i32** %4, align 8
  %207 = load i64, i64* @PKT_OVERRUN_BUFSIZE, align 8
  %208 = load i64, i64* %5, align 8
  %209 = add nsw i64 %208, %207
  store i64 %209, i64* %5, align 8
  br label %210

210:                                              ; preds = %200, %193
  %211 = load i32*, i32** %4, align 8
  %212 = bitcast i32* %211 to %struct.hardware_scb*
  %213 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %214 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %213, i32 0, i32 8
  store %struct.hardware_scb* %212, %struct.hardware_scb** %214, align 8
  %215 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %216 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %215, i32 0, i32 9
  %217 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %218 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %217, i32 0, i32 10
  store %struct.TYPE_2__* %216, %struct.TYPE_2__** %218, align 8
  %219 = load i64, i64* %5, align 8
  %220 = call i32 @ahd_htole32(i64 %219)
  %221 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %222 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %221, i32 0, i32 8
  %223 = load %struct.hardware_scb*, %struct.hardware_scb** %222, align 8
  %224 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %223, i32 0, i32 0
  store i32 %220, i32* %224, align 4
  %225 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %226 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %230 = call i64 @ahd_init_scbdata(%struct.ahd_softc* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %210
  %233 = load i32, i32* @ENOMEM, align 4
  store i32 %233, i32* %2, align 4
  br label %380

234:                                              ; preds = %210
  %235 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %236 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @AHD_INITIATORROLE, align 4
  %239 = and i32 %237, %238
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %234
  %242 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %243 = xor i32 %242, -1
  %244 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %245 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %241, %234
  %249 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %250 = call i32 @ahd_platform_init(%struct.ahd_softc* %249)
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %252 = call i32 @ahd_chip_init(%struct.ahd_softc* %251)
  %253 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %254 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %255 = load i32, i32* @AHD_MODE_SCSI_MSK, align 4
  %256 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %253, i32 %254, i32 %255)
  %257 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %258 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @AHD_CURRENT_SENSING, align 4
  %261 = and i32 %259, %260
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %248
  br label %371

264:                                              ; preds = %248
  %265 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %266 = load i32, i32* @FLXADDR_ROMSTAT_CURSENSECTL, align 4
  %267 = load i32, i32* @CURSENSE_ENB, align 4
  %268 = call i32 @ahd_write_flexport(%struct.ahd_softc* %265, i32 %266, i32 %267)
  store i32 %268, i32* %8, align 4
  %269 = load i32, i32* %8, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %264
  %272 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %273 = call i8* @ahd_name(%struct.ahd_softc* %272)
  %274 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %273)
  br label %371

275:                                              ; preds = %264
  store i32 20, i32* %7, align 4
  %276 = load i32, i32* @FLX_FSTAT_BUSY, align 4
  store i32 %276, i32* %11, align 4
  br label %277

277:                                              ; preds = %298, %275
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* @FLX_FSTAT_BUSY, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br label %285

285:                                              ; preds = %282, %277
  %286 = phi i1 [ false, %277 ], [ %284, %282 ]
  br i1 %286, label %287, label %301

287:                                              ; preds = %285
  %288 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %289 = load i32, i32* @FLXADDR_FLEXSTAT, align 4
  %290 = call i32 @ahd_read_flexport(%struct.ahd_softc* %288, i32 %289, i32* %11)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %295 = call i8* @ahd_name(%struct.ahd_softc* %294)
  %296 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %295)
  br label %371

297:                                              ; preds = %287
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %7, align 4
  br label %277

301:                                              ; preds = %285
  %302 = load i32, i32* %7, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %306 = call i8* @ahd_name(%struct.ahd_softc* %305)
  %307 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %306)
  br label %371

308:                                              ; preds = %301
  %309 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %310 = load i32, i32* @FLXADDR_CURRENT_STAT, align 4
  %311 = call i32 @ahd_read_flexport(%struct.ahd_softc* %309, i32 %310, i32* %10)
  store i32 %311, i32* %8, align 4
  %312 = load i32, i32* %8, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %308
  %315 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %316 = call i8* @ahd_name(%struct.ahd_softc* %315)
  %317 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %316)
  br label %371

318:                                              ; preds = %308
  %319 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %320 = load i32, i32* @FLXADDR_ROMSTAT_CURSENSECTL, align 4
  %321 = call i32 @ahd_write_flexport(%struct.ahd_softc* %319, i32 %320, i32 0)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %322

322:                                              ; preds = %355, %318
  %323 = load i32, i32* %7, align 4
  %324 = icmp slt i32 %323, 4
  br i1 %324, label %325, label %361

325:                                              ; preds = %322
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* @FLX_CSTAT_MASK, align 4
  %328 = and i32 %326, %327
  store i32 %328, i32* %12, align 4
  %329 = load i32, i32* %12, align 4
  switch i32 %329, label %354 [
    i32 129, label %330
    i32 128, label %330
    i32 131, label %333
    i32 130, label %333
  ]

330:                                              ; preds = %325, %325
  %331 = load i32, i32* %9, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %9, align 4
  br label %333

333:                                              ; preds = %325, %325, %330
  %334 = load i32, i32* %9, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = load i32, i32* @bootverbose, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %336
  br label %354

340:                                              ; preds = %336, %333
  %341 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %342 = call i8* @ahd_name(%struct.ahd_softc* %341)
  %343 = load i8**, i8*** @channel_strings, align 8
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8*, i8** %343, i64 %345
  %347 = load i8*, i8** %346, align 8
  %348 = load i8**, i8*** @termstat_strings, align 8
  %349 = load i32, i32* %12, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %348, i64 %350
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %342, i8* %347, i8* %352)
  br label %354

354:                                              ; preds = %325, %340, %339
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %7, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %7, align 4
  %358 = load i32, i32* @FLX_CSTAT_SHIFT, align 4
  %359 = load i32, i32* %10, align 4
  %360 = ashr i32 %359, %358
  store i32 %360, i32* %10, align 4
  br label %322

361:                                              ; preds = %322
  %362 = load i32, i32* %9, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %366 = call i8* @ahd_name(%struct.ahd_softc* %365)
  %367 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %368 = call i8* @ahd_name(%struct.ahd_softc* %367)
  %369 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.6, i64 0, i64 0), i8* %366, i8* %368)
  br label %370

370:                                              ; preds = %364, %361
  br label %371

371:                                              ; preds = %370, %314, %304, %293, %271, %263
  %372 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %373 = call i32 @ahd_restart(%struct.ahd_softc* %372)
  %374 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %375 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %374, i32 0, i32 6
  %376 = load i32, i32* @AHD_STAT_UPDATE_US, align 4
  %377 = load i32, i32* @ahd_stat_timer, align 4
  %378 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %379 = call i32 @ahd_timer_reset(i32* %375, i32 %376, i32 %377, %struct.ahd_softc* %378)
  store i32 0, i32* %2, align 4
  br label %380

380:                                              ; preds = %371, %232, %127, %106, %36
  %381 = load i32, i32* %2, align 4
  ret i32 %381
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_probe_stack_size(%struct.ahd_softc*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ahd_dma_tag_create(%struct.ahd_softc*, i32, i32, i64, i64, i32, i32*, i32*, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @ahd_dmamem_alloc(%struct.ahd_softc*, i32, i8**, i32, i32*) #1

declare dso_local i32 @ahd_dmamap_load(%struct.ahd_softc*, i32, i32, i64, i64, i32, i64*, i32) #1

declare dso_local i32 @ahd_htole32(i64) #1

declare dso_local i64 @ahd_init_scbdata(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_platform_init(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_chip_init(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_write_flexport(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_read_flexport(%struct.ahd_softc*, i32, i32*) #1

declare dso_local i32 @ahd_restart(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_timer_reset(i32*, i32, i32, %struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
