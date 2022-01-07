; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_scn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_scn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dport_s = type { i32, %struct.TYPE_14__, i8*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.bfi_diag_dport_scn_s = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i64*, i32, i32, i32, i32 }

@DPORT_TEST_ELOOP = common dso_local global i32 0, align 4
@DPORT_TEST_MAX = common dso_local global i32 0, align 4
@BFA_DPORT_OPMODE_AUTO = common dso_local global i32 0, align 4
@DPORT_TEST_ST_INPRG = common dso_local global i64 0, align 8
@DPORT_TEST_ST_IDLE = common dso_local global i64 0, align 8
@BFA_DPORT_SM_SCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dport_s*, %struct.bfi_diag_dport_scn_s*)* @bfa_dport_scn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dport_scn(%struct.bfa_dport_s* %0, %struct.bfi_diag_dport_scn_s* %1) #0 {
  %3 = alloca %struct.bfa_dport_s*, align 8
  %4 = alloca %struct.bfi_diag_dport_scn_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bfa_dport_s* %0, %struct.bfa_dport_s** %3, align 8
  store %struct.bfi_diag_dport_scn_s* %1, %struct.bfi_diag_dport_scn_s** %4, align 8
  %7 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @bfa_trc(i32 %9, i64 %12)
  %14 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i64 %16, i64* %20, align 8
  %21 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  switch i64 %25, label %262 [
    i64 130, label %26
    i64 129, label %184
    i64 134, label %184
    i64 128, label %188
    i64 131, label %217
    i64 132, label %257
    i64 135, label %257
    i64 136, label %257
    i64 133, label %257
  ]

26:                                               ; preds = %2
  %27 = call i8* (...) @bfa_get_log_time()
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @bfa_trc(i32 %34, i64 %38)
  %40 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @bfa_trc(i32 %50, i64 %54)
  %56 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %57 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  store i64 %62, i64* %65, align 8
  %66 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %67 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @cpu_to_be32(i32 %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  store i64 %72, i64* %75, align 8
  %76 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %77 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @be16_to_cpu(i32 %80)
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %84 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  store i64 %82, i64* %85, align 8
  %86 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %87 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @be16_to_cpu(i32 %90)
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %94 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 5
  store i64 %92, i64* %95, align 8
  %96 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %97 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %102 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 6
  store i64 %100, i64* %103, align 8
  %104 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %105 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %108 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @bfa_trc(i32 %106, i64 %110)
  %112 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %113 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %116 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @bfa_trc(i32 %114, i64 %118)
  %120 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %121 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %124 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @bfa_trc(i32 %122, i64 %126)
  %128 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %129 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %132 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @bfa_trc(i32 %130, i64 %134)
  %136 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %137 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %140 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @bfa_trc(i32 %138, i64 %142)
  %144 = load i32, i32* @DPORT_TEST_ELOOP, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %180, %26
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @DPORT_TEST_MAX, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %183

149:                                              ; preds = %145
  %150 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %151 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %160 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  store i64 %158, i64* %166, align 8
  %167 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %168 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %171 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @bfa_trc(i32 %169, i64 %178)
  br label %180

180:                                              ; preds = %149
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %145

183:                                              ; preds = %145
  br label %270

184:                                              ; preds = %2, %2
  %185 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %186 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %185, i32 0, i32 1
  %187 = call i32 @memset(%struct.TYPE_14__* %186, i32 0, i32 4)
  br label %270

188:                                              ; preds = %2
  %189 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %190 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %189, i32 0, i32 1
  %191 = call i32 @memset(%struct.TYPE_14__* %190, i32 0, i32 4)
  %192 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %193 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %198 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 4
  %199 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %200 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %205 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 8
  %206 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %207 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i8* @cpu_to_be32(i32 %210)
  %212 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %213 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  %214 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %215 = load i32, i32* @BFA_DPORT_OPMODE_AUTO, align 4
  %216 = call i32 @bfa_dport_result_start(%struct.bfa_dport_s* %214, i32 %215)
  br label %270

217:                                              ; preds = %2
  %218 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %219 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %6, align 8
  %223 = call i8* (...) @bfa_get_log_time()
  %224 = ptrtoint i8* %223 to i64
  %225 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %226 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 7
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = load i64, i64* %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  store i64 %224, i64* %231, align 8
  %232 = load i64, i64* @DPORT_TEST_ST_INPRG, align 8
  %233 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %234 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 7
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = load i64, i64* %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  store i64 %232, i64* %239, align 8
  %240 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %241 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i64, i64* %6, align 8
  %244 = call i32 @bfa_trc(i32 %242, i64 %243)
  %245 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %246 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %249 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 7
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = load i64, i64* %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @bfa_trc(i32 %247, i64 %255)
  br label %270

257:                                              ; preds = %2, %2, %2, %2
  %258 = load i64, i64* @DPORT_TEST_ST_IDLE, align 8
  %259 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %260 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  store i64 %258, i64* %261, align 8
  br label %270

262:                                              ; preds = %2
  %263 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %264 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.bfi_diag_dport_scn_s*, %struct.bfi_diag_dport_scn_s** %4, align 8
  %267 = getelementptr inbounds %struct.bfi_diag_dport_scn_s, %struct.bfi_diag_dport_scn_s* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @bfa_sm_fault(i32 %265, i64 %268)
  br label %270

270:                                              ; preds = %262, %257, %217, %188, %184, %183
  %271 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %272 = load i32, i32* @BFA_DPORT_SM_SCN, align 4
  %273 = call i32 @bfa_sm_send_event(%struct.bfa_dport_s* %271, i32 %272)
  ret void
}

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local i8* @bfa_get_log_time(...) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @bfa_dport_result_start(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i64) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_dport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
