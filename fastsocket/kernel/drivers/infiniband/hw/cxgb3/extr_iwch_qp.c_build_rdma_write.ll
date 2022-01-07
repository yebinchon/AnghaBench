; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_rdma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t3_wr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, %struct.TYPE_10__*, i8*, i8*, i64*, i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8* }
%struct.ib_send_wr = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@T3_MAX_SGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@T3_RDMA_WRITE = common dso_local global i32 0, align 4
@IB_WR_RDMA_WRITE_WITH_IMM = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.t3_wr*, %struct.ib_send_wr*, i32*)* @build_rdma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_write(%union.t3_wr* %0, %struct.ib_send_wr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.t3_wr*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %union.t3_wr* %0, %union.t3_wr** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %11 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @T3_MAX_SGE, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %192

18:                                               ; preds = %3
  %19 = load i32, i32* @T3_RDMA_WRITE, align 4
  %20 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %21 = bitcast %union.t3_wr* %20 to %struct.TYPE_12__*
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 8
  %23 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %24 = bitcast %union.t3_wr* %23 to %struct.TYPE_12__*
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 5
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  %28 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %29 = bitcast %union.t3_wr* %28 to %struct.TYPE_12__*
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 5
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 0, i64* %32, align 8
  %33 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %34 = bitcast %union.t3_wr* %33 to %struct.TYPE_12__*
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 5
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %39 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %45 = bitcast %union.t3_wr* %44 to %struct.TYPE_12__*
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  store i8* %43, i8** %46, align 8
  %47 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_be64(i32 %51)
  %53 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %54 = bitcast %union.t3_wr* %53 to %struct.TYPE_12__*
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store i8* %52, i8** %55, align 8
  %56 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IB_WR_RDMA_WRITE_WITH_IMM, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %18
  store i32 4, i32* %9, align 4
  %62 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %63 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %67 = bitcast %union.t3_wr* %66 to %struct.TYPE_12__*
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i8* %65, i8** %71, align 8
  %72 = call i8* @cpu_to_be32(i32 0)
  %73 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %74 = bitcast %union.t3_wr* %73 to %struct.TYPE_12__*
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i8* %72, i8** %78, align 8
  %79 = call i8* @cpu_to_be32(i32 0)
  %80 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %81 = bitcast %union.t3_wr* %80 to %struct.TYPE_12__*
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load i32*, i32** %7, align 8
  store i32 6, i32* %83, align 4
  br label %186

84:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %169, %84
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %88 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %172

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %94 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %93, i32 0, i32 2
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %92, %100
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load i32, i32* @EMSGSIZE, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %192

107:                                              ; preds = %91
  %108 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %109 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %108, i32 0, i32 2
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %118, i32 0, i32 2
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @cpu_to_be32(i32 %125)
  %127 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %128 = bitcast %union.t3_wr* %127 to %struct.TYPE_12__*
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  store i8* %126, i8** %134, align 8
  %135 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %136 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %135, i32 0, i32 2
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @cpu_to_be32(i32 %142)
  %144 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %145 = bitcast %union.t3_wr* %144 to %struct.TYPE_12__*
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  store i8* %143, i8** %151, align 8
  %152 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %153 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %152, i32 0, i32 2
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @cpu_to_be64(i32 %159)
  %161 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %162 = bitcast %union.t3_wr* %161 to %struct.TYPE_12__*
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  store i8* %160, i8** %168, align 8
  br label %169

169:                                              ; preds = %107
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %8, align 4
  br label %85

172:                                              ; preds = %85
  %173 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %174 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @cpu_to_be32(i32 %175)
  %177 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %178 = bitcast %union.t3_wr* %177 to %struct.TYPE_12__*
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  store i8* %176, i8** %179, align 8
  %180 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %181 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = shl i32 %182, 1
  %184 = add nsw i32 5, %183
  %185 = load i32*, i32** %7, align 8
  store i32 %184, i32* %185, align 4
  br label %186

186:                                              ; preds = %172, %61
  %187 = load i32, i32* %9, align 4
  %188 = call i8* @cpu_to_be32(i32 %187)
  %189 = load %union.t3_wr*, %union.t3_wr** %5, align 8
  %190 = bitcast %union.t3_wr* %189 to %struct.TYPE_12__*
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  store i8* %188, i8** %191, align 8
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %186, %104, %15
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
