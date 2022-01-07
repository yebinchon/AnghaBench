; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_serdes_7322_init_old.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_serdes_7322_init_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_7__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@krp_tx_deemph_override = common dso_local global i32 0, align 4
@IBSD_TX_DEEMPHASIS_OVERRIDE_0 = common dso_local global i32 0, align 4
@reset_tx_deemphasis_override = common dso_local global i32 0, align 4
@LE2_QME = common dso_local global i32 0, align 4
@LE2_DEFAULT = common dso_local global i32 0, align 4
@QDR_STATIC_ADAPT_DOWN_R1 = common dso_local global i64 0, align 8
@QDR_STATIC_ADAPT_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*)* @serdes_7322_init_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_7322_init_old(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %4 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %5 = call i32 @init_txdds_table(%struct.qib_pportdata* %4, i32 0)
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %7 = load i32, i32* @krp_tx_deemph_override, align 4
  %8 = load i32, i32* @IBSD_TX_DEEMPHASIS_OVERRIDE_0, align 4
  %9 = load i32, i32* @reset_tx_deemphasis_override, align 4
  %10 = call i64 @SYM_MASK(i32 %8, i32 %9)
  %11 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %6, i32 %7, i64 %10)
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %13 = call i32 @BMASK(i32 11, i32 9)
  %14 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %12, i32 2, i32 0, i32 %13)
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %16 = call i32 @BMASK(i32 12, i32 11)
  %17 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %15, i32 11, i32 2048, i32 %16)
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %19 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %18, i32 13, i32 64, i32 64)
  %20 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %21 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i64 @IS_QME(%struct.TYPE_7__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @LE2_QME, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @LE2_DEFAULT, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %3, align 4
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = shl i32 %32, 7
  %34 = call i32 @BMASK(i32 9, i32 7)
  %35 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %31, i32 13, i32 %33, i32 %34)
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %37 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = call i64 @IS_QME(%struct.TYPE_7__* %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  store i32 %42, i32* %3, align 4
  %43 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = shl i32 %44, 5
  %46 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %43, i32 13, i32 %45, i32 32)
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %48 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %51 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @IBSD(i32 %52)
  %54 = call i32 @ahb_mod(%struct.TYPE_7__* %49, i32 %53, i32 5, i32 10, i32 0, i32 16384)
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %56 = call i32 @BMASK(i32 9, i32 8)
  %57 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %55, i32 5, i32 0, i32 %56)
  %58 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %59 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %62 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @IBSD(i32 %63)
  %65 = call i32 @BMASK(i32 14, i32 11)
  %66 = call i32 @ahb_mod(%struct.TYPE_7__* %60, i32 %64, i32 5, i32 5, i32 16384, i32 %65)
  %67 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %68 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %71 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @IBSD(i32 %72)
  %74 = call i32 @BMASK(i32 7, i32 4)
  %75 = call i32 @ahb_mod(%struct.TYPE_7__* %69, i32 %73, i32 5, i32 7, i32 128, i32 %74)
  %76 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %77 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %80 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @IBSD(i32 %81)
  %83 = call i32 @BMASK(i32 14, i32 11)
  %84 = call i32 @ahb_mod(%struct.TYPE_7__* %78, i32 %82, i32 5, i32 8, i32 16384, i32 %83)
  %85 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %86 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %89 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @IBSD(i32 %90)
  %92 = call i32 @BMASK(i32 7, i32 4)
  %93 = call i32 @ahb_mod(%struct.TYPE_7__* %87, i32 %91, i32 5, i32 10, i32 128, i32 %92)
  %94 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %95 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %98 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @IBSD(i32 %99)
  %101 = call i32 @BMASK(i32 3, i32 0)
  %102 = call i32 @ahb_mod(%struct.TYPE_7__* %96, i32 %100, i32 5, i32 6, i32 4, i32 %101)
  %103 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %104 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %107 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @IBSD(i32 %108)
  %110 = call i32 @BMASK(i32 11, i32 8)
  %111 = call i32 @ahb_mod(%struct.TYPE_7__* %105, i32 %109, i32 5, i32 7, i32 1024, i32 %110)
  %112 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %113 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %116 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @IBSD(i32 %117)
  %119 = call i32 @BMASK(i32 3, i32 0)
  %120 = call i32 @ahb_mod(%struct.TYPE_7__* %114, i32 %118, i32 5, i32 9, i32 4, i32 %119)
  %121 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %122 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %125 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @IBSD(i32 %126)
  %128 = call i32 @BMASK(i32 11, i32 8)
  %129 = call i32 @ahb_mod(%struct.TYPE_7__* %123, i32 %127, i32 5, i32 10, i32 1024, i32 %128)
  %130 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %131 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %134 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @IBSD(i32 %135)
  %137 = call i32 @ahb_mod(%struct.TYPE_7__* %132, i32 %136, i32 5, i32 9, i32 32768, i32 32768)
  %138 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %139 = call i32 @BMASK(i32 5, i32 3)
  %140 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %138, i32 14, i32 8, i32 %139)
  %141 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %142 = call i32 @BMASK(i32 12, i32 10)
  %143 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %141, i32 20, i32 2048, i32 %142)
  %144 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %145 = call i32 @BMASK(i32 15, i32 13)
  %146 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %144, i32 20, i32 32768, i32 %145)
  %147 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %148 = call i32 @serdes_7322_los_enable(%struct.qib_pportdata* %147, i32 1)
  %149 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %150 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %149, i32 9, i32 0, i32 32768)
  %151 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %152 = call i32 @BMASK(i32 1, i32 0)
  %153 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %151, i32 16, i32 0, i32 %152)
  %154 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %155 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %29
  %163 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %164 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = call i64 @IS_QME(%struct.TYPE_7__* %165)
  %167 = icmp ne i64 %166, 0
  br label %168

168:                                              ; preds = %162, %29
  %169 = phi i1 [ true, %29 ], [ %167, %162 ]
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 46784, i32 27564
  store i32 %171, i32* %3, align 4
  %172 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %172, i32 21, i32 %173, i32 65534)
  %175 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %176 = call i32 @krp_static_adapt_dis(i32 0)
  %177 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %175, i32 %176, i64 0)
  %178 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %179 = call i32 @krp_static_adapt_dis(i32 1)
  %180 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %178, i32 %179, i64 0)
  %181 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %182 = call i32 @krp_static_adapt_dis(i32 2)
  %183 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %184 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %183, i32 0, i32 0
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %168
  %192 = load i64, i64* @QDR_STATIC_ADAPT_DOWN_R1, align 8
  br label %195

193:                                              ; preds = %168
  %194 = load i64, i64* @QDR_STATIC_ADAPT_DOWN, align 8
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i64 [ %192, %191 ], [ %194, %193 ]
  %197 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %181, i32 %182, i64 %196)
  %198 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %199 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %198, i32 0, i32 1
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  store i32 1, i32* %201, align 4
  %202 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %203 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %202, i32 38, i32 0, i32 1024)
  %204 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %205 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %204, i32 12, i32 16, i32 16)
  %206 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %207 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %195
  %215 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %216 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %215, i32 12, i32 4096, i32 4096)
  %217 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %218 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %217, i32 12, i32 512, i32 3840)
  br label %219

219:                                              ; preds = %214, %195
  %220 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %221 = call i32 @BMASK(i32 8, i32 5)
  %222 = call i32 @ibsd_wr_allchans(%struct.qib_pportdata* %220, i32 2, i32 480, i32 %221)
  ret i32 0
}

declare dso_local i32 @init_txdds_table(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i64) #1

declare dso_local i64 @SYM_MASK(i32, i32) #1

declare dso_local i32 @ibsd_wr_allchans(%struct.qib_pportdata*, i32, i32, i32) #1

declare dso_local i32 @BMASK(i32, i32) #1

declare dso_local i64 @IS_QME(%struct.TYPE_7__*) #1

declare dso_local i32 @ahb_mod(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IBSD(i32) #1

declare dso_local i32 @serdes_7322_los_enable(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @krp_static_adapt_dis(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
