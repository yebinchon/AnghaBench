; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.scsi_cmnd = type { i8*, void (%struct.scsi_cmnd*)*, i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.mscp = type { i32, i32, i32, i32, %struct.scsi_cmnd*, i32, i32, i32, i32 }
%struct.hostdata = type { i32 }
%struct.TYPE_8__ = type { i32, i64*, %struct.mscp* }

@.str = private unnamed_addr constant [46 x i8] c"%s: qcomm, pid %ld, SCpnt %p already active.\0A\00", align 1
@sh = common dso_local global %struct.TYPE_6__** null, align 8
@FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: qcomm, no free mailbox.\0A\00", align 1
@CP_TAIL_SIZE = common dso_local global i64 0, align 8
@do_trace = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: qcomm, mbox %d, target %d.%d:%d, pid %ld.\0A\00", align 1
@OP_SCSI = common dso_local global i32 0, align 4
@linked_comm = common dso_local global i64 0, align 8
@READY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MAXLOOP = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"qcomm, pid %ld, adapter busy.\0A\00", align 1
@REG_OGM = common dso_local global i64 0, align 8
@CMD_OGM_INTR = common dso_local global i32 0, align 4
@REG_LCL_INTR = common dso_local global i64 0, align 8
@IN_USE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @u14_34f_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u14_34f_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mscp*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.hostdata*
  %18 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @BN(i32 %25)
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, %struct.scsi_cmnd* %30)
  br label %32

32:                                               ; preds = %24, %2
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.TYPE_8__* @HD(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %76, %32
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sh, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %39, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sh, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp uge i32 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.TYPE_8__* @HD(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FREE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call %struct.TYPE_8__* @HD(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  br label %81

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %38

81:                                               ; preds = %70, %38
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sh, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %82, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @BN(i32 %92)
  %94 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  store i32 1, i32* %3, align 4
  br label %285

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  %97 = call %struct.TYPE_8__* @HD(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load %struct.mscp*, %struct.mscp** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mscp, %struct.mscp* %99, i64 %101
  store %struct.mscp* %102, %struct.mscp** %9, align 8
  %103 = load %struct.mscp*, %struct.mscp** %9, align 8
  %104 = load i64, i64* @CP_TAIL_SIZE, align 8
  %105 = sub i64 40, %104
  %106 = call i32 @memset(%struct.mscp* %103, i32 0, i64 %105)
  %107 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %107, void (%struct.scsi_cmnd*)** %109, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.mscp*, %struct.mscp** %9, align 8
  %112 = getelementptr inbounds %struct.mscp, %struct.mscp* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.mscp*, %struct.mscp** %9, align 8
  %114 = getelementptr inbounds %struct.mscp, %struct.mscp* %113, i32 0, i32 0
  %115 = bitcast i32* %114 to i8*
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load i64, i64* @do_trace, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %95
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @BN(i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %125 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %124, i32 0, i32 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %135 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %134, i32 0, i32 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %140 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123, i32 %128, i32 %133, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %120, %95
  %144 = load i32, i32* @OP_SCSI, align 4
  %145 = load %struct.mscp*, %struct.mscp** %9, align 8
  %146 = getelementptr inbounds %struct.mscp, %struct.mscp* %145, i32 0, i32 8
  store i32 %144, i32* %146, align 4
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %148 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %147, i32 0, i32 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.mscp*, %struct.mscp** %9, align 8
  %153 = getelementptr inbounds %struct.mscp, %struct.mscp* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 8
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %155 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %154, i32 0, i32 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.mscp*, %struct.mscp** %9, align 8
  %160 = getelementptr inbounds %struct.mscp, %struct.mscp* %159, i32 0, i32 6
  store i32 %158, i32* %160, align 4
  %161 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %162 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %161, i32 0, i32 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.mscp*, %struct.mscp** %9, align 8
  %167 = getelementptr inbounds %struct.mscp, %struct.mscp* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 8
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %169 = load %struct.mscp*, %struct.mscp** %9, align 8
  %170 = getelementptr inbounds %struct.mscp, %struct.mscp* %169, i32 0, i32 4
  store %struct.scsi_cmnd* %168, %struct.scsi_cmnd** %170, align 8
  %171 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %172 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.mscp*, %struct.mscp** %9, align 8
  %175 = getelementptr inbounds %struct.mscp, %struct.mscp* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.mscp*, %struct.mscp** %9, align 8
  %177 = getelementptr inbounds %struct.mscp, %struct.mscp* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %180 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %183 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @memcpy(i32 %178, i32 %181, i32 %184)
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @scsi_to_dev_dir(i32 %186, i32 %187)
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @map_dma(i32 %189, i32 %190)
  %192 = load i64, i64* @linked_comm, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %228

194:                                              ; preds = %143
  %195 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %196 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %195, i32 0, i32 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %199, 2
  br i1 %200, label %201, label %228

201:                                              ; preds = %194
  %202 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %203 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %202, i32 0, i32 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @TLDEV(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %228

209:                                              ; preds = %201
  %210 = load i64, i64* @READY, align 8
  %211 = load i32, i32* %7, align 4
  %212 = call %struct.TYPE_8__* @HD(i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  store i64 %210, i64* %217, align 8
  %218 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %219 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %218, i32 0, i32 4
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %222 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @blk_rq_pos(i32 %223)
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @FALSE, align 4
  %227 = call i32 @flush_dev(%struct.TYPE_7__* %220, i32 %224, i32 %225, i32 %226)
  store i32 0, i32* %3, align 4
  br label %285

228:                                              ; preds = %201, %194, %143
  %229 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sh, align 8
  %230 = load i32, i32* %7, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %229, i64 %231
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* @MAXLOOP, align 4
  %237 = call i64 @wait_on_busy(i64 %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %228
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @unmap_dma(i32 %240, i32 %241)
  %243 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %244 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %243, i32 0, i32 0
  store i8* null, i8** %244, align 8
  %245 = load i32, i32* @KERN_INFO, align 4
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %247 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %248 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @scmd_printk(i32 %245, %struct.scsi_cmnd* %246, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %249)
  store i32 1, i32* %3, align 4
  br label %285

251:                                              ; preds = %228
  %252 = load %struct.mscp*, %struct.mscp** %9, align 8
  %253 = getelementptr inbounds %struct.mscp, %struct.mscp* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @H2DEV(i32 %254)
  %256 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sh, align 8
  %257 = load i32, i32* %7, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %256, i64 %258
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @REG_OGM, align 8
  %264 = add nsw i64 %262, %263
  %265 = call i32 @outl(i32 %255, i64 %264)
  %266 = load i32, i32* @CMD_OGM_INTR, align 4
  %267 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sh, align 8
  %268 = load i32, i32* %7, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %267, i64 %269
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @REG_LCL_INTR, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @outb(i32 %266, i64 %275)
  %277 = load i64, i64* @IN_USE, align 8
  %278 = load i32, i32* %7, align 4
  %279 = call %struct.TYPE_8__* @HD(i32 %278)
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = load i64*, i64** %280, align 8
  %282 = load i32, i32* %6, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  store i64 %277, i64* %284, align 8
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %251, %239, %209, %91
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @panic(i8*, i32, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @BN(i32) #1

declare dso_local %struct.TYPE_8__* @HD(i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.mscp*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @scsi_to_dev_dir(i32, i32) #1

declare dso_local i32 @map_dma(i32, i32) #1

declare dso_local i64 @TLDEV(i32) #1

declare dso_local i32 @flush_dev(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @blk_rq_pos(i32) #1

declare dso_local i64 @wait_on_busy(i64, i32) #1

declare dso_local i32 @unmap_dma(i32, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @H2DEV(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
