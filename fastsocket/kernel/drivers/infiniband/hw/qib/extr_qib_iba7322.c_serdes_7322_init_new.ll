; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_serdes_7322_init_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_serdes_7322_init_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_5__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@SERDES_CHANS = common dso_local global i32 0, align 4
@krp_tx_deemph_override = common dso_local global i32 0, align 4
@IBSD_TX_DEEMPHASIS_OVERRIDE_0 = common dso_local global i32 0, align 4
@reset_tx_deemphasis_override = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Serdes %d calibration not done after .5 sec: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Serdes %d chan %d calibration failed\0A\00", align 1
@LE2_QME = common dso_local global i32 0, align 4
@LE2_DEFAULT = common dso_local global i32 0, align 4
@QDR_STATIC_ADAPT_DOWN_R1 = common dso_local global i64 0, align 8
@QDR_STATIC_ADAPT_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*)* @serdes_7322_init_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_7322_init_new(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %8 = load i32, i32* @SERDES_CHANS, align 4
  %9 = shl i32 1, %8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @IBSD(i32 %16)
  %18 = call i32 @ahb_mod(%struct.TYPE_7__* %13, i32 %17, i32 5, i32 10, i32 0, i32 16384)
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %20 = load i32, i32* @krp_tx_deemph_override, align 4
  %21 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %22 = load i32, i32* @reset_tx_deemphasis_override, align 4
  %23 = call i64 @SYM_MASK(i32 %21, i32 %22)
  %24 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %19, i32 %20, i64 %23)
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %26 = call i32 @BMASK(i32 9, i32 1)
  %27 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %25, i32 1, i32 0, i32 %26)
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %29 = call i32 @BMASK(i32 5, i32 5)
  %30 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %28, i32 13, i32 0, i32 %29)
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %32 = call i32 @BMASK(i32 15, i32 15)
  %33 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %31, i32 1, i32 0, i32 %32)
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %35 = call i32 @BMASK(i32 6, i32 6)
  %36 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %34, i32 13, i32 0, i32 %35)
  %37 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %38 = call i32 @BMASK(i32 0, i32 0)
  %39 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %37, i32 5, i32 0, i32 %38)
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %41 = call i32 @BMASK(i32 12, i32 12)
  %42 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %40, i32 12, i32 0, i32 %41)
  %43 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %44 = call i32 @BMASK(i32 3, i32 3)
  %45 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %43, i32 2, i32 0, i32 %44)
  %46 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %47 = call i32 @BMASK(i32 4, i32 4)
  %48 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %46, i32 2, i32 0, i32 %47)
  %49 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %50 = call i32 @BMASK(i32 13, i32 13)
  %51 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %49, i32 13, i32 0, i32 %50)
  %52 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %53 = call i32 @BMASK(i32 10, i32 10)
  %54 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %52, i32 4, i32 0, i32 %53)
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %56 = call i32 @BMASK(i32 4, i32 4)
  %57 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %55, i32 12, i32 0, i32 %56)
  %58 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %59 = call i32 @BMASK(i32 15, i32 15)
  %60 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %58, i32 2, i32 32768, i32 %59)
  %61 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %62 = call i32 @BMASK(i32 9, i32 8)
  %63 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %61, i32 5, i32 0, i32 %62)
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %65 = call i32 @BMASK(i32 5, i32 5)
  %66 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %64, i32 12, i32 32, i32 %65)
  %67 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %68 = call i32 @BMASK(i32 14, i32 12)
  %69 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %67, i32 2, i32 16384, i32 %68)
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %71 = call i32 @BMASK(i32 1, i32 0)
  %72 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %70, i32 16, i32 0, i32 %71)
  %73 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %74 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %1
  %82 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %83 = call i32 @BMASK(i32 12, i32 12)
  %84 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %82, i32 12, i32 4096, i32 %83)
  %85 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %86 = call i32 @BMASK(i32 11, i32 8)
  %87 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %85, i32 12, i32 512, i32 %86)
  br label %92

88:                                               ; preds = %1
  %89 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %90 = call i32 @BMASK(i32 13, i32 11)
  %91 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %89, i32 19, i32 6144, i32 %90)
  br label %92

92:                                               ; preds = %88, %81
  %93 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %94 = call i32 @BMASK(i32 15, i32 13)
  %95 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %93, i32 0, i32 0, i32 %94)
  %96 = call i32 @msleep(i32 20)
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %98 = call i32 @BMASK(i32 14, i32 14)
  %99 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %97, i32 0, i32 16384, i32 %98)
  %100 = call i32 @msleep(i32 20)
  %101 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %102 = call i32 @BMASK(i32 13, i32 13)
  %103 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %101, i32 0, i32 8192, i32 %102)
  %104 = call i32 @msleep(i32 20)
  %105 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %106 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %109 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @IBSD(i32 %110)
  %112 = call i32 @BMASK(i32 14, i32 11)
  %113 = call i32 @ahb_mod(%struct.TYPE_7__* %107, i32 %111, i32 5, i32 5, i32 16384, i32 %112)
  %114 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %115 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %118 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @IBSD(i32 %119)
  %121 = call i32 @BMASK(i32 7, i32 4)
  %122 = call i32 @ahb_mod(%struct.TYPE_7__* %116, i32 %120, i32 5, i32 7, i32 128, i32 %121)
  %123 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %124 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %127 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @IBSD(i32 %128)
  %130 = call i32 @BMASK(i32 14, i32 11)
  %131 = call i32 @ahb_mod(%struct.TYPE_7__* %125, i32 %129, i32 5, i32 8, i32 16384, i32 %130)
  %132 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %133 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %136 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @IBSD(i32 %137)
  %139 = call i32 @BMASK(i32 7, i32 4)
  %140 = call i32 @ahb_mod(%struct.TYPE_7__* %134, i32 %138, i32 5, i32 10, i32 128, i32 %139)
  %141 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %142 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %141, i32 0, i32 1
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %145 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @IBSD(i32 %146)
  %148 = call i32 @BMASK(i32 3, i32 0)
  %149 = call i32 @ahb_mod(%struct.TYPE_7__* %143, i32 %147, i32 5, i32 6, i32 4, i32 %148)
  %150 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %151 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %154 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @IBSD(i32 %155)
  %157 = call i32 @BMASK(i32 11, i32 8)
  %158 = call i32 @ahb_mod(%struct.TYPE_7__* %152, i32 %156, i32 5, i32 7, i32 1024, i32 %157)
  %159 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %160 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %163 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @IBSD(i32 %164)
  %166 = call i32 @BMASK(i32 3, i32 0)
  %167 = call i32 @ahb_mod(%struct.TYPE_7__* %161, i32 %165, i32 5, i32 9, i32 4, i32 %166)
  %168 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %169 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %168, i32 0, i32 1
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %172 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @IBSD(i32 %173)
  %175 = call i32 @BMASK(i32 11, i32 8)
  %176 = call i32 @ahb_mod(%struct.TYPE_7__* %170, i32 %174, i32 5, i32 10, i32 1024, i32 %175)
  %177 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %178 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %181 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @IBSD(i32 %182)
  %184 = call i32 @ahb_mod(%struct.TYPE_7__* %179, i32 %183, i32 5, i32 9, i32 32768, i32 32768)
  %185 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %186 = call i32 @BMASK(i32 5, i32 3)
  %187 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %185, i32 14, i32 8, i32 %186)
  %188 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %189 = call i32 @BMASK(i32 12, i32 10)
  %190 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %188, i32 20, i32 2048, i32 %189)
  %191 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %192 = call i32 @BMASK(i32 15, i32 13)
  %193 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %191, i32 20, i32 32768, i32 %192)
  %194 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %195 = call i32 @serdes_7322_los_enable(%struct.qib_pportdata* %194, i32 1)
  %196 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %197 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %196, i32 38, i32 0, i32 1024)
  %198 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %199 = call i32 @BMASK(i32 0, i32 0)
  %200 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %198, i32 15, i32 1, i32 %199)
  %201 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %202 = call i32 @BMASK(i32 4, i32 4)
  %203 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %201, i32 12, i32 16, i32 %202)
  %204 = call i32 @msleep(i32 20)
  %205 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %206 = call i32 @BMASK(i32 10, i32 10)
  %207 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %205, i32 4, i32 1024, i32 %206)
  %208 = load i64, i64* @jiffies, align 8
  %209 = call i64 @msecs_to_jiffies(i32 500)
  %210 = add i64 %208, %209
  store i64 %210, i64* %3, align 8
  br label %211

211:                                              ; preds = %262, %92
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i64, i64* %3, align 8
  %216 = call i32 @time_is_before_jiffies(i64 %215)
  %217 = icmp ne i32 %216, 0
  %218 = xor i1 %217, true
  br label %219

219:                                              ; preds = %214, %211
  %220 = phi i1 [ false, %211 ], [ %218, %214 ]
  br i1 %220, label %221, label %263

221:                                              ; preds = %219
  %222 = call i32 @msleep(i32 20)
  store i32 0, i32* %6, align 4
  br label %223

223:                                              ; preds = %259, %221
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* @SERDES_CHANS, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %262

227:                                              ; preds = %223
  %228 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %229 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %228, i32 0, i32 1
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %232 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @IBSD(i32 %233)
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = ashr i32 %236, 1
  %238 = add nsw i32 %235, %237
  %239 = call i32 @ahb_mod(%struct.TYPE_7__* %230, i32 %234, i32 %238, i32 25, i32 0, i32 0)
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* %5, align 4
  %241 = xor i32 %240, -1
  %242 = call i32 @BMASK(i32 9, i32 9)
  %243 = and i32 %241, %242
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %227
  %246 = load i32, i32* %7, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %6, align 4
  %249 = shl i32 1, %248
  %250 = and i32 %247, %249
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %245
  %253 = load i32, i32* %6, align 4
  %254 = shl i32 1, %253
  %255 = xor i32 %254, -1
  %256 = load i32, i32* %7, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %7, align 4
  br label %258

258:                                              ; preds = %252, %245, %227
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %6, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %6, align 4
  br label %223

262:                                              ; preds = %223
  br label %211

263:                                              ; preds = %219
  %264 = load i32, i32* %7, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %268 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @IBSD(i32 %269)
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %270, i32 %271)
  br label %308

273:                                              ; preds = %263
  store i32 0, i32* %6, align 4
  br label %274

274:                                              ; preds = %304, %273
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @SERDES_CHANS, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %307

278:                                              ; preds = %274
  %279 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %280 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %279, i32 0, i32 1
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %280, align 8
  %282 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %283 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @IBSD(i32 %284)
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = ashr i32 %287, 1
  %289 = add nsw i32 %286, %288
  %290 = call i32 @ahb_mod(%struct.TYPE_7__* %281, i32 %285, i32 %289, i32 25, i32 0, i32 0)
  store i32 %290, i32* %5, align 4
  %291 = load i32, i32* %5, align 4
  %292 = xor i32 %291, -1
  %293 = call i32 @BMASK(i32 10, i32 10)
  %294 = and i32 %292, %293
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %278
  %297 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %298 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @IBSD(i32 %299)
  %301 = load i32, i32* %6, align 4
  %302 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %296, %278
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %6, align 4
  br label %274

307:                                              ; preds = %274
  br label %308

308:                                              ; preds = %307, %266
  %309 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %310 = call i32 @BMASK(i32 10, i32 10)
  %311 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %309, i32 4, i32 0, i32 %310)
  %312 = call i32 @msleep(i32 20)
  %313 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %314 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %313, i32 0, i32 1
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %314, align 8
  %316 = call i64 @IS_QME(%struct.TYPE_7__* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %308
  %319 = load i32, i32* @LE2_QME, align 4
  br label %322

320:                                              ; preds = %308
  %321 = load i32, i32* @LE2_DEFAULT, align 4
  br label %322

322:                                              ; preds = %320, %318
  %323 = phi i32 [ %319, %318 ], [ %321, %320 ]
  store i32 %323, i32* %4, align 4
  %324 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %325 = load i32, i32* %4, align 4
  %326 = shl i32 %325, 7
  %327 = call i32 @BMASK(i32 9, i32 7)
  %328 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %324, i32 13, i32 %326, i32 %327)
  %329 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %330 = call i32 @BMASK(i32 7, i32 5)
  %331 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %329, i32 3, i32 224, i32 %330)
  %332 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %333 = call i32 @BMASK(i32 6, i32 6)
  %334 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %332, i32 13, i32 64, i32 %333)
  %335 = call i32 @msleep(i32 20)
  %336 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %337 = call i32 @BMASK(i32 9, i32 1)
  %338 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %336, i32 1, i32 1, i32 %337)
  %339 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %340 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %339, i32 0, i32 1
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %353, label %347

347:                                              ; preds = %322
  %348 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %349 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %348, i32 0, i32 1
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %349, align 8
  %351 = call i64 @IS_QME(%struct.TYPE_7__* %350)
  %352 = icmp ne i64 %351, 0
  br label %353

353:                                              ; preds = %347, %322
  %354 = phi i1 [ true, %322 ], [ %352, %347 ]
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i32 46784, i32 27564
  store i32 %356, i32* %4, align 4
  %357 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %358 = load i32, i32* %4, align 4
  %359 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %357, i32 21, i32 %358, i32 65534)
  %360 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %361 = call i32 @BMASK(i32 0, i32 0)
  %362 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %360, i32 5, i32 0, i32 %361)
  %363 = call i32 @msleep(i32 20)
  %364 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %365 = call i32 @BMASK(i32 8, i32 5)
  %366 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %364, i32 2, i32 480, i32 %365)
  %367 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %368 = call i32 @BMASK(i32 4, i32 4)
  %369 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %367, i32 2, i32 16, i32 %368)
  %370 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %371 = call i32 @BMASK(i32 11, i32 9)
  %372 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %370, i32 2, i32 0, i32 %371)
  %373 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %374 = call i32 @BMASK(i32 3, i32 3)
  %375 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %373, i32 2, i32 8, i32 %374)
  %376 = call i32 @msleep(i32 50)
  %377 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %378 = call i32 @krp_static_adapt_dis(i32 0)
  %379 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %377, i32 %378, i64 0)
  %380 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %381 = call i32 @krp_static_adapt_dis(i32 1)
  %382 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %380, i32 %381, i64 0)
  %383 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %384 = call i32 @krp_static_adapt_dis(i32 2)
  %385 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %386 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %385, i32 0, i32 1
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %353
  %394 = load i64, i64* @QDR_STATIC_ADAPT_DOWN_R1, align 8
  br label %397

395:                                              ; preds = %353
  %396 = load i64, i64* @QDR_STATIC_ADAPT_DOWN, align 8
  br label %397

397:                                              ; preds = %395, %393
  %398 = phi i64 [ %394, %393 ], [ %396, %395 ]
  %399 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %383, i32 %384, i64 %398)
  %400 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %401 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %400, i32 0, i32 0
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 0
  store i32 1, i32* %403, align 4
  %404 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %405 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %404, i32 13, i32 0, i32 32)
  %406 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %407 = call i32 @BMASK(i32 15, i32 15)
  %408 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %406, i32 1, i32 0, i32 %407)
  %409 = call i32 @msleep(i32 20)
  %410 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %411 = call i32 @BMASK(i32 12, i32 12)
  %412 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %410, i32 12, i32 4096, i32 %411)
  %413 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %414 = call i32 @BMASK(i32 13, i32 13)
  %415 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %413, i32 12, i32 8192, i32 %414)
  %416 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %417 = call i32 @BMASK(i32 12, i32 11)
  %418 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %416, i32 11, i32 2048, i32 %417)
  %419 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %420 = call i32 @BMASK(i32 3, i32 2)
  %421 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %419, i32 12, i32 12, i32 %420)
  %422 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %423 = call i32 @init_txdds_table(%struct.qib_pportdata* %422, i32 0)
  ret i32 0
}

declare dso_local i32 @ahb_mod(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IBSD(i32) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i64) #1

declare dso_local i64 @SYM_MASK(i32, i32) #1

declare dso_local i32 @ibsd_wr_allchans(%struct.qib_pportdata*, i32, i32, i32) #1

declare dso_local i32 @BMASK(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @serdes_7322_los_enable(%struct.qib_pportdata*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_is_before_jiffies(i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i64 @IS_QME(%struct.TYPE_7__*) #1

declare dso_local i32 @krp_static_adapt_dis(i32) #1

declare dso_local i32 @init_txdds_table(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
