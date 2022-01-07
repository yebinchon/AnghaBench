; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_verbs_send_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_verbs_send_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i32*, i32, i32, i32, %struct.qib_verbs_txreq*, i32, %struct.TYPE_4__ }
%struct.qib_verbs_txreq = type { i64, i64, i32, %struct.TYPE_6__, %struct.qib_pio_header*, i32*, i32, %struct.qib_qp*, %struct.qib_sge_state* }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.qib_pio_header = type { i32, i8** }
%struct.TYPE_4__ = type { i32 }
%struct.qib_ib_header = type { i32* }
%struct.qib_sge_state = type { i32 }
%struct.qib_ibdev = type { i64, %struct.qib_pio_header* }
%struct.qib_devdata = type { i64 (%struct.qib_pportdata*, i64, i32, i32)*, i32, i64, %struct.TYPE_5__* }
%struct.qib_pportdata = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.qib_ibport = type { i32 }

@sdma_complete = common dso_local global i32 0, align 4
@QIB_HAS_SDMA_TIMEOUT = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_HEADTOHOST = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_INTREQ = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_USELARGEBUF = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_FREEDESC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@QIB_SDMA_TXREQ_F_FREEBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_qp*, %struct.qib_ib_header*, i64, %struct.qib_sge_state*, i64, i64, i64)* @qib_verbs_send_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_verbs_send_dma(%struct.qib_qp* %0, %struct.qib_ib_header* %1, i64 %2, %struct.qib_sge_state* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.qib_qp*, align 8
  %9 = alloca %struct.qib_ib_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.qib_sge_state*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.qib_ibdev*, align 8
  %16 = alloca %struct.qib_devdata*, align 8
  %17 = alloca %struct.qib_ibport*, align 8
  %18 = alloca %struct.qib_pportdata*, align 8
  %19 = alloca %struct.qib_verbs_txreq*, align 8
  %20 = alloca %struct.qib_pio_header*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.qib_qp* %0, %struct.qib_qp** %8, align 8
  store %struct.qib_ib_header* %1, %struct.qib_ib_header** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.qib_sge_state* %3, %struct.qib_sge_state** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %24 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %25 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.qib_ibdev* @to_idev(i32 %27)
  store %struct.qib_ibdev* %28, %struct.qib_ibdev** %15, align 8
  %29 = load %struct.qib_ibdev*, %struct.qib_ibdev** %15, align 8
  %30 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %29)
  store %struct.qib_devdata* %30, %struct.qib_devdata** %16, align 8
  %31 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %32 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %36 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.qib_ibport* @to_iport(i32 %34, i32 %37)
  store %struct.qib_ibport* %38, %struct.qib_ibport** %17, align 8
  %39 = load %struct.qib_ibport*, %struct.qib_ibport** %17, align 8
  %40 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %39)
  store %struct.qib_pportdata* %40, %struct.qib_pportdata** %18, align 8
  %41 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %42 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %41, i32 0, i32 4
  %43 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %42, align 8
  store %struct.qib_verbs_txreq* %43, %struct.qib_verbs_txreq** %19, align 8
  %44 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %45 = icmp ne %struct.qib_verbs_txreq* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %7
  %47 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %48 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %47, i32 0, i32 4
  store %struct.qib_verbs_txreq* null, %struct.qib_verbs_txreq** %48, align 8
  %49 = load %struct.qib_pportdata*, %struct.qib_pportdata** %18, align 8
  %50 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %51 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %50, i32 0, i32 8
  %52 = load %struct.qib_sge_state*, %struct.qib_sge_state** %51, align 8
  %53 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %54 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %57 = call i32 @qib_sdma_verbs_send(%struct.qib_pportdata* %49, %struct.qib_sge_state* %52, i64 %55, %struct.qib_verbs_txreq* %56)
  store i32 %57, i32* %23, align 4
  br label %314

58:                                               ; preds = %7
  %59 = load %struct.qib_ibdev*, %struct.qib_ibdev** %15, align 8
  %60 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %61 = call %struct.qib_verbs_txreq* @get_txreq(%struct.qib_ibdev* %59, %struct.qib_qp* %60)
  store %struct.qib_verbs_txreq* %61, %struct.qib_verbs_txreq** %19, align 8
  %62 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %63 = call i64 @IS_ERR(%struct.qib_verbs_txreq* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %316

66:                                               ; preds = %58
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %16, align 8
  %68 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %67, i32 0, i32 0
  %69 = load i64 (%struct.qib_pportdata*, i64, i32, i32)*, i64 (%struct.qib_pportdata*, i64, i32, i32)** %68, align 8
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %18, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %73 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.qib_ib_header*, %struct.qib_ib_header** %9, align 8
  %76 = getelementptr inbounds %struct.qib_ib_header, %struct.qib_ib_header* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be16_to_cpu(i32 %79)
  %81 = ashr i32 %80, 12
  %82 = call i64 %69(%struct.qib_pportdata* %70, i64 %71, i32 %74, i32 %81)
  store i64 %82, i64* %21, align 8
  %83 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %84 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %85 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %84, i32 0, i32 7
  store %struct.qib_qp* %83, %struct.qib_qp** %85, align 8
  %86 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %87 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %86, i32 0, i32 2
  %88 = call i32 @atomic_inc(i32* %87)
  %89 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %90 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %93 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %95 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %98 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %97, i32 0, i32 5
  store i32* %96, i32** %98, align 8
  %99 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %100 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %66
  %104 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %105 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %103, %66
  %107 = load i32, i32* @sdma_complete, align 4
  %108 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %109 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 8
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %16, align 8
  %112 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @QIB_HAS_SDMA_TIMEOUT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load i32, i32* @QIB_SDMA_TXREQ_F_HEADTOHOST, align 4
  %119 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %120 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  br label %127

122:                                              ; preds = %106
  %123 = load i32, i32* @QIB_SDMA_TXREQ_F_INTREQ, align 4
  %124 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %125 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %117
  %128 = load i64, i64* %13, align 8
  %129 = add nsw i64 %128, 1
  %130 = load %struct.qib_devdata*, %struct.qib_devdata** %16, align 8
  %131 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %129, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load i32, i32* @QIB_SDMA_TXREQ_F_USELARGEBUF, align 4
  %136 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %137 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %135
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %134, %127
  %142 = load i64, i64* %12, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %146 = load i64, i64* %12, align 8
  %147 = call i64 @qib_count_sge(%struct.qib_sge_state* %145, i64 %146)
  store i64 %147, i64* %22, align 8
  %148 = load i64, i64* %22, align 8
  %149 = load %struct.qib_pportdata*, %struct.qib_pportdata** %18, align 8
  %150 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sge i64 %148, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  store i64 0, i64* %22, align 8
  br label %154

154:                                              ; preds = %153, %144
  br label %156

155:                                              ; preds = %141
  store i64 1, i64* %22, align 8
  br label %156

156:                                              ; preds = %155, %154
  %157 = load i64, i64* %22, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %217

159:                                              ; preds = %156
  %160 = load %struct.qib_ibdev*, %struct.qib_ibdev** %15, align 8
  %161 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %160, i32 0, i32 1
  %162 = load %struct.qib_pio_header*, %struct.qib_pio_header** %161, align 8
  %163 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %164 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %162, i64 %165
  store %struct.qib_pio_header* %166, %struct.qib_pio_header** %20, align 8
  %167 = load i64, i64* %13, align 8
  %168 = call i8* @cpu_to_le32(i64 %167)
  %169 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %170 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %169, i32 0, i32 1
  %171 = load i8**, i8*** %170, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  store i8* %168, i8** %172, align 8
  %173 = load i64, i64* %21, align 8
  %174 = call i8* @cpu_to_le32(i64 %173)
  %175 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %176 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %175, i32 0, i32 1
  %177 = load i8**, i8*** %176, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 1
  store i8* %174, i8** %178, align 8
  %179 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %180 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %179, i32 0, i32 0
  %181 = load %struct.qib_ib_header*, %struct.qib_ib_header** %9, align 8
  %182 = load i64, i64* %10, align 8
  %183 = shl i64 %182, 2
  %184 = call i32 @memcpy(i32* %180, %struct.qib_ib_header* %181, i64 %183)
  %185 = load i32, i32* @QIB_SDMA_TXREQ_F_FREEDESC, align 4
  %186 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %187 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %185
  store i32 %190, i32* %188, align 4
  %191 = load i64, i64* %22, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %194 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load %struct.qib_ibdev*, %struct.qib_ibdev** %15, align 8
  %197 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %200 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = mul i64 %201, 16
  %203 = add i64 %198, %202
  %204 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %205 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  store i64 %203, i64* %206, align 8
  %207 = load i64, i64* %10, align 8
  %208 = add nsw i64 %207, 2
  %209 = trunc i64 %208 to i32
  %210 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %211 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load %struct.qib_pportdata*, %struct.qib_pportdata** %18, align 8
  %213 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %214 = load i64, i64* %14, align 8
  %215 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %216 = call i32 @qib_sdma_verbs_send(%struct.qib_pportdata* %212, %struct.qib_sge_state* %213, i64 %214, %struct.qib_verbs_txreq* %215)
  store i32 %216, i32* %23, align 4
  br label %314

217:                                              ; preds = %156
  %218 = load i64, i64* %13, align 8
  %219 = add nsw i64 %218, 1
  %220 = trunc i64 %219 to i32
  %221 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %222 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %224 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = shl i32 %225, 2
  %227 = load i32, i32* @GFP_ATOMIC, align 4
  %228 = call %struct.qib_pio_header* @kmalloc(i32 %226, i32 %227)
  store %struct.qib_pio_header* %228, %struct.qib_pio_header** %20, align 8
  %229 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %230 = icmp ne %struct.qib_pio_header* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %217
  br label %303

232:                                              ; preds = %217
  %233 = load i64, i64* %13, align 8
  %234 = call i8* @cpu_to_le32(i64 %233)
  %235 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %236 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %235, i32 0, i32 1
  %237 = load i8**, i8*** %236, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 0
  store i8* %234, i8** %238, align 8
  %239 = load i64, i64* %21, align 8
  %240 = call i8* @cpu_to_le32(i64 %239)
  %241 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %242 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %241, i32 0, i32 1
  %243 = load i8**, i8*** %242, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 1
  store i8* %240, i8** %244, align 8
  %245 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %246 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %245, i32 0, i32 0
  %247 = load %struct.qib_ib_header*, %struct.qib_ib_header** %9, align 8
  %248 = load i64, i64* %10, align 8
  %249 = shl i64 %248, 2
  %250 = call i32 @memcpy(i32* %246, %struct.qib_ib_header* %247, i64 %249)
  %251 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %252 = getelementptr inbounds %struct.qib_pio_header, %struct.qib_pio_header* %251, i32 0, i32 0
  %253 = bitcast i32* %252 to i64*
  %254 = load i64, i64* %10, align 8
  %255 = getelementptr inbounds i64, i64* %253, i64 %254
  %256 = load %struct.qib_sge_state*, %struct.qib_sge_state** %11, align 8
  %257 = load i64, i64* %12, align 8
  %258 = call i32 @qib_copy_from_sge(i64* %255, %struct.qib_sge_state* %256, i64 %257)
  %259 = load %struct.qib_devdata*, %struct.qib_devdata** %16, align 8
  %260 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %259, i32 0, i32 3
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %264 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %265 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = shl i32 %266, 2
  %268 = load i32, i32* @DMA_TO_DEVICE, align 4
  %269 = call i64 @dma_map_single(i32* %262, %struct.qib_pio_header* %263, i32 %267, i32 %268)
  %270 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %271 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 2
  store i64 %269, i64* %272, align 8
  %273 = load %struct.qib_devdata*, %struct.qib_devdata** %16, align 8
  %274 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %273, i32 0, i32 3
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %278 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @dma_mapping_error(i32* %276, i64 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %232
  br label %300

284:                                              ; preds = %232
  %285 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %286 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %287 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %286, i32 0, i32 4
  store %struct.qib_pio_header* %285, %struct.qib_pio_header** %287, align 8
  %288 = load i32, i32* @QIB_SDMA_TXREQ_F_FREEBUF, align 4
  %289 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %290 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, %288
  store i32 %293, i32* %291, align 4
  %294 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %295 = getelementptr inbounds %struct.qib_verbs_txreq, %struct.qib_verbs_txreq* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  store i32 1, i32* %296, align 8
  %297 = load %struct.qib_pportdata*, %struct.qib_pportdata** %18, align 8
  %298 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %299 = call i32 @qib_sdma_verbs_send(%struct.qib_pportdata* %297, %struct.qib_sge_state* null, i64 0, %struct.qib_verbs_txreq* %298)
  store i32 %299, i32* %23, align 4
  br label %309

300:                                              ; preds = %283
  %301 = load %struct.qib_pio_header*, %struct.qib_pio_header** %20, align 8
  %302 = call i32 @kfree(%struct.qib_pio_header* %301)
  br label %303

303:                                              ; preds = %300, %231
  %304 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %305 = call i32 @qib_put_txreq(%struct.qib_verbs_txreq* %304)
  %306 = load %struct.qib_ibdev*, %struct.qib_ibdev** %15, align 8
  %307 = load %struct.qib_qp*, %struct.qib_qp** %8, align 8
  %308 = call i32 @wait_kmem(%struct.qib_ibdev* %306, %struct.qib_qp* %307)
  store i32 %308, i32* %23, align 4
  br label %309

309:                                              ; preds = %303, %284
  %310 = load %struct.qib_ibport*, %struct.qib_ibport** %17, align 8
  %311 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  br label %314

314:                                              ; preds = %316, %309, %159, %46
  %315 = load i32, i32* %23, align 4
  ret i32 %315

316:                                              ; preds = %65
  %317 = load %struct.qib_verbs_txreq*, %struct.qib_verbs_txreq** %19, align 8
  %318 = call i32 @PTR_ERR(%struct.qib_verbs_txreq* %317)
  store i32 %318, i32* %23, align 4
  br label %314
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @qib_sdma_verbs_send(%struct.qib_pportdata*, %struct.qib_sge_state*, i64, %struct.qib_verbs_txreq*) #1

declare dso_local %struct.qib_verbs_txreq* @get_txreq(%struct.qib_ibdev*, %struct.qib_qp*) #1

declare dso_local i64 @IS_ERR(%struct.qib_verbs_txreq*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @qib_count_sge(%struct.qib_sge_state*, i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.qib_ib_header*, i64) #1

declare dso_local %struct.qib_pio_header* @kmalloc(i32, i32) #1

declare dso_local i32 @qib_copy_from_sge(i64*, %struct.qib_sge_state*, i64) #1

declare dso_local i64 @dma_map_single(i32*, %struct.qib_pio_header*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @kfree(%struct.qib_pio_header*) #1

declare dso_local i32 @qib_put_txreq(%struct.qib_verbs_txreq*) #1

declare dso_local i32 @wait_kmem(%struct.qib_ibdev*, %struct.qib_qp*) #1

declare dso_local i32 @PTR_ERR(%struct.qib_verbs_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
