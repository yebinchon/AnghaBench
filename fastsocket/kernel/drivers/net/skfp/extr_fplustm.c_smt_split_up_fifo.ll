; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_smt_split_up_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_smt_split_up_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@SMT_R1_RXD_COUNT = common dso_local global i64 0, align 8
@SMT_E0117 = common dso_local global i32 0, align 4
@SMT_E0117_MSG = common dso_local global i32 0, align 4
@SMT_R2_RXD_COUNT = common dso_local global i32 0, align 4
@RX_FIFO_SPACE = common dso_local global i64 0, align 8
@RX_LARGE_FIFO = common dso_local global i32 0, align 4
@RX_SMALL_FIFO = common dso_local global i64 0, align 8
@PATH0 = common dso_local global i64 0, align 8
@SEND_ASYNC_AS_SYNC = common dso_local global i32 0, align 4
@SYNC_TRAFFIC_ON = common dso_local global i32 0, align 4
@TX_LARGE_FIFO = common dso_local global i32 0, align 4
@TX_SMALL_FIFO = common dso_local global i32 0, align 4
@TX_MEDIUM_FIFO = common dso_local global i8* null, align 8
@TX_FIFO_SPACE = common dso_local global i32 0, align 4
@RX_FIFO_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FIFO split: mode = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"rbc_ram_start =\09%x\09 rbc_ram_end = \09%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"rx1_fifo_start = %x\09 tx_s_start = \09%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"tx_a0_start =\09%x\09 rx2_fifo_start = \09%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @smt_split_up_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smt_split_up_fifo(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i64, i64* @SMT_R1_RXD_COUNT, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %7 = load i32, i32* @SMT_E0117, align 4
  %8 = load i32, i32* @SMT_E0117_MSG, align 4
  %9 = call i32 @SMT_PANIC(%struct.s_smc* %6, i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i32, i32* @SMT_R2_RXD_COUNT, align 4
  switch i32 %11, label %38 [
    i32 0, label %12
    i32 1, label %25
    i32 2, label %25
    i32 3, label %25
  ]

12:                                               ; preds = %10
  %13 = load i64, i64* @RX_FIFO_SPACE, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 8
  %20 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %21 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  br label %67

25:                                               ; preds = %10, %10, %10
  %26 = load i32, i32* @RX_LARGE_FIFO, align 4
  %27 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %28 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 8
  %32 = load i64, i64* @RX_SMALL_FIFO, align 8
  %33 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %34 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 10
  store i64 %32, i64* %37, align 8
  br label %67

38:                                               ; preds = %10
  %39 = load i64, i64* @RX_FIFO_SPACE, align 8
  %40 = load i64, i64* @SMT_R1_RXD_COUNT, align 8
  %41 = mul nsw i64 %39, %40
  %42 = load i64, i64* @SMT_R1_RXD_COUNT, align 8
  %43 = load i32, i32* @SMT_R2_RXD_COUNT, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = sdiv i64 %41, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %49 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = load i64, i64* @RX_FIFO_SPACE, align 8
  %54 = load i32, i32* @SMT_R2_RXD_COUNT, align 4
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %53, %55
  %57 = load i64, i64* @SMT_R1_RXD_COUNT, align 8
  %58 = load i32, i32* @SMT_R2_RXD_COUNT, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = sdiv i64 %56, %60
  %62 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %63 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 10
  store i64 %61, i64* %66, align 8
  br label %67

67:                                               ; preds = %38, %25, %12
  %68 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %69 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* @PATH0, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %90

78:                                               ; preds = %67
  %79 = load i32, i32* @SEND_ASYNC_AS_SYNC, align 4
  %80 = load i32, i32* @SYNC_TRAFFIC_ON, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %84 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %82
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %78, %77
  %91 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %92 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SYNC_TRAFFIC_ON, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %139

100:                                              ; preds = %90
  %101 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %102 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SEND_ASYNC_AS_SYNC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %100
  %111 = load i32, i32* @TX_LARGE_FIFO, align 4
  %112 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %113 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %111, i32* %116, align 8
  %117 = load i32, i32* @TX_SMALL_FIFO, align 4
  %118 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %119 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  store i32 %117, i32* %122, align 4
  br label %138

123:                                              ; preds = %100
  %124 = load i8*, i8** @TX_MEDIUM_FIFO, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %127 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i32 %125, i32* %130, align 8
  %131 = load i8*, i8** @TX_MEDIUM_FIFO, align 8
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %134 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  store i32 %132, i32* %137, align 4
  br label %138

138:                                              ; preds = %123, %110
  br label %151

139:                                              ; preds = %90
  %140 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %141 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load i32, i32* @TX_FIFO_SPACE, align 4
  %146 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %147 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  store i32 %145, i32* %150, align 4
  br label %151

151:                                              ; preds = %139, %138
  %152 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %153 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @RX_FIFO_OFF, align 4
  %159 = add nsw i32 %157, %158
  %160 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %161 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 4
  store i32 %159, i32* %164, align 8
  %165 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %166 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %172 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %170, %176
  %178 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %179 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 6
  store i32 %177, i32* %182, align 8
  %183 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %184 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %190 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %188, %194
  %196 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %197 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 7
  store i32 %195, i32* %200, align 4
  %201 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %202 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %208 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %206, %212
  %214 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %215 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 8
  store i32 %213, i32* %218, align 8
  %219 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %220 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @DB_SMT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %224, i32 0)
  %226 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %227 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %233 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @DB_SMT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %231, i32 %237)
  %239 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %240 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %246 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @DB_SMT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %244, i32 %250)
  %252 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %253 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %259 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @DB_SMT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %257, i32 %263)
  ret void
}

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @DB_SMT(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
