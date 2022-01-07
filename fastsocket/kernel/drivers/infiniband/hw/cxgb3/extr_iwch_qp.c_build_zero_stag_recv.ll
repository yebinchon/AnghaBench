; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_zero_stag_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_zero_stag_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwch_qp = type { %struct.TYPE_15__, %struct.TYPE_10__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%union.t3_wr = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8**, %struct.TYPE_12__*, i64*, i8* }
%struct.TYPE_12__ = type { i64, i8*, i64 }
%struct.ib_recv_wr = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i32 }

@T3_STAG0_PBL_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@T3_STAG0_MAX_PBE_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@T3_STAG0_PAGE_SHIFT = common dso_local global i64 0, align 8
@T3_MAX_SGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwch_qp*, %union.t3_wr*, %struct.ib_recv_wr*)* @build_zero_stag_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_zero_stag_recv(%struct.iwch_qp* %0, %union.t3_wr* %1, %struct.ib_recv_wr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwch_qp*, align 8
  %6 = alloca %union.t3_wr*, align 8
  %7 = alloca %struct.ib_recv_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwch_qp* %0, %struct.iwch_qp** %5, align 8
  store %union.t3_wr* %1, %union.t3_wr** %6, align 8
  store %struct.ib_recv_wr* %2, %struct.ib_recv_wr** %7, align 8
  %11 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %12 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* @T3_STAG0_PBL_SIZE, align 4
  %16 = call i32 @cxio_hal_pblpool_alloc(%struct.TYPE_16__* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %221

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %25 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %23, %30
  %32 = ashr i32 %31, 3
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %34 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %38 = bitcast %union.t3_wr* %37 to %struct.TYPE_13__*
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  store i8* %36, i8** %39, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %136, %22
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %43 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %139

46:                                               ; preds = %40
  %47 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %48 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @T3_STAG0_MAX_PBE_LEN, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %221

60:                                               ; preds = %46
  %61 = load i64, i64* @T3_STAG0_PAGE_SHIFT, align 8
  %62 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %63 = bitcast %union.t3_wr* %62 to %struct.TYPE_13__*
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %61, i64* %68, align 8
  %69 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %70 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %69, i32 0, i32 2
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %60
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %221

81:                                               ; preds = %60
  %82 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %83 = bitcast %union.t3_wr* %82 to %struct.TYPE_13__*
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %91 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i8* @cpu_to_be32(i32 %98)
  %100 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %101 = bitcast %union.t3_wr* %100 to %struct.TYPE_13__*
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i8* %99, i8** %107, align 8
  %108 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %109 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %108, i32 0, i32 2
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @cpu_to_be64(i32 %115)
  %117 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %118 = bitcast %union.t3_wr* %117 to %struct.TYPE_13__*
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i64 %116, i64* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i8* @cpu_to_be32(i32 %125)
  %127 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %128 = bitcast %union.t3_wr* %127 to %struct.TYPE_13__*
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  store i8* %126, i8** %133, align 8
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %81
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %40

139:                                              ; preds = %40
  br label %140

140:                                              ; preds = %183, %139
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @T3_MAX_SGE, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %186

144:                                              ; preds = %140
  %145 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %146 = bitcast %union.t3_wr* %145 to %struct.TYPE_13__*
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  store i64 0, i64* %151, align 8
  %152 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %153 = bitcast %union.t3_wr* %152 to %struct.TYPE_13__*
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  %160 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %161 = bitcast %union.t3_wr* %160 to %struct.TYPE_13__*
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  store i8* null, i8** %167, align 8
  %168 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %169 = bitcast %union.t3_wr* %168 to %struct.TYPE_13__*
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  %176 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %177 = bitcast %union.t3_wr* %176 to %struct.TYPE_13__*
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i8**, i8*** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  store i8* null, i8** %182, align 8
  br label %183

183:                                              ; preds = %144
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %140

186:                                              ; preds = %140
  %187 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %188 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %191 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %195 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %199 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @Q_PTR2IDX(i32 %197, i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  store i32 %189, i32* %204, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %207 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %211 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %215 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @Q_PTR2IDX(i32 %213, i32 %217)
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  store i32 %205, i32* %220, align 4
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %186, %78, %57, %19
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @cxio_hal_pblpool_alloc(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i64 @Q_PTR2IDX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
