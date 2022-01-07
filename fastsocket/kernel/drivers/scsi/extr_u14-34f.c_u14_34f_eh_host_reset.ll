; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_eh_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_eh_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }
%struct.scsi_cmnd = type { i32, i32, {}*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.hostdata = type { i32 }
%struct.TYPE_10__ = type { i32, i64*, %struct.TYPE_8__*, i64**, i8***, i64 }
%struct.TYPE_8__ = type { %struct.scsi_cmnd* }

@FALSE = common dso_local global i8* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reset, enter, pid %ld.\0A\00", align 1
@sh = common dso_local global %struct.TYPE_9__** null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: reset, pid %ld inactive.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: reset, exit, already in reset.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@MAXLOOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: reset, exit, timeout error.\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
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
@.str.11 = private unnamed_addr constant [41 x i8] c"%s: reset, cannot reset, timeout error.\0A\00", align 1
@CMD_RESET = common dso_local global i32 0, align 4
@REG_LCL_INTR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [51 x i8] c"%s: reset, board reset done, enabling interrupts.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"%s: reset, interrupts disabled, loops %d.\0A\00", align 1
@DID_RESET = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [53 x i8] c"%s, reset, mbox %d locked, DID_RESET, pid %ld done.\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"%s, reset, mbox %d aborting, DID_RESET, pid %ld done.\0A\00", align 1
@do_trace = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [32 x i8] c"%s: reset, exit, pid %ld done.\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"%s: reset, exit.\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @u14_34f_eh_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u14_34f_eh_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** @FALSE, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %10, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.hostdata*
  %22 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @scmd_printk(i32 %24, %struct.scsi_cmnd* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %30, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spin_lock_irq(i32 %36)
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %1
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @BN(i32 %43)
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %1
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.TYPE_10__* @HD(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @BN(i32 %56)
  %58 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @spin_unlock_irq(i32 %65)
  %67 = load i32, i32* @FAILED, align 4
  store i32 %67, i32* %2, align 4
  br label %533

68:                                               ; preds = %49
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %69, i64 %71
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @MAXLOOP, align 4
  %77 = call i64 @wait_on_busy(i64 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %68
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @BN(i32 %80)
  %82 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %83, i64 %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @spin_unlock_irq(i32 %89)
  %91 = load i32, i32* @FAILED, align 4
  store i32 %91, i32* %2, align 4
  br label %533

92:                                               ; preds = %68
  %93 = load i32, i32* %5, align 4
  %94 = call %struct.TYPE_10__* @HD(i32 %93)
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %145, %92
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %99 = load i32, i32* %5, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %98, i64 %100
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ule i32 %97, %104
  br i1 %105, label %106, label %148

106:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %141, %106
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %110 = load i32, i32* %5, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %109, i64 %111
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ult i32 %108, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %107
  %118 = load i8*, i8** @TRUE, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call %struct.TYPE_10__* @HD(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i8***, i8**** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8**, i8*** %122, i64 %124
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %118, i8** %129, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call %struct.TYPE_10__* @HD(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  %133 = load i64**, i64*** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i64*, i64** %133, i64 %135
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %117
  %142 = load i32, i32* %6, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %6, align 4
  br label %107

144:                                              ; preds = %107
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %7, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %7, align 4
  br label %96

148:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %306, %148
  %150 = load i32, i32* %4, align 4
  %151 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %152 = load i32, i32* %5, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %151, i64 %153
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ult i32 %150, %157
  br i1 %158, label %159, label %309

159:                                              ; preds = %149
  %160 = load i32, i32* %5, align 4
  %161 = call %struct.TYPE_10__* @HD(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @FREE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  br label %306

171:                                              ; preds = %159
  %172 = load i32, i32* %5, align 4
  %173 = call %struct.TYPE_10__* @HD(i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @LOCKED, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %171
  %183 = load i64, i64* @FREE, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call %struct.TYPE_10__* @HD(i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64 %183, i64* %190, align 8
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @BN(i32 %191)
  %193 = load i32, i32* %4, align 4
  %194 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %192, i32 %193)
  br label %306

195:                                              ; preds = %171
  %196 = load i32, i32* %5, align 4
  %197 = call %struct.TYPE_10__* @HD(i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %203, align 8
  store %struct.scsi_cmnd* %204, %struct.scsi_cmnd** %11, align 8
  %205 = icmp ne %struct.scsi_cmnd* %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %195
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @BN(i32 %207)
  %209 = load i32, i32* %4, align 4
  %210 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %206, %195
  %212 = load i32, i32* %5, align 4
  %213 = call %struct.TYPE_10__* @HD(i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %4, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @READY, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %233, label %222

222:                                              ; preds = %211
  %223 = load i32, i32* %5, align 4
  %224 = call %struct.TYPE_10__* @HD(i32 %223)
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = load i64*, i64** %225, align 8
  %227 = load i32, i32* %4, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @ABORTING, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %249

233:                                              ; preds = %222, %211
  %234 = load i64, i64* @ABORTING, align 8
  %235 = load i32, i32* %5, align 4
  %236 = call %struct.TYPE_10__* @HD(i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %4, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  store i64 %234, i64* %241, align 8
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @BN(i32 %242)
  %244 = load i32, i32* %4, align 4
  %245 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %246 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %243, i32 %244, i32 %247)
  br label %265

249:                                              ; preds = %222
  %250 = load i64, i64* @IN_RESET, align 8
  %251 = load i32, i32* %5, align 4
  %252 = call %struct.TYPE_10__* @HD(i32 %251)
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = load i32, i32* %4, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  store i64 %250, i64* %257, align 8
  %258 = load i32, i32* %5, align 4
  %259 = call i32 @BN(i32 %258)
  %260 = load i32, i32* %4, align 4
  %261 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %262 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %259, i32 %260, i32 %263)
  br label %265

265:                                              ; preds = %249, %233
  %266 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %267 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = icmp eq i32* %268, null
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load i32, i32* %5, align 4
  %272 = call i32 @BN(i32 %271)
  %273 = load i32, i32* %4, align 4
  %274 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %270, %265
  %276 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %277 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %276, i32 0, i32 3
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %4, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %275
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @BN(i32 %283)
  %285 = load i32, i32* %4, align 4
  %286 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %284, i32 %285)
  br label %287

287:                                              ; preds = %282, %275
  %288 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %289 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %288, i32 0, i32 2
  %290 = bitcast {}** %289 to i32 (%struct.scsi_cmnd*)**
  %291 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %290, align 8
  %292 = icmp eq i32 (%struct.scsi_cmnd*)* %291, null
  br i1 %292, label %293, label %298

293:                                              ; preds = %287
  %294 = load i32, i32* %5, align 4
  %295 = call i32 @BN(i32 %294)
  %296 = load i32, i32* %4, align 4
  %297 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %293, %287
  %299 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %300 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %301 = icmp eq %struct.scsi_cmnd* %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %298
  %303 = load i8*, i8** @TRUE, align 8
  %304 = ptrtoint i8* %303 to i32
  store i32 %304, i32* %10, align 4
  br label %305

305:                                              ; preds = %302, %298
  br label %306

306:                                              ; preds = %305, %182, %170
  %307 = load i32, i32* %4, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %4, align 4
  br label %149

309:                                              ; preds = %149
  %310 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %311 = load i32, i32* %5, align 4
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %310, i64 %312
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = load i32, i32* @MAXLOOP, align 4
  %318 = call i64 @wait_on_busy(i64 %316, i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %333

320:                                              ; preds = %309
  %321 = load i32, i32* %5, align 4
  %322 = call i32 @BN(i32 %321)
  %323 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %322)
  %324 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %325 = load i32, i32* %5, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %324, i64 %326
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @spin_unlock_irq(i32 %330)
  %332 = load i32, i32* @FAILED, align 4
  store i32 %332, i32* %2, align 4
  br label %533

333:                                              ; preds = %309
  %334 = load i32, i32* @CMD_RESET, align 4
  %335 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %336 = load i32, i32* %5, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %335, i64 %337
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @REG_LCL_INTR, align 8
  %343 = add nsw i64 %341, %342
  %344 = call i32 @outb(i32 %334, i64 %343)
  %345 = load i32, i32* %5, align 4
  %346 = call i32 @BN(i32 %345)
  %347 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %346)
  %348 = load i8*, i8** @TRUE, align 8
  %349 = ptrtoint i8* %348 to i32
  %350 = load i32, i32* %5, align 4
  %351 = call %struct.TYPE_10__* @HD(i32 %350)
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 0
  store i32 %349, i32* %352, align 8
  %353 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %354 = load i32, i32* %5, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %353, i64 %355
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @spin_unlock_irq(i32 %359)
  %361 = load i64, i64* @jiffies, align 8
  store i64 %361, i64* %9, align 8
  br label %362

362:                                              ; preds = %376, %333
  %363 = load i64, i64* @jiffies, align 8
  %364 = load i64, i64* %9, align 8
  %365 = sub i64 %363, %364
  %366 = load i32, i32* @HZ, align 4
  %367 = mul nsw i32 10, %366
  %368 = sext i32 %367 to i64
  %369 = icmp ult i64 %365, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %362
  %371 = load i32, i32* %8, align 4
  %372 = add i32 %371, 1
  store i32 %372, i32* %8, align 4
  %373 = icmp ult i32 %371, 200000
  br label %374

374:                                              ; preds = %370, %362
  %375 = phi i1 [ false, %362 ], [ %373, %370 ]
  br i1 %375, label %376, label %378

376:                                              ; preds = %374
  %377 = call i32 @udelay(i64 100)
  br label %362

378:                                              ; preds = %374
  %379 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %380 = load i32, i32* %5, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %379, i64 %381
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @spin_lock_irq(i32 %385)
  %387 = load i32, i32* %5, align 4
  %388 = call i32 @BN(i32 %387)
  %389 = load i32, i32* %8, align 4
  %390 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %388, i32 %389)
  store i32 0, i32* %4, align 4
  br label %391

391:                                              ; preds = %500, %378
  %392 = load i32, i32* %4, align 4
  %393 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %394 = load i32, i32* %5, align 4
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %393, i64 %395
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = icmp ult i32 %392, %399
  br i1 %400, label %401, label %503

401:                                              ; preds = %391
  %402 = load i32, i32* %5, align 4
  %403 = call %struct.TYPE_10__* @HD(i32 %402)
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 1
  %405 = load i64*, i64** %404, align 8
  %406 = load i32, i32* %4, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds i64, i64* %405, i64 %407
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @IN_RESET, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %412, label %446

412:                                              ; preds = %401
  %413 = load i32, i32* %5, align 4
  %414 = call %struct.TYPE_10__* @HD(i32 %413)
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 2
  %416 = load %struct.TYPE_8__*, %struct.TYPE_8__** %415, align 8
  %417 = load i32, i32* %4, align 4
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 0
  %421 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %420, align 8
  store %struct.scsi_cmnd* %421, %struct.scsi_cmnd** %11, align 8
  %422 = load i32, i32* %4, align 4
  %423 = load i32, i32* %5, align 4
  %424 = call i32 @unmap_dma(i32 %422, i32 %423)
  %425 = load i32, i32* @DID_RESET, align 4
  %426 = shl i32 %425, 16
  %427 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %428 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %427, i32 0, i32 0
  store i32 %426, i32* %428, align 8
  %429 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %430 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %429, i32 0, i32 3
  store i32* null, i32** %430, align 8
  %431 = load i64, i64* @LOCKED, align 8
  %432 = load i32, i32* %5, align 4
  %433 = call %struct.TYPE_10__* @HD(i32 %432)
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 1
  %435 = load i64*, i64** %434, align 8
  %436 = load i32, i32* %4, align 4
  %437 = zext i32 %436 to i64
  %438 = getelementptr inbounds i64, i64* %435, i64 %437
  store i64 %431, i64* %438, align 8
  %439 = load i32, i32* %5, align 4
  %440 = call i32 @BN(i32 %439)
  %441 = load i32, i32* %4, align 4
  %442 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %443 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %440, i32 %441, i32 %444)
  br label %493

446:                                              ; preds = %401
  %447 = load i32, i32* %5, align 4
  %448 = call %struct.TYPE_10__* @HD(i32 %447)
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 1
  %450 = load i64*, i64** %449, align 8
  %451 = load i32, i32* %4, align 4
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds i64, i64* %450, i64 %452
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @ABORTING, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %491

457:                                              ; preds = %446
  %458 = load i32, i32* %5, align 4
  %459 = call %struct.TYPE_10__* @HD(i32 %458)
  %460 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i32 0, i32 2
  %461 = load %struct.TYPE_8__*, %struct.TYPE_8__** %460, align 8
  %462 = load i32, i32* %4, align 4
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 0
  %466 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %465, align 8
  store %struct.scsi_cmnd* %466, %struct.scsi_cmnd** %11, align 8
  %467 = load i32, i32* %4, align 4
  %468 = load i32, i32* %5, align 4
  %469 = call i32 @unmap_dma(i32 %467, i32 %468)
  %470 = load i32, i32* @DID_RESET, align 4
  %471 = shl i32 %470, 16
  %472 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %473 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %472, i32 0, i32 0
  store i32 %471, i32* %473, align 8
  %474 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %475 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %474, i32 0, i32 3
  store i32* null, i32** %475, align 8
  %476 = load i64, i64* @FREE, align 8
  %477 = load i32, i32* %5, align 4
  %478 = call %struct.TYPE_10__* @HD(i32 %477)
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 1
  %480 = load i64*, i64** %479, align 8
  %481 = load i32, i32* %4, align 4
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds i64, i64* %480, i64 %482
  store i64 %476, i64* %483, align 8
  %484 = load i32, i32* %5, align 4
  %485 = call i32 @BN(i32 %484)
  %486 = load i32, i32* %4, align 4
  %487 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %488 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0), i32 %485, i32 %486, i32 %489)
  br label %492

491:                                              ; preds = %446
  br label %500

492:                                              ; preds = %457
  br label %493

493:                                              ; preds = %492, %412
  %494 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %495 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %494, i32 0, i32 2
  %496 = bitcast {}** %495 to i32 (%struct.scsi_cmnd*)**
  %497 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %496, align 8
  %498 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  %499 = call i32 %497(%struct.scsi_cmnd* %498)
  br label %500

500:                                              ; preds = %493, %491
  %501 = load i32, i32* %4, align 4
  %502 = add i32 %501, 1
  store i32 %502, i32* %4, align 4
  br label %391

503:                                              ; preds = %391
  %504 = load i8*, i8** @FALSE, align 8
  %505 = ptrtoint i8* %504 to i32
  %506 = load i32, i32* %5, align 4
  %507 = call %struct.TYPE_10__* @HD(i32 %506)
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 0
  store i32 %505, i32* %508, align 8
  %509 = load i8*, i8** @FALSE, align 8
  store i8* %509, i8** @do_trace, align 8
  %510 = load i32, i32* %10, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %519

512:                                              ; preds = %503
  %513 = load i32, i32* %5, align 4
  %514 = call i32 @BN(i32 %513)
  %515 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %516 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %514, i32 %517)
  br label %523

519:                                              ; preds = %503
  %520 = load i32, i32* %5, align 4
  %521 = call i32 @BN(i32 %520)
  %522 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %521)
  br label %523

523:                                              ; preds = %519, %512
  %524 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %525 = load i32, i32* %5, align 4
  %526 = zext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %524, i64 %526
  %528 = load %struct.TYPE_9__*, %struct.TYPE_9__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %528, i32 0, i32 3
  %530 = load i32, i32* %529, align 4
  %531 = call i32 @spin_unlock_irq(i32 %530)
  %532 = load i32, i32* @SUCCESS, align 4
  store i32 %532, i32* %2, align 4
  br label %533

533:                                              ; preds = %523, %320, %79, %55
  %534 = load i32, i32* %2, align 4
  ret i32 %534
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @BN(i32) #1

declare dso_local %struct.TYPE_10__* @HD(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @wait_on_busy(i64, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @unmap_dma(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
