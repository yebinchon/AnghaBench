; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, {}*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i64 }
%struct.hostdata = type { i32, i32**, i64*, i32, %struct.TYPE_4__*, i64**, i64 }
%struct.TYPE_4__ = type { %struct.scsi_cmnd* }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reset, enter, pid %ld.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: reset, pid %ld inactive.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: reset, exit, already in reset.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@MAXLOOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: reset, exit, timeout error.\0A\00", align 1
@FREE = common dso_local global i64 0, align 8
@LOCKED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: reset, locked mbox %d forced free.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%s: reset, mbox %d, SCpnt == NULL.\0A\00", align 1
@READY = common dso_local global i64 0, align 8
@ABORTING = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: reset, mbox %d aborting, pid %ld.\0A\00", align 1
@IN_RESET = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"%s: reset, mbox %d in reset, pid %ld.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"%s: reset, mbox %d, garbled SCpnt.\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"%s: reset, mbox %d, index mismatch.\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"%s: reset, mbox %d, SCpnt->scsi_done == NULL.\0A\00", align 1
@RESET_PIO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"%s: reset, cannot reset, timeout error.\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"%s: reset, board reset done, enabling interrupts.\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"%s: reset, interrupts disabled, loops %d.\0A\00", align 1
@DID_RESET = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [53 x i8] c"%s, reset, mbox %d locked, DID_RESET, pid %ld done.\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"%s, reset, mbox %d aborting, DID_RESET, pid %ld done.\0A\00", align 1
@do_trace = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"%s: reset, exit, pid %ld done.\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"%s: reset, exit.\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @eata2x_eh_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eata2x_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca %struct.Scsi_Host*, align 8
  %12 = alloca %struct.hostdata*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %11, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.hostdata*
  store %struct.hostdata* %21, %struct.hostdata** %12, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @scmd_printk(i32 %22, %struct.scsi_cmnd* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @spin_lock_irq(i32 %30)
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %38 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %36, %1
  %45 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %46 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %51 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @spin_unlock_irq(i32 %56)
  %58 = load i32, i32* @FAILED, align 4
  store i32 %58, i32* %2, align 4
  br label %456

59:                                               ; preds = %44
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %61 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MAXLOOP, align 4
  %64 = call i64 @wait_on_busy(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %68 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %72 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @spin_unlock_irq(i32 %73)
  %75 = load i32, i32* @FAILED, align 4
  store i32 %75, i32* %2, align 4
  br label %456

76:                                               ; preds = %59
  %77 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %78 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %77, i32 0, i32 6
  store i64 0, i64* %78, align 8
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %117, %76
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %82 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ule i32 %80, %83
  br i1 %84, label %85, label %120

85:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %113, %85
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ult i32 %87, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %94 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 1, i32* %102, align 4
  %103 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %104 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %103, i32 0, i32 5
  %105 = load i64**, i64*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i64*, i64** %105, i64 %107
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %92
  %114 = load i32, i32* %6, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %86

116:                                              ; preds = %86
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %79

120:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %271, %120
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %124 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %127, label %274

127:                                              ; preds = %121
  %128 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %129 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %128, i32 0, i32 2
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @FREE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %271

138:                                              ; preds = %127
  %139 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %140 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @LOCKED, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %138
  %149 = load i64, i64* @FREE, align 8
  %150 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %151 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %150, i32 0, i32 2
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  store i64 %149, i64* %155, align 8
  %156 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %157 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %159)
  br label %271

161:                                              ; preds = %138
  %162 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %163 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %162, i32 0, i32 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %168, align 8
  store %struct.scsi_cmnd* %169, %struct.scsi_cmnd** %10, align 8
  %170 = icmp ne %struct.scsi_cmnd* %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %161
  %172 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %173 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %171, %161
  %178 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %179 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %178, i32 0, i32 2
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @READY, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %197, label %187

187:                                              ; preds = %177
  %188 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %189 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %188, i32 0, i32 2
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @ABORTING, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %187, %177
  %198 = load i64, i64* @ABORTING, align 8
  %199 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %200 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %199, i32 0, i32 2
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %4, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  store i64 %198, i64* %204, align 8
  %205 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %206 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %210 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %207, i32 %208, i32 %211)
  br label %229

213:                                              ; preds = %187
  %214 = load i64, i64* @IN_RESET, align 8
  %215 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %216 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %215, i32 0, i32 2
  %217 = load i64*, i64** %216, align 8
  %218 = load i32, i32* %4, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  store i64 %214, i64* %220, align 8
  %221 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %222 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %226 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %223, i32 %224, i32 %227)
  br label %229

229:                                              ; preds = %213, %197
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %236 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %234, %229
  %241 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %242 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %4, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %249 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %247, %240
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %255 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %254, i32 0, i32 2
  %256 = bitcast {}** %255 to i32 (%struct.scsi_cmnd*)**
  %257 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %256, align 8
  %258 = icmp eq i32 (%struct.scsi_cmnd*)* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %253
  %260 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %261 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %4, align 4
  %264 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %259, %253
  %266 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %267 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %268 = icmp eq %struct.scsi_cmnd* %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i32 1, i32* %9, align 4
  br label %270

270:                                              ; preds = %269, %265
  br label %271

271:                                              ; preds = %270, %148, %137
  %272 = load i32, i32* %4, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %4, align 4
  br label %121

274:                                              ; preds = %121
  %275 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %276 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @RESET_PIO, align 4
  %279 = call i64 @do_dma(i32 %277, i32 0, i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %274
  %282 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %283 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %284)
  %286 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %287 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @spin_unlock_irq(i32 %288)
  %290 = load i32, i32* @FAILED, align 4
  store i32 %290, i32* %2, align 4
  br label %456

291:                                              ; preds = %274
  %292 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %293 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %294)
  %296 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %297 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %296, i32 0, i32 0
  store i32 1, i32* %297, align 8
  %298 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %299 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @spin_unlock_irq(i32 %300)
  %302 = load i32, i32* @jiffies, align 4
  store i32 %302, i32* %5, align 4
  br label %303

303:                                              ; preds = %316, %291
  %304 = load i32, i32* @jiffies, align 4
  %305 = load i32, i32* %5, align 4
  %306 = sub i32 %304, %305
  %307 = load i32, i32* @HZ, align 4
  %308 = mul nsw i32 10, %307
  %309 = icmp ult i32 %306, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %303
  %311 = load i32, i32* %8, align 4
  %312 = add i32 %311, 1
  store i32 %312, i32* %8, align 4
  %313 = icmp ult i32 %311, 200000
  br label %314

314:                                              ; preds = %310, %303
  %315 = phi i1 [ false, %303 ], [ %313, %310 ]
  br i1 %315, label %316, label %318

316:                                              ; preds = %314
  %317 = call i32 @udelay(i64 100)
  br label %303

318:                                              ; preds = %314
  %319 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %320 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @spin_lock_irq(i32 %321)
  %323 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %324 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %325, i32 %326)
  store i32 0, i32* %4, align 4
  br label %328

328:                                              ; preds = %429, %318
  %329 = load i32, i32* %4, align 4
  %330 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %331 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = icmp ult i32 %329, %332
  br i1 %333, label %334, label %432

334:                                              ; preds = %328
  %335 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %336 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %335, i32 0, i32 2
  %337 = load i64*, i64** %336, align 8
  %338 = load i32, i32* %4, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @IN_RESET, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %377

344:                                              ; preds = %334
  %345 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %346 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %345, i32 0, i32 4
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %346, align 8
  %348 = load i32, i32* %4, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  %352 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %351, align 8
  store %struct.scsi_cmnd* %352, %struct.scsi_cmnd** %10, align 8
  %353 = load i32, i32* %4, align 4
  %354 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %355 = call i32 @unmap_dma(i32 %353, %struct.hostdata* %354)
  %356 = load i32, i32* @DID_RESET, align 4
  %357 = shl i32 %356, 16
  %358 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %359 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 8
  %360 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %361 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %360, i32 0, i32 3
  store i32* null, i32** %361, align 8
  %362 = load i64, i64* @LOCKED, align 8
  %363 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %364 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %363, i32 0, i32 2
  %365 = load i64*, i64** %364, align 8
  %366 = load i32, i32* %4, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds i64, i64* %365, i64 %367
  store i64 %362, i64* %368, align 8
  %369 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %370 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* %4, align 4
  %373 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %374 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %371, i32 %372, i32 %375)
  br label %422

377:                                              ; preds = %334
  %378 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %379 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %378, i32 0, i32 2
  %380 = load i64*, i64** %379, align 8
  %381 = load i32, i32* %4, align 4
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds i64, i64* %380, i64 %382
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @ABORTING, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %420

387:                                              ; preds = %377
  %388 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %389 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %388, i32 0, i32 4
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %389, align 8
  %391 = load i32, i32* %4, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 0
  %395 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %394, align 8
  store %struct.scsi_cmnd* %395, %struct.scsi_cmnd** %10, align 8
  %396 = load i32, i32* %4, align 4
  %397 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %398 = call i32 @unmap_dma(i32 %396, %struct.hostdata* %397)
  %399 = load i32, i32* @DID_RESET, align 4
  %400 = shl i32 %399, 16
  %401 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %402 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %401, i32 0, i32 0
  store i32 %400, i32* %402, align 8
  %403 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %404 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %403, i32 0, i32 3
  store i32* null, i32** %404, align 8
  %405 = load i64, i64* @FREE, align 8
  %406 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %407 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %406, i32 0, i32 2
  %408 = load i64*, i64** %407, align 8
  %409 = load i32, i32* %4, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %408, i64 %410
  store i64 %405, i64* %411, align 8
  %412 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %413 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %4, align 4
  %416 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %417 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0), i32 %414, i32 %415, i32 %418)
  br label %421

420:                                              ; preds = %377
  br label %429

421:                                              ; preds = %387
  br label %422

422:                                              ; preds = %421, %344
  %423 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %424 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %423, i32 0, i32 2
  %425 = bitcast {}** %424 to i32 (%struct.scsi_cmnd*)**
  %426 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %425, align 8
  %427 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %428 = call i32 %426(%struct.scsi_cmnd* %427)
  br label %429

429:                                              ; preds = %422, %420
  %430 = load i32, i32* %4, align 4
  %431 = add i32 %430, 1
  store i32 %431, i32* %4, align 4
  br label %328

432:                                              ; preds = %328
  %433 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %434 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %433, i32 0, i32 0
  store i32 0, i32* %434, align 8
  store i32 0, i32* @do_trace, align 4
  %435 = load i32, i32* %9, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %432
  %438 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %439 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %442 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %440, i32 %443)
  br label %450

445:                                              ; preds = %432
  %446 = load %struct.hostdata*, %struct.hostdata** %12, align 8
  %447 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %446, i32 0, i32 3
  %448 = load i32, i32* %447, align 8
  %449 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %448)
  br label %450

450:                                              ; preds = %445, %437
  %451 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  %452 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @spin_unlock_irq(i32 %453)
  %455 = load i32, i32* @SUCCESS, align 4
  store i32 %455, i32* %2, align 4
  br label %456

456:                                              ; preds = %450, %281, %66, %49
  %457 = load i32, i32* %2, align 4
  ret i32 %457
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @wait_on_busy(i32, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i64 @do_dma(i32, i32, i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @unmap_dma(i32, %struct.hostdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
