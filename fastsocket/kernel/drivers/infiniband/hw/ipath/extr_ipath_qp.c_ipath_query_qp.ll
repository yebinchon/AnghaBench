; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_query_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_qp.c_ipath_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, %struct.TYPE_5__, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i64 }
%struct.ib_qp_init_attr = type { i32, i32, i32, %struct.TYPE_5__, i64, i32, i32, i32, i32 }
%struct.ipath_qp = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IPATH_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca %struct.ipath_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %11 = call %struct.ipath_qp* @to_iqp(%struct.ib_qp* %10)
  store %struct.ipath_qp* %11, %struct.ipath_qp** %9, align 8
  %12 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %13 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %12, i32 0, i32 20
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %16 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %15, i32 0, i32 23
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %18 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %17, i32 0, i32 23
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %20, i32 0, i32 24
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %23 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %26 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %25, i32 0, i32 22
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %28 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %27, i32 0, i32 21
  store i64 0, i64* %28, align 8
  %29 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %30 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %29, i32 0, i32 18
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %33 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %32, i32 0, i32 20
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %35 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %34, i32 0, i32 17
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %38 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %37, i32 0, i32 19
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %40 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %39, i32 0, i32 16
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %42, i32 0, i32 18
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %45 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %47, i32 0, i32 17
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %50 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %49, i32 0, i32 14
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %52, i32 0, i32 16
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %55 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %54, i32 0, i32 13
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %59 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  store i64 %57, i64* %60, align 8
  %61 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %62 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %4
  br label %73

67:                                               ; preds = %4
  %68 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %69 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %68, i32 0, i32 11
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  br label %73

73:                                               ; preds = %67, %66
  %74 = phi i32 [ 0, %66 ], [ %72, %67 ]
  %75 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %76 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %79 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %82 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %85 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %84, i32 0, i32 11
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %92 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %95 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %98 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %97, i32 0, i32 15
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %100 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %99, i32 0, i32 14
  %101 = call i32 @memset(i32* %100, i32 0, i32 4)
  %102 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %103 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %106 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %105, i32 0, i32 13
  store i32 %104, i32* %106, align 8
  %107 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %108 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %107, i32 0, i32 12
  store i64 0, i64* %108, align 8
  %109 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %109, i32 0, i32 11
  store i64 0, i64* %110, align 8
  %111 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %112 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %115 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %114, i32 0, i32 10
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %117 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %120 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %122 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %125 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 8
  %126 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %127 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %130 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %132 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %134 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %137 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %139 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %142 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %141, i32 0, i32 5
  store i32 %140, i32* %142, align 4
  %143 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %144 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %147 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %149 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %148, i32 0, i32 3
  store i64 0, i64* %149, align 8
  %150 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %151 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %150, i32 0, i32 2
  store i64 0, i64* %151, align 8
  %152 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %153 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %157 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %156, i32 0, i32 8
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %159 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %163 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 8
  %164 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %165 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %169 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 4
  %170 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %171 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %175 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 8
  %176 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %177 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %181 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %180, i32 0, i32 4
  store i64 %179, i64* %181, align 8
  %182 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %183 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %182, i32 0, i32 3
  %184 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %185 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %184, i32 0, i32 1
  %186 = bitcast %struct.TYPE_5__* %183 to i8*
  %187 = bitcast %struct.TYPE_5__* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %186, i8* align 8 %187, i64 32, i1 false)
  %188 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %189 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @IPATH_S_SIGNAL_REQ_WR, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %73
  %195 = load i32, i32* @IB_SIGNAL_REQ_WR, align 4
  %196 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %197 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  br label %202

198:                                              ; preds = %73
  %199 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %200 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %201 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %198, %194
  %203 = load %struct.ipath_qp*, %struct.ipath_qp** %9, align 8
  %204 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %208 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %210 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %209, i32 0, i32 0
  store i32 1, i32* %210, align 8
  ret i32 0
}

declare dso_local %struct.ipath_qp* @to_iqp(%struct.ib_qp*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
