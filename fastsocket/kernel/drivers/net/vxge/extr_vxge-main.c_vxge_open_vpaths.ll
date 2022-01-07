; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_open_vpaths.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_open_vpaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_15__, i32, %struct.TYPE_13__, i64*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i32, %struct.TYPE_14__, %struct.TYPE_12__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i64, %struct.__vxge_hw_ring*, i32, %struct.TYPE_16__* }
%struct.__vxge_hw_ring = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_16__*, i32, %struct.__vxge_hw_fifo* }
%struct.__vxge_hw_fifo = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.vxge_hw_vpath_attr = type { %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32, i32 }
%struct.__vxge_hw_vpath_handle = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@vxge_xmit_compl = common dso_local global i32 0, align 4
@vxge_tx_term = common dso_local global i32 0, align 4
@vxge_rx_1b_compl = common dso_local global i32 0, align 4
@vxge_rx_initial_replenish = common dso_local global i32 0, align 4
@vxge_rx_term = common dso_local global i32 0, align 4
@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: vpath: %d failed to open with status: %d\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_open_vpaths(%struct.vxgedev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxge_hw_vpath_attr, align 8
  store %struct.vxgedev* %0, %struct.vxgedev** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %293, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %11 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %296

14:                                               ; preds = %8
  %15 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %16 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @vxge_assert(i32 %22)
  %24 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %25 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @vxge_xmit_compl, align 4
  %34 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @vxge_tx_term, align 4
  %37 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %42 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 4
  %48 = bitcast %struct.TYPE_12__* %47 to i8*
  %49 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @vxge_rx_1b_compl, align 4
  %52 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @vxge_rx_initial_replenish, align 4
  %55 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @vxge_rx_term, align 4
  %58 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 8
  %62 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %63 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %62, i32 0, i32 2
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = bitcast %struct.TYPE_14__* %68 to i8*
  %70 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %73 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %72, i32 0, i32 3
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %76 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %75, i32 0, i32 2
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 6
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %82, align 8
  %83 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %84 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %87 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %86, i32 0, i32 2
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 5
  store i32 %85, i32* %93, align 8
  %94 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %95 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %98 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %97, i32 0, i32 2
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = call i32 @vxge_hw_vpath_open(i32 %96, %struct.vxge_hw_vpath_attr* %7, i64* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @VXGE_HW_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %247

108:                                              ; preds = %14
  %109 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = bitcast i8* %111 to %struct.__vxge_hw_fifo*
  %113 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %114 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %113, i32 0, i32 2
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 4
  store %struct.__vxge_hw_fifo* %112, %struct.__vxge_hw_fifo** %120, align 8
  %121 = getelementptr inbounds %struct.vxge_hw_vpath_attr, %struct.vxge_hw_vpath_attr* %7, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = bitcast i8* %123 to %struct.__vxge_hw_ring*
  %125 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %126 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %125, i32 0, i32 2
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 4
  store %struct.__vxge_hw_ring* %124, %struct.__vxge_hw_ring** %132, align 8
  %133 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %134 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %138 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %137, i32 0, i32 2
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  store i32 %136, i32* %144, align 8
  %145 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %146 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %145, i32 0, i32 3
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  %148 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %149 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %148, i32 0, i32 2
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  store %struct.TYPE_16__* %147, %struct.TYPE_16__** %155, align 8
  %156 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %157 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %160 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %159, i32 0, i32 2
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  store i32 %158, i32* %166, align 4
  %167 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %168 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %172 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %171, i32 0, i32 2
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i32 %170, i32* %178, align 8
  %179 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %180 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %179, i32 0, i32 2
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 3
  store i64 0, i64* %186, align 8
  %187 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %188 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %191 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %190, i32 0, i32 2
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  store i32 %189, i32* %197, align 8
  %198 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %199 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %198, i32 0, i32 2
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  %205 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %206 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %205, i32 0, i32 2
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %214 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %213, i32 0, i32 7
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  store i64 %212, i64* %218, align 8
  %219 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %220 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %219, i32 0, i32 6
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %224 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %223, i32 0, i32 2
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  store i32 %222, i32* %230, align 4
  %231 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %232 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %235 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %234, i32 0, i32 2
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  store i32 %233, i32* %241, align 8
  %242 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %243 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  br label %273

247:                                              ; preds = %14
  %248 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %249 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 8
  %253 = load i32, i32* @VXGE_ERR, align 4
  %254 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %255 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %254, i32 0, i32 3
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %260 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %259, i32 0, i32 2
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = call i32 @vxge_debug_init(i32 %253, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %258, i32 %266, i32 %267)
  %269 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %270 = call i32 @vxge_close_vpaths(%struct.vxgedev* %269, i32 0)
  %271 = load i32, i32* @EPERM, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %2, align 4
  br label %298

273:                                              ; preds = %108
  %274 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %275 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %274, i32 0, i32 2
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = inttoptr i64 %281 to %struct.__vxge_hw_vpath_handle*
  %283 = getelementptr inbounds %struct.__vxge_hw_vpath_handle, %struct.__vxge_hw_vpath_handle* %282, i32 0, i32 0
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = call i32 @vxge_mBIT(i32 %287)
  %289 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %290 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %273
  %294 = load i32, i32* %5, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %5, align 4
  br label %8

296:                                              ; preds = %8
  %297 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %297, i32* %2, align 4
  br label %298

298:                                              ; preds = %296, %247
  %299 = load i32, i32* %2, align 4
  ret i32 %299
}

declare dso_local i32 @vxge_assert(i32) #1

declare dso_local i32 @vxge_hw_vpath_open(i32, %struct.vxge_hw_vpath_attr*, i64*) #1

declare dso_local i32 @vxge_debug_init(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @vxge_close_vpaths(%struct.vxgedev*, i32) #1

declare dso_local i32 @vxge_mBIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
