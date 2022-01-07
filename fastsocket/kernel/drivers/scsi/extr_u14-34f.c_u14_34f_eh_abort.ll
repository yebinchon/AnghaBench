; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_eh_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_u14_34f_eh_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.scsi_cmnd = type { i32, {}*, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.hostdata = type { i32 }
%struct.TYPE_10__ = type { i64*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.scsi_cmnd* }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"abort, pid %ld inactive.\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"abort, mbox %d, pid %ld.\0A\00", align 1
@sh = common dso_local global %struct.TYPE_9__** null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: abort, invalid SCarg->host_scribble.\0A\00", align 1
@MAXLOOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: abort, timeout error.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@FREE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: abort, mbox %d is free.\0A\00", align 1
@IN_USE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: abort, mbox %d is in use.\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: abort, mbox %d, SCarg %p, cp SCpnt %p.\0A\00", align 1
@REG_SYS_INTR = common dso_local global i64 0, align 8
@IRQ_ASSERTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"%s: abort, mbox %d, interrupt pending.\0A\00", align 1
@IN_RESET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: abort, mbox %d is in reset.\0A\00", align 1
@LOCKED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"%s: abort, mbox %d is locked.\0A\00", align 1
@READY = common dso_local global i64 0, align 8
@ABORTING = common dso_local global i64 0, align 8
@DID_ABORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [52 x i8] c"%s, abort, mbox %d ready, DID_ABORT, pid %ld done.\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%s: abort, mbox %d, invalid cp_stat.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @u14_34f_eh_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u14_34f_eh_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hostdata*
  %14 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i32, i32* @KERN_INFO, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, %struct.scsi_cmnd*, i8*, i32, ...) @scmd_printk(i32 %21, %struct.scsi_cmnd* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @SUCCESS, align 4
  store i32 %27, i32* %2, align 4
  br label %242

28:                                               ; preds = %1
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @KERN_INFO, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, %struct.scsi_cmnd*, i8*, i32, ...) @scmd_printk(i32 %33, %struct.scsi_cmnd* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %41, i64 %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp uge i32 %40, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %28
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @BN(i32 %50)
  %52 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %28
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %54, i64 %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @MAXLOOP, align 4
  %62 = call i64 @wait_on_busy(i64 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @BN(i32 %65)
  %67 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @FAILED, align 4
  store i32 %68, i32* %2, align 4
  br label %242

69:                                               ; preds = %53
  %70 = load i32, i32* %5, align 4
  %71 = call %struct.TYPE_10__* @HD(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @FREE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @BN(i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* @SUCCESS, align 4
  store i32 %85, i32* %2, align 4
  br label %242

86:                                               ; preds = %69
  %87 = load i32, i32* %5, align 4
  %88 = call %struct.TYPE_10__* @HD(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IN_USE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %149

97:                                               ; preds = %86
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @BN(i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call %struct.TYPE_10__* @HD(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %110, align 8
  %112 = icmp ne %struct.scsi_cmnd* %102, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %97
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @BN(i32 %114)
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call %struct.TYPE_10__* @HD(i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %125, align 8
  %127 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 %116, %struct.scsi_cmnd* %117, %struct.scsi_cmnd* %126)
  br label %128

128:                                              ; preds = %113, %97
  %129 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @sh, align 8
  %130 = load i32, i32* %5, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %129, i64 %131
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @REG_SYS_INTR, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @inb(i64 %137)
  %139 = load i32, i32* @IRQ_ASSERTED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %128
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @BN(i32 %143)
  %145 = load i32, i32* %4, align 4
  %146 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %128
  %148 = load i32, i32* @FAILED, align 4
  store i32 %148, i32* %2, align 4
  br label %242

149:                                              ; preds = %86
  %150 = load i32, i32* %5, align 4
  %151 = call %struct.TYPE_10__* @HD(i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @IN_RESET, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %149
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @BN(i32 %161)
  %163 = load i32, i32* %4, align 4
  %164 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load i32, i32* @FAILED, align 4
  store i32 %165, i32* %2, align 4
  br label %242

166:                                              ; preds = %149
  %167 = load i32, i32* %5, align 4
  %168 = call %struct.TYPE_10__* @HD(i32 %167)
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @LOCKED, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %166
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @BN(i32 %178)
  %180 = load i32, i32* %4, align 4
  %181 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load i32, i32* @SUCCESS, align 4
  store i32 %182, i32* %2, align 4
  br label %242

183:                                              ; preds = %166
  %184 = load i32, i32* %5, align 4
  %185 = call %struct.TYPE_10__* @HD(i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %4, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @READY, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %205, label %194

194:                                              ; preds = %183
  %195 = load i32, i32* %5, align 4
  %196 = call %struct.TYPE_10__* @HD(i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @ABORTING, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %237

205:                                              ; preds = %194, %183
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @unmap_dma(i32 %206, i32 %207)
  %209 = load i32, i32* @DID_ABORT, align 4
  %210 = shl i32 %209, 16
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %212 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %214 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %213, i32 0, i32 3
  store i32* null, i32** %214, align 8
  %215 = load i64, i64* @FREE, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call %struct.TYPE_10__* @HD(i32 %216)
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %4, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  store i64 %215, i64* %222, align 8
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @BN(i32 %223)
  %225 = load i32, i32* %4, align 4
  %226 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %227 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %224, i32 %225, i32 %228)
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 1
  %232 = bitcast {}** %231 to i32 (%struct.scsi_cmnd*)**
  %233 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %232, align 8
  %234 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %235 = call i32 %233(%struct.scsi_cmnd* %234)
  %236 = load i32, i32* @SUCCESS, align 4
  store i32 %236, i32* %2, align 4
  br label %242

237:                                              ; preds = %194
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @BN(i32 %238)
  %240 = load i32, i32* %4, align 4
  %241 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %237, %205, %177, %160, %147, %80, %64, %20
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, ...) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i32 @BN(i32) #1

declare dso_local i64 @wait_on_busy(i64, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local %struct.TYPE_10__* @HD(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @unmap_dma(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
