; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_eh_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_eh_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, {}*, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32, i64, i64 }
%struct.hostdata = type { i64*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.scsi_cmnd* }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"abort, pid %ld inactive.\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"abort, mbox %d, pid %ld.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: abort, invalid SCarg->host_scribble.\0A\00", align 1
@MAXLOOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: abort, timeout error.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@FREE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: abort, mbox %d is free.\0A\00", align 1
@IN_USE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: abort, mbox %d is in use.\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: abort, mbox %d, SCarg %p, cp SCpnt %p.\0A\00", align 1
@REG_AUX_STATUS = common dso_local global i64 0, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @eata2x_eh_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eata2x_eh_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.hostdata*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.hostdata*
  store %struct.hostdata* %15, %struct.hostdata** %5, align 8
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
  br label %231

28:                                               ; preds = %1
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @KERN_WARNING, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, %struct.scsi_cmnd*, i8*, i32, ...) @scmd_printk(i32 %33, %struct.scsi_cmnd* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %47 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %28
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @MAXLOOP, align 4
  %55 = call i64 @wait_on_busy(i64 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %59 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @FAILED, align 4
  store i32 %62, i32* %2, align 4
  br label %231

63:                                               ; preds = %50
  %64 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %65 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FREE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %75 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* @SUCCESS, align 4
  store i32 %79, i32* %2, align 4
  br label %231

80:                                               ; preds = %63
  %81 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %82 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IN_USE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %139

90:                                               ; preds = %80
  %91 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %92 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %97 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %98 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %103, align 8
  %105 = icmp ne %struct.scsi_cmnd* %96, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %90
  %107 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %108 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %112 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %113 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %118, align 8
  %120 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %109, i32 %110, %struct.scsi_cmnd* %111, %struct.scsi_cmnd* %119)
  br label %121

121:                                              ; preds = %106, %90
  %122 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %123 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @REG_AUX_STATUS, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @inb(i64 %126)
  %128 = load i32, i32* @IRQ_ASSERTED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %121
  %132 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %133 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %121
  %138 = load i32, i32* @FAILED, align 4
  store i32 %138, i32* %2, align 4
  br label %231

139:                                              ; preds = %80
  %140 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %141 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @IN_RESET, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %139
  %150 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %151 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i32, i32* @FAILED, align 4
  store i32 %155, i32* %2, align 4
  br label %231

156:                                              ; preds = %139
  %157 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %158 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @LOCKED, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %156
  %167 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %168 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32, i32* @SUCCESS, align 4
  store i32 %172, i32* %2, align 4
  br label %231

173:                                              ; preds = %156
  %174 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %175 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @READY, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %193, label %183

183:                                              ; preds = %173
  %184 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %185 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @ABORTING, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %225

193:                                              ; preds = %183, %173
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %196 = call i32 @unmap_dma(i32 %194, %struct.hostdata* %195)
  %197 = load i32, i32* @DID_ABORT, align 4
  %198 = shl i32 %197, 16
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %200 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %202 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %201, i32 0, i32 3
  store i32* null, i32** %202, align 8
  %203 = load i64, i64* @FREE, align 8
  %204 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %205 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  store i64 %203, i64* %209, align 8
  %210 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %211 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %215 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %212, i32 %213, i32 %216)
  %218 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %219 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %218, i32 0, i32 1
  %220 = bitcast {}** %219 to i32 (%struct.scsi_cmnd*)**
  %221 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %220, align 8
  %222 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %223 = call i32 %221(%struct.scsi_cmnd* %222)
  %224 = load i32, i32* @SUCCESS, align 4
  store i32 %224, i32* %2, align 4
  br label %231

225:                                              ; preds = %183
  %226 = load %struct.hostdata*, %struct.hostdata** %5, align 8
  %227 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %225, %193, %166, %149, %137, %73, %57, %20
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32, ...) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i64 @wait_on_busy(i64, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @unmap_dma(i32, %struct.hostdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
