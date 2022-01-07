; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_post_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_post_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.lpfc_iocbq = type { %struct.TYPE_10__ }
%struct.lpfc_dmabuf = type { i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MEM_PRI = common dso_local global i32 0, align 4
@FCELSSIZE = common dso_local global i8* null, align 8
@CMD_QUE_RING_BUF64_CN = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_post_buffer(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %13 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %247, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %248

20:                                               ; preds = %17
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %21)
  store %struct.lpfc_iocbq* %22, %struct.lpfc_iocbq** %9, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %24 = icmp eq %struct.lpfc_iocbq* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %28 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %4, align 4
  br label %251

30:                                               ; preds = %20
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %32 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %31, i32 0, i32 0
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %8, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %33)
  store %struct.lpfc_dmabuf* %34, %struct.lpfc_dmabuf** %10, align 8
  %35 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %36 = icmp ne %struct.lpfc_dmabuf* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %39 = load i32, i32* @MEM_PRI, align 4
  %40 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %41 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %40, i32 0, i32 0
  %42 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %38, i32 %39, i32* %41)
  %43 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %44 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %37, %30
  %46 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %47 = icmp ne %struct.lpfc_dmabuf* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %50 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %55 = call i32 @kfree(%struct.lpfc_dmabuf* %54)
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %57 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %58 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %56, %struct.lpfc_iocbq* %57)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %4, align 4
  br label %251

63:                                               ; preds = %48
  %64 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %65 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %64, i32 0, i32 2
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %114

69:                                               ; preds = %63
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.lpfc_dmabuf* @kmalloc(i32 24, i32 %70)
  store %struct.lpfc_dmabuf* %71, %struct.lpfc_dmabuf** %11, align 8
  %72 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %73 = icmp ne %struct.lpfc_dmabuf* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %76 = load i32, i32* @MEM_PRI, align 4
  %77 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %78 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %77, i32 0, i32 0
  %79 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %75, i32 %76, i32* %78)
  %80 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %81 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %74, %69
  %83 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %84 = icmp ne %struct.lpfc_dmabuf* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %87 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %110, label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %92 = call i32 @kfree(%struct.lpfc_dmabuf* %91)
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %94 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %95 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %98 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %93, i8* %96, i32 %99)
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %102 = call i32 @kfree(%struct.lpfc_dmabuf* %101)
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %104 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %105 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %103, %struct.lpfc_iocbq* %104)
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %108 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %4, align 4
  br label %251

110:                                              ; preds = %85
  %111 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %112 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %111, i32 0, i32 2
  %113 = call i32 @INIT_LIST_HEAD(i32* %112)
  br label %115

114:                                              ; preds = %63
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %11, align 8
  br label %115

115:                                              ; preds = %114, %110
  %116 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %117 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @putPaddrHigh(i32 %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store i8* %119, i8** %125, align 8
  %126 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %127 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @putPaddrLow(i32 %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i8* %129, i8** %135, align 8
  %136 = load i8*, i8** @FCELSSIZE, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i8* %136, i8** %144, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %7, align 4
  %149 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %150 = icmp ne %struct.lpfc_dmabuf* %149, null
  br i1 %150, label %151, label %185

151:                                              ; preds = %115
  %152 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %153 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @putPaddrHigh(i32 %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  store i8* %155, i8** %161, align 8
  %162 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %163 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @putPaddrLow(i32 %164)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  store i8* %165, i8** %171, align 8
  %172 = load i8*, i8** @FCELSSIZE, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i64 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i8* %172, i8** %180, align 8
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %7, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i32 2, i32* %184, align 8
  br label %185

185:                                              ; preds = %151, %115
  %186 = load i32, i32* @CMD_QUE_RING_BUF64_CN, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  store i32 1, i32* %190, align 4
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %192 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %193 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %196 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %191, i32 %194, %struct.lpfc_iocbq* %195, i32 0)
  %197 = load i64, i64* @IOCB_ERROR, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %235

199:                                              ; preds = %185
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %201 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %202 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %205 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %200, i8* %203, i32 %206)
  %208 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %209 = call i32 @kfree(%struct.lpfc_dmabuf* %208)
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  %212 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %213 = icmp ne %struct.lpfc_dmabuf* %212, null
  br i1 %213, label %214, label %227

214:                                              ; preds = %199
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %216 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %217 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %220 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %215, i8* %218, i32 %221)
  %223 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %224 = call i32 @kfree(%struct.lpfc_dmabuf* %223)
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %214, %199
  %228 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %229 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %230 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %228, %struct.lpfc_iocbq* %229)
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %233 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %4, align 4
  br label %251

235:                                              ; preds = %185
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %237 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %238 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %239 = call i32 @lpfc_sli_ringpostbuf_put(%struct.lpfc_hba* %236, %struct.lpfc_sli_ring* %237, %struct.lpfc_dmabuf* %238)
  %240 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %241 = icmp ne %struct.lpfc_dmabuf* %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %235
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %244 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %245 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %246 = call i32 @lpfc_sli_ringpostbuf_put(%struct.lpfc_hba* %243, %struct.lpfc_sli_ring* %244, %struct.lpfc_dmabuf* %245)
  br label %247

247:                                              ; preds = %242, %235
  br label %17

248:                                              ; preds = %17
  %249 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %250 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %249, i32 0, i32 0
  store i32 0, i32* %250, align 4
  store i32 0, i32* %4, align 4
  br label %251

251:                                              ; preds = %248, %227, %90, %53, %25
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i8* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i8*, i32) #1

declare dso_local i8* @putPaddrHigh(i32) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_sli_ringpostbuf_put(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
