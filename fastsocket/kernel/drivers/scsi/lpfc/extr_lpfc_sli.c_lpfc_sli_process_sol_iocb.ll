; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_process_sol_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_process_sol_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32 }
%struct.lpfc_sli_ring = type { i64 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_4__, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i8*, i32 }
%struct.TYPE_3__ = type { i8** }
%struct.lpfc_hba.0 = type opaque

@LPFC_ELS_RING = common dso_local global i64 0, align 8
@CMD_ELS_REQUEST64_CR = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@IOSTAT_LOCAL_REJECT = common dso_local global i8* null, align 8
@IOERR_SLI_ABORTED = common dso_local global i8* null, align 8
@LPFC_DELAY_MEM_FREE = common dso_local global i32 0, align 4
@LPFC_EXCHANGE_BUSY = common dso_local global i32 0, align 4
@IOERR_ABORT_REQUESTED = common dso_local global i8* null, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"0322 Ring %d handler: unexpected completion IoTag x%x Data: x%x x%x x%x x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* @lpfc_sli_process_sol_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_process_sol_iocb(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  store i32 1, i32* %8, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 1
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %15 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %17 = call %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup(%struct.lpfc_hba* %14, %struct.lpfc_sli_ring* %15, %struct.lpfc_iocbq* %16)
  store %struct.lpfc_iocbq* %17, %struct.lpfc_iocbq** %7, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %23 = icmp ne %struct.lpfc_iocbq* %22, null
  br i1 %23, label %24, label %211

24:                                               ; preds = %3
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 2
  %27 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %26, align 8
  %28 = icmp ne i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %27, null
  br i1 %28, label %29, label %206

29:                                               ; preds = %24
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LPFC_ELS_RING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %43 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CMD_ELS_REQUEST64_CR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %51 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %52 = call i32 @lpfc_send_els_failure_event(%struct.lpfc_hba* %49, %struct.lpfc_iocbq* %50, %struct.lpfc_iocbq* %51)
  br label %53

53:                                               ; preds = %48, %41, %35, %29
  %54 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %55 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LPFC_ELS_RING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %197

59:                                               ; preds = %53
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LPFC_SLI_REV4, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %111

65:                                               ; preds = %59
  %66 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %67 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %111

72:                                               ; preds = %65
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 1
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %80 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 1
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i8*, i8** @IOSTAT_LOCAL_REJECT, align 8
  %88 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %89 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** @IOERR_SLI_ABORTED, align 8
  %92 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %93 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 4
  store i8* %91, i8** %97, align 8
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 1
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @spin_lock_irqsave(i32* %99, i64 %100)
  %102 = load i32, i32* @LPFC_DELAY_MEM_FREE, align 4
  %103 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %104 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 1
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  br label %111

111:                                              ; preds = %72, %65, %59
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LPFC_SLI_REV4, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %196

117:                                              ; preds = %111
  %118 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %119 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @LPFC_EXCHANGE_BUSY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %117
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 1
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @spin_lock_irqsave(i32* %126, i64 %127)
  %129 = load i32, i32* @LPFC_EXCHANGE_BUSY, align 4
  %130 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %131 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 1
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  br label %138

138:                                              ; preds = %124, %117
  %139 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %140 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %195

145:                                              ; preds = %138
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 1
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %153 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 1
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = load i8*, i8** @IOSTAT_LOCAL_REJECT, align 8
  %161 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %162 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  store i8* %160, i8** %163, align 8
  %164 = load i8*, i8** @IOERR_ABORT_REQUESTED, align 8
  %165 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %166 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 4
  store i8* %164, i8** %170, align 8
  %171 = load i8*, i8** @IOSTAT_LOCAL_REJECT, align 8
  %172 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %173 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  store i8* %171, i8** %174, align 8
  %175 = load i8*, i8** @IOERR_SLI_ABORTED, align 8
  %176 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %177 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i8**, i8*** %179, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 4
  store i8* %175, i8** %181, align 8
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %183 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %182, i32 0, i32 1
  %184 = load i64, i64* %9, align 8
  %185 = call i32 @spin_lock_irqsave(i32* %183, i64 %184)
  %186 = load i32, i32* @LPFC_DELAY_MEM_FREE, align 4
  %187 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %188 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %192 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %191, i32 0, i32 1
  %193 = load i64, i64* %9, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* %192, i64 %193)
  br label %195

195:                                              ; preds = %145, %138
  br label %196

196:                                              ; preds = %195, %111
  br label %197

197:                                              ; preds = %196, %53
  %198 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %199 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %198, i32 0, i32 2
  %200 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %199, align 8
  %201 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %202 = bitcast %struct.lpfc_hba* %201 to %struct.lpfc_hba.0*
  %203 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %204 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %205 = call i32 %200(%struct.lpfc_hba.0* %202, %struct.lpfc_iocbq* %203, %struct.lpfc_iocbq* %204)
  br label %210

206:                                              ; preds = %24
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %208 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %209 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %207, %struct.lpfc_iocbq* %208)
  br label %210

210:                                              ; preds = %206, %197
  br label %249

211:                                              ; preds = %3
  %212 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %213 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @LPFC_ELS_RING, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %248

217:                                              ; preds = %211
  %218 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %219 = load i32, i32* @KERN_WARNING, align 4
  %220 = load i32, i32* @LOG_SLI, align 4
  %221 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %222 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %225 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %229 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %233 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i8**, i8*** %235, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 4
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %240 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %244 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %218, i32 %219, i32 %220, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %223, i32 %227, i8* %231, i8* %238, i64 %242, i32 %246)
  br label %248

248:                                              ; preds = %217, %211
  br label %249

249:                                              ; preds = %248, %210
  %250 = load i32, i32* %8, align 4
  ret i32 %250
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_send_els_failure_event(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i32, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
