; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwch_qp = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%union.t3_wr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i8**, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i64, i8*, i8* }
%struct.ib_recv_wr = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64 }

@T3_MAX_SGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwch_qp*, %union.t3_wr*, %struct.ib_recv_wr*)* @build_rdma_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_recv(%struct.iwch_qp* %0, %union.t3_wr* %1, %struct.ib_recv_wr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwch_qp*, align 8
  %6 = alloca %union.t3_wr*, align 8
  %7 = alloca %struct.ib_recv_wr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.iwch_qp* %0, %struct.iwch_qp** %5, align 8
  store %union.t3_wr* %1, %union.t3_wr** %6, align 8
  store %struct.ib_recv_wr* %2, %struct.ib_recv_wr** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @T3_MAX_SGE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @T3_MAX_SGE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %21 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %22 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %25 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %28 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @iwch_sgl2pbl_map(i32 %23, %struct.TYPE_10__* %26, i64 %29, i64* %17, i32* %20)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %228

35:                                               ; preds = %3
  %36 = getelementptr inbounds i32, i32* %20, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %39 = bitcast %union.t3_wr* %38 to %struct.TYPE_7__*
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %37, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %20, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %46 = bitcast %union.t3_wr* %45 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %44, i32* %49, align 4
  %50 = getelementptr inbounds i32, i32* %20, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %53 = bitcast %union.t3_wr* %52 to %struct.TYPE_7__*
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %51, i32* %56, align 4
  %57 = getelementptr inbounds i32, i32* %20, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %60 = bitcast %union.t3_wr* %59 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %58, i32* %63, align 4
  %64 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %65 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @cpu_to_be32(i64 %66)
  %68 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %69 = bitcast %union.t3_wr* %68 to %struct.TYPE_7__*
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  store i8* %67, i8** %70, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %151, %35
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %75 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %154

78:                                               ; preds = %71
  %79 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %80 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @cpu_to_be32(i64 %86)
  %88 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %89 = bitcast %union.t3_wr* %88 to %struct.TYPE_7__*
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i8* %87, i8** %95, align 8
  %96 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %97 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %96, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i8* @cpu_to_be32(i64 %103)
  %105 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %106 = bitcast %union.t3_wr* %105 to %struct.TYPE_7__*
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i8* %104, i8** %112, align 8
  %113 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %114 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %113, i32 0, i32 2
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %20, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 12, %124
  %126 = zext i32 %125 to i64
  %127 = shl i64 1, %126
  %128 = sub i64 %127, 1
  %129 = and i64 %120, %128
  %130 = call i64 @cpu_to_be64(i64 %129)
  %131 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %132 = bitcast %union.t3_wr* %131 to %struct.TYPE_7__*
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i64 %130, i64* %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %17, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @cpu_to_be32(i64 %142)
  %144 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %145 = bitcast %union.t3_wr* %144 to %struct.TYPE_7__*
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %143, i8** %150, align 8
  br label %151

151:                                              ; preds = %78
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %71

154:                                              ; preds = %71
  br label %155

155:                                              ; preds = %191, %154
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @T3_MAX_SGE, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %194

159:                                              ; preds = %155
  %160 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %161 = bitcast %union.t3_wr* %160 to %struct.TYPE_7__*
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  store i8* null, i8** %167, align 8
  %168 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %169 = bitcast %union.t3_wr* %168 to %struct.TYPE_7__*
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  store i8* null, i8** %175, align 8
  %176 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %177 = bitcast %union.t3_wr* %176 to %struct.TYPE_7__*
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i64 0, i64* %183, align 8
  %184 = load %union.t3_wr*, %union.t3_wr** %6, align 8
  %185 = bitcast %union.t3_wr* %184 to %struct.TYPE_7__*
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* null, i8** %190, align 8
  br label %191

191:                                              ; preds = %159
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %155

194:                                              ; preds = %155
  %195 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %7, align 8
  %196 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %199 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %203 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %207 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @Q_PTR2IDX(i32 %205, i32 %209)
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  store i32 %197, i32* %212, align 4
  %213 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %214 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %218 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.iwch_qp*, %struct.iwch_qp** %5, align 8
  %222 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i64 @Q_PTR2IDX(i32 %220, i32 %224)
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  store i32 0, i32* %227, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %228

228:                                              ; preds = %194, %33
  %229 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @iwch_sgl2pbl_map(i32, %struct.TYPE_10__*, i64, i64*, i32*) #2

declare dso_local i8* @cpu_to_be32(i64) #2

declare dso_local i64 @cpu_to_be64(i64) #2

declare dso_local i64 @Q_PTR2IDX(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
