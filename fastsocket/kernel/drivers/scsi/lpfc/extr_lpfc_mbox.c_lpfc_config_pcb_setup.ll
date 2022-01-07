; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_pcb_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_pcb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_6__, i32*, %struct.TYPE_10__*, %struct.lpfc_sli }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i8*, i8*, i8*, i8* }
%struct.lpfc_sli = type { i32, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32*, i32*, i32, i32 }

@SLI3_IOCB_CMD_SIZE = common dso_local global i32 0, align 4
@SLI2_IOCB_CMD_SIZE = common dso_local global i32 0, align 4
@SLI3_IOCB_RSP_SIZE = common dso_local global i32 0, align 4
@SLI2_IOCB_RSP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_config_pcb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_config_pcb_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 4
  store %struct.lpfc_sli* %11, %struct.lpfc_sli** %3, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %263, %1
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %266

27:                                               ; preds = %21
  %28 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %28, i32 0, i32 1
  %30 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %30, i64 %32
  store %struct.lpfc_sli_ring* %33, %struct.lpfc_sli_ring** %4, align 8
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @SLI3_IOCB_CMD_SIZE, align 4
  br label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @SLI2_IOCB_CMD_SIZE, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 5
  store i32 %43, i32* %47, align 4
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @SLI3_IOCB_RSP_SIZE, align 4
  br label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @SLI2_IOCB_RSP_SIZE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  store i32 %57, i32* %61, align 8
  %62 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %56
  %69 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %70 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %126

75:                                               ; preds = %68, %56
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  store i8* null, i8** %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  store i8* null, i8** %103, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  store i8* null, i8** %110, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store i8* null, i8** %117, align 8
  %118 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %119 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  store i32* null, i32** %121, align 8
  %122 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %123 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store i32* null, i32** %125, align 8
  br label %263

126:                                              ; preds = %68
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = bitcast i32* %131 to i8*
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %135 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  store i32* %133, i32** %137, align 8
  %138 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %139 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store i64 %142, i64* %149, align 8
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %151 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %156 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i32*
  %160 = ptrtoint i32* %154 to i64
  %161 = ptrtoint i32* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 4
  store i64 %163, i64* %7, align 8
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %7, align 8
  %169 = add i64 %167, %168
  store i64 %169, i64* %6, align 8
  %170 = load i64, i64* %6, align 8
  %171 = call i8* @putPaddrHigh(i64 %170)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 5
  store i8* %171, i8** %178, align 8
  %179 = load i64, i64* %6, align 8
  %180 = call i8* @putPaddrLow(i64 %179)
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 4
  store i8* %180, i8** %187, align 8
  %188 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %189 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %8, align 8
  %194 = add i64 %193, %192
  store i64 %194, i64* %8, align 8
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %196 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %8, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = bitcast i32* %199 to i8*
  %201 = bitcast i8* %200 to i32*
  %202 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %203 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  store i32* %201, i32** %205, align 8
  %206 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %207 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  store i64 %210, i64* %217, align 8
  %218 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %219 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* %8, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %224 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to i32*
  %228 = ptrtoint i32* %222 to i64
  %229 = ptrtoint i32* %227 to i64
  %230 = sub i64 %228, %229
  %231 = sdiv exact i64 %230, 4
  store i64 %231, i64* %7, align 8
  %232 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %233 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %7, align 8
  %237 = add i64 %235, %236
  store i64 %237, i64* %6, align 8
  %238 = load i64, i64* %6, align 8
  %239 = call i8* @putPaddrHigh(i64 %238)
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 3
  store i8* %239, i8** %246, align 8
  %247 = load i64, i64* %6, align 8
  %248 = call i8* @putPaddrLow(i64 %247)
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 2
  store i8* %248, i8** %255, align 8
  %256 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %257 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %8, align 8
  %262 = add i64 %261, %260
  store i64 %262, i64* %8, align 8
  br label %263

263:                                              ; preds = %126, %75
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %9, align 4
  br label %21

266:                                              ; preds = %21
  ret void
}

declare dso_local i8* @putPaddrHigh(i64) #1

declare dso_local i8* @putPaddrLow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
