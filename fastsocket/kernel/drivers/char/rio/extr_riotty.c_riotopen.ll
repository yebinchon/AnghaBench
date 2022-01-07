; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riotty.c_riotopen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riotty.c_riotopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.Port**, i64 }
%struct.Port = type { i64, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_13__, i32, i64, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, %struct.tty_struct*, i32 }
%struct.tty_struct = type { %struct.TYPE_8__*, %struct.Port* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.file = type { i32 }

@p = common dso_local global %struct.TYPE_12__* null, align 8
@RIO_DEBUG_TTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"System initialisation failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"port open SysPort %d (mapped:%d)\0A\00", align 1
@RIO_PORTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Illegal port number %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"PortP: %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"port not mapped into system\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%d bytes in tx buffer\0A\00", align 1
@RUN_STATE = common dso_local global i32 0, align 4
@RC_RUNNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Host not running\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Checking if RTA has booted... \0A\00", align 1
@RTA_BOOTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"RTA never booted\0A\00", align 1
@HUNDRED_MS = common dso_local global i32 0, align 4
@RIO_FAIL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"RTA_wait_for_boot: EINTR in delay \0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"Waiting for RTA to boot timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"RTA has been booted\0A\00", align 1
@RIO_CLOSING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"Waiting for RIO_CLOSING to go away\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Waiting for not idle closed broken by signal\0A\00", align 1
@RIOC_FCLOSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"Port unmapped while closing!\0A\00", align 1
@RIO_LOPEN = common dso_local global i32 0, align 4
@RIO_MOPEN = common dso_local global i32 0, align 4
@RIO_CTSFLOW = common dso_local global i32 0, align 4
@RIO_RTSFLOW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"First open for this port\0A\00", align 1
@NOT_INUSE = common dso_local global i32 0, align 4
@RIOC_OPEN = common dso_local global i32 0, align 4
@OK_TO_SLEEP = common dso_local global i32 0, align 4
@PORT_ISOPEN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"Waiting for PORT_ISOPEN-currently %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"Waiting for open to finish broken by signal\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"PORT_ISOPEN found\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Modem - test for carrier\0A\00", align 1
@CLOCAL = common dso_local global i32 0, align 4
@RIOC_MSVR1_CD = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"open(%d) Modem carr on\0A\00", align 1
@RIO_CARR_ON = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [31 x i8] c"open(%d) sleeping for carr on\0A\00", align 1
@RIO_WOPEN = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [45 x i8] c"open(%d) sleeping for carr broken by signal\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Setting RIO_MOPEN\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"high level open done\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Returning from open\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @riotopen(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Port*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 250, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @func_enter()
  %12 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 1
  store %struct.Port* null, %struct.Port** %13, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = call i32 @rio_minor(%struct.tty_struct* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %22 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 (...) @func_exit()
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %523

26:                                               ; preds = %2
  %27 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.Port**, %struct.Port*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.Port*, %struct.Port** %31, i64 %33
  %35 = load %struct.Port*, %struct.Port** %34, align 8
  %36 = getelementptr inbounds %struct.Port, %struct.Port* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @RIO_PORTS, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %26
  %43 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = call i32 (...) @func_exit()
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %523

49:                                               ; preds = %26
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.Port**, %struct.Port*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.Port*, %struct.Port** %52, i64 %54
  %56 = load %struct.Port*, %struct.Port** %55, align 8
  store %struct.Port* %56, %struct.Port** %8, align 8
  %57 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %58 = load %struct.Port*, %struct.Port** %8, align 8
  %59 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.Port* %58)
  %60 = load %struct.Port*, %struct.Port** %8, align 8
  %61 = getelementptr inbounds %struct.Port, %struct.Port* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %49
  %65 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %66 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %67 = call i32 (...) @func_exit()
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %523

70:                                               ; preds = %49
  %71 = load %struct.Port*, %struct.Port** %8, align 8
  %72 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %73 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %72, i32 0, i32 1
  store %struct.Port* %71, %struct.Port** %73, align 8
  %74 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %75 = load %struct.Port*, %struct.Port** %8, align 8
  %76 = getelementptr inbounds %struct.Port, %struct.Port* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store %struct.tty_struct* %74, %struct.tty_struct** %78, align 8
  %79 = load %struct.Port*, %struct.Port** %8, align 8
  %80 = getelementptr inbounds %struct.Port, %struct.Port* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %86 = load %struct.Port*, %struct.Port** %8, align 8
  %87 = getelementptr inbounds %struct.Port, %struct.Port* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load %struct.Port*, %struct.Port** %8, align 8
  %92 = getelementptr inbounds %struct.Port, %struct.Port* %91, i32 0, i32 8
  %93 = call i32 @gs_init_port(%struct.TYPE_13__* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %70
  %97 = load %struct.Port*, %struct.Port** %8, align 8
  %98 = getelementptr inbounds %struct.Port, %struct.Port* %97, i32 0, i32 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @ENXIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %523

105:                                              ; preds = %70
  %106 = load %struct.Port*, %struct.Port** %8, align 8
  %107 = getelementptr inbounds %struct.Port, %struct.Port* %106, i32 0, i32 14
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @RUN_STATE, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @RC_RUNNING, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %105
  %116 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %117 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %118 = call i32 (...) @func_exit()
  %119 = load i32, i32* @ENXIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %523

121:                                              ; preds = %105
  %122 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %123 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %122, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %124

124:                                              ; preds = %173, %121
  %125 = load %struct.Port*, %struct.Port** %8, align 8
  %126 = getelementptr inbounds %struct.Port, %struct.Port* %125, i32 0, i32 14
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load %struct.Port*, %struct.Port** %8, align 8
  %131 = getelementptr inbounds %struct.Port, %struct.Port* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RTA_BOOTED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  br i1 %139, label %140, label %174

140:                                              ; preds = %124
  %141 = load %struct.Port*, %struct.Port** %8, align 8
  %142 = getelementptr inbounds %struct.Port, %struct.Port* %141, i32 0, i32 13
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %147 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %148 = call i32 (...) @func_exit()
  %149 = load i32, i32* @ENXIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %523

151:                                              ; preds = %140
  %152 = load %struct.Port*, %struct.Port** %8, align 8
  %153 = load i32, i32* @HUNDRED_MS, align 4
  %154 = call i64 @RIODelay(%struct.Port* %152, i32 %153)
  %155 = load i64, i64* @RIO_FAIL, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %159 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %160 = call i32 (...) @func_exit()
  %161 = load i32, i32* @EINTR, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %523

163:                                              ; preds = %151
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %7, align 4
  %166 = icmp sle i32 %164, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %169 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %170 = call i32 (...) @func_exit()
  %171 = load i32, i32* @EIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %523

173:                                              ; preds = %163
  br label %124

174:                                              ; preds = %124
  %175 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %176 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %177 = load %struct.Port*, %struct.Port** %8, align 8
  %178 = getelementptr inbounds %struct.Port, %struct.Port* %177, i32 0, i32 5
  %179 = load i64, i64* %9, align 8
  %180 = call i32 @rio_spin_lock_irqsave(i32* %178, i64 %179)
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %174
  br label %361

186:                                              ; preds = %174
  br label %187

187:                                              ; preds = %234, %186
  %188 = load %struct.Port*, %struct.Port** %8, align 8
  %189 = getelementptr inbounds %struct.Port, %struct.Port* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @RIO_CLOSING, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  %199 = xor i1 %198, true
  br label %200

200:                                              ; preds = %194, %187
  %201 = phi i1 [ false, %187 ], [ %199, %194 ]
  br i1 %201, label %202, label %239

202:                                              ; preds = %200
  %203 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %204 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %203, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %7, align 4
  %207 = icmp sle i32 %205, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %202
  %209 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %210 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %209, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %212 = load %struct.Port*, %struct.Port** %8, align 8
  %213 = load i32, i32* @RIOC_FCLOSE, align 4
  %214 = call i32 @RIOPreemptiveCmd(%struct.TYPE_12__* %211, %struct.Port* %212, i32 %213)
  %215 = load i32, i32* @EINTR, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %10, align 4
  br label %361

217:                                              ; preds = %202
  %218 = load %struct.Port*, %struct.Port** %8, align 8
  %219 = getelementptr inbounds %struct.Port, %struct.Port* %218, i32 0, i32 5
  %220 = load i64, i64* %9, align 8
  %221 = call i32 @rio_spin_unlock_irqrestore(i32* %219, i64 %220)
  %222 = load %struct.Port*, %struct.Port** %8, align 8
  %223 = load i32, i32* @HUNDRED_MS, align 4
  %224 = call i64 @RIODelay(%struct.Port* %222, i32 %223)
  %225 = load i64, i64* @RIO_FAIL, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %217
  %228 = load %struct.Port*, %struct.Port** %8, align 8
  %229 = getelementptr inbounds %struct.Port, %struct.Port* %228, i32 0, i32 5
  %230 = load i64, i64* %9, align 8
  %231 = call i32 @rio_spin_lock_irqsave(i32* %229, i64 %230)
  %232 = load i32, i32* @EINTR, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %10, align 4
  br label %361

234:                                              ; preds = %217
  %235 = load %struct.Port*, %struct.Port** %8, align 8
  %236 = getelementptr inbounds %struct.Port, %struct.Port* %235, i32 0, i32 5
  %237 = load i64, i64* %9, align 8
  %238 = call i32 @rio_spin_lock_irqsave(i32* %236, i64 %237)
  br label %187

239:                                              ; preds = %200
  %240 = load %struct.Port*, %struct.Port** %8, align 8
  %241 = getelementptr inbounds %struct.Port, %struct.Port* %240, i32 0, i32 12
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %246 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %245, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %247 = load %struct.Port*, %struct.Port** %8, align 8
  %248 = getelementptr inbounds %struct.Port, %struct.Port* %247, i32 0, i32 5
  %249 = load i64, i64* %9, align 8
  %250 = call i32 @rio_spin_unlock_irqrestore(i32* %248, i64 %249)
  %251 = load i32, i32* @ENXIO, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %10, align 4
  %253 = call i32 (...) @func_exit()
  %254 = load i32, i32* %10, align 4
  store i32 %254, i32* %3, align 4
  br label %523

255:                                              ; preds = %239
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %361

261:                                              ; preds = %255
  %262 = load %struct.Port*, %struct.Port** %8, align 8
  %263 = getelementptr inbounds %struct.Port, %struct.Port* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @RIO_LOPEN, align 4
  %266 = load i32, i32* @RIO_MOPEN, align 4
  %267 = or i32 %265, %266
  %268 = and i32 %264, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %279, label %270

270:                                              ; preds = %261
  %271 = load i32, i32* @RIO_CTSFLOW, align 4
  %272 = load i32, i32* @RIO_RTSFLOW, align 4
  %273 = or i32 %271, %272
  %274 = xor i32 %273, -1
  %275 = load %struct.Port*, %struct.Port** %8, align 8
  %276 = getelementptr inbounds %struct.Port, %struct.Port* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, %274
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %270, %261
  %280 = load %struct.Port*, %struct.Port** %8, align 8
  %281 = getelementptr inbounds %struct.Port, %struct.Port* %280, i32 0, i32 11
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %370, label %284

284:                                              ; preds = %279
  %285 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %286 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %285, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %287 = load %struct.Port*, %struct.Port** %8, align 8
  %288 = getelementptr inbounds %struct.Port, %struct.Port* %287, i32 0, i32 11
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 8
  %291 = load %struct.Port*, %struct.Port** %8, align 8
  %292 = getelementptr inbounds %struct.Port, %struct.Port* %291, i32 0, i32 10
  store i64 0, i64* %292, align 8
  %293 = load i32, i32* @NOT_INUSE, align 4
  %294 = load %struct.Port*, %struct.Port** %8, align 8
  %295 = getelementptr inbounds %struct.Port, %struct.Port* %294, i32 0, i32 9
  store i32 %293, i32* %295, align 8
  %296 = load %struct.Port*, %struct.Port** %8, align 8
  %297 = getelementptr inbounds %struct.Port, %struct.Port* %296, i32 0, i32 5
  %298 = load i64, i64* %9, align 8
  %299 = call i32 @rio_spin_unlock_irqrestore(i32* %297, i64 %298)
  %300 = load %struct.Port*, %struct.Port** %8, align 8
  %301 = load i32, i32* @RIOC_OPEN, align 4
  %302 = load i32, i32* @OK_TO_SLEEP, align 4
  %303 = call i32 @RIOParam(%struct.Port* %300, i32 %301, i32 1, i32 %302)
  %304 = load %struct.Port*, %struct.Port** %8, align 8
  %305 = getelementptr inbounds %struct.Port, %struct.Port* %304, i32 0, i32 5
  %306 = load i64, i64* %9, align 8
  %307 = call i32 @rio_spin_lock_irqsave(i32* %305, i64 %306)
  br label %308

308:                                              ; preds = %348, %284
  %309 = load %struct.Port*, %struct.Port** %8, align 8
  %310 = getelementptr inbounds %struct.Port, %struct.Port* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @PORT_ISOPEN, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %321, label %315

315:                                              ; preds = %308
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  %320 = xor i1 %319, true
  br label %321

321:                                              ; preds = %315, %308
  %322 = phi i1 [ false, %308 ], [ %320, %315 ]
  br i1 %322, label %323, label %353

323:                                              ; preds = %321
  %324 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %325 = load %struct.Port*, %struct.Port** %8, align 8
  %326 = getelementptr inbounds %struct.Port, %struct.Port* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %324, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %327)
  %329 = load %struct.Port*, %struct.Port** %8, align 8
  %330 = getelementptr inbounds %struct.Port, %struct.Port* %329, i32 0, i32 5
  %331 = load i64, i64* %9, align 8
  %332 = call i32 @rio_spin_unlock_irqrestore(i32* %330, i64 %331)
  %333 = load %struct.Port*, %struct.Port** %8, align 8
  %334 = load i32, i32* @HUNDRED_MS, align 4
  %335 = call i64 @RIODelay(%struct.Port* %333, i32 %334)
  %336 = load i64, i64* @RIO_FAIL, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %348

338:                                              ; preds = %323
  %339 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %340 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %339, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %342 = load %struct.Port*, %struct.Port** %8, align 8
  %343 = load i32, i32* @RIOC_FCLOSE, align 4
  %344 = call i32 @RIOPreemptiveCmd(%struct.TYPE_12__* %341, %struct.Port* %342, i32 %343)
  %345 = call i32 (...) @func_exit()
  %346 = load i32, i32* @EINTR, align 4
  %347 = sub nsw i32 0, %346
  store i32 %347, i32* %3, align 4
  br label %523

348:                                              ; preds = %323
  %349 = load %struct.Port*, %struct.Port** %8, align 8
  %350 = getelementptr inbounds %struct.Port, %struct.Port* %349, i32 0, i32 5
  %351 = load i64, i64* %9, align 8
  %352 = call i32 @rio_spin_lock_irqsave(i32* %350, i64 %351)
  br label %308

353:                                              ; preds = %321
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %367

358:                                              ; preds = %353
  %359 = load i32, i32* @EIO, align 4
  %360 = sub nsw i32 0, %359
  store i32 %360, i32* %10, align 4
  br label %361

361:                                              ; preds = %502, %489, %358, %260, %227, %208, %185
  %362 = load %struct.Port*, %struct.Port** %8, align 8
  %363 = getelementptr inbounds %struct.Port, %struct.Port* %362, i32 0, i32 5
  %364 = load i64, i64* %9, align 8
  %365 = call i32 @rio_spin_unlock_irqrestore(i32* %363, i64 %364)
  %366 = load i32, i32* %10, align 4
  store i32 %366, i32* %3, align 4
  br label %523

367:                                              ; preds = %353
  %368 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %369 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  br label %370

370:                                              ; preds = %367, %279
  %371 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %372 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %371, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %373 = load %struct.Port*, %struct.Port** %8, align 8
  %374 = getelementptr inbounds %struct.Port, %struct.Port* %373, i32 0, i32 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 1
  %377 = load %struct.tty_struct*, %struct.tty_struct** %376, align 8
  %378 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %377, i32 0, i32 0
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @CLOCAL, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %392, label %385

385:                                              ; preds = %370
  %386 = load %struct.Port*, %struct.Port** %8, align 8
  %387 = getelementptr inbounds %struct.Port, %struct.Port* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @RIOC_MSVR1_CD, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %406

392:                                              ; preds = %385, %370
  %393 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %394 = load i32, i32* %6, align 4
  %395 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %393, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %394)
  %396 = load i32, i32* @RIO_CARR_ON, align 4
  %397 = load %struct.Port*, %struct.Port** %8, align 8
  %398 = getelementptr inbounds %struct.Port, %struct.Port* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = or i32 %399, %396
  store i32 %400, i32* %398, align 8
  %401 = load %struct.Port*, %struct.Port** %8, align 8
  %402 = getelementptr inbounds %struct.Port, %struct.Port* %401, i32 0, i32 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  %405 = call i32 @wake_up_interruptible(i32* %404)
  br label %484

406:                                              ; preds = %385
  br label %407

407:                                              ; preds = %472, %406
  %408 = load %struct.Port*, %struct.Port** %8, align 8
  %409 = getelementptr inbounds %struct.Port, %struct.Port* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @RIO_CARR_ON, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %427, label %414

414:                                              ; preds = %407
  %415 = load %struct.file*, %struct.file** %5, align 8
  %416 = getelementptr inbounds %struct.file, %struct.file* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @O_NONBLOCK, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %427, label %421

421:                                              ; preds = %414
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  %426 = xor i1 %425, true
  br label %427

427:                                              ; preds = %421, %414, %407
  %428 = phi i1 [ false, %414 ], [ false, %407 ], [ %426, %421 ]
  br i1 %428, label %429, label %477

429:                                              ; preds = %427
  %430 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %431 = load i32, i32* %6, align 4
  %432 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %430, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 %431)
  %433 = load i32, i32* @RIO_WOPEN, align 4
  %434 = load %struct.Port*, %struct.Port** %8, align 8
  %435 = getelementptr inbounds %struct.Port, %struct.Port* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = or i32 %436, %433
  store i32 %437, i32* %435, align 8
  %438 = load %struct.Port*, %struct.Port** %8, align 8
  %439 = getelementptr inbounds %struct.Port, %struct.Port* %438, i32 0, i32 5
  %440 = load i64, i64* %9, align 8
  %441 = call i32 @rio_spin_unlock_irqrestore(i32* %439, i64 %440)
  %442 = load %struct.Port*, %struct.Port** %8, align 8
  %443 = load i32, i32* @HUNDRED_MS, align 4
  %444 = call i64 @RIODelay(%struct.Port* %442, i32 %443)
  %445 = load i64, i64* @RIO_FAIL, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %472

447:                                              ; preds = %429
  %448 = load %struct.Port*, %struct.Port** %8, align 8
  %449 = getelementptr inbounds %struct.Port, %struct.Port* %448, i32 0, i32 5
  %450 = load i64, i64* %9, align 8
  %451 = call i32 @rio_spin_lock_irqsave(i32* %449, i64 %450)
  %452 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %453 = load i32, i32* %6, align 4
  %454 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %452, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %453)
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %456 = load %struct.Port*, %struct.Port** %8, align 8
  %457 = load i32, i32* @RIOC_FCLOSE, align 4
  %458 = call i32 @RIOPreemptiveCmd(%struct.TYPE_12__* %455, %struct.Port* %456, i32 %457)
  %459 = load i32, i32* @RIO_WOPEN, align 4
  %460 = xor i32 %459, -1
  %461 = load %struct.Port*, %struct.Port** %8, align 8
  %462 = getelementptr inbounds %struct.Port, %struct.Port* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 8
  %464 = and i32 %463, %460
  store i32 %464, i32* %462, align 8
  %465 = load %struct.Port*, %struct.Port** %8, align 8
  %466 = getelementptr inbounds %struct.Port, %struct.Port* %465, i32 0, i32 5
  %467 = load i64, i64* %9, align 8
  %468 = call i32 @rio_spin_unlock_irqrestore(i32* %466, i64 %467)
  %469 = call i32 (...) @func_exit()
  %470 = load i32, i32* @EINTR, align 4
  %471 = sub nsw i32 0, %470
  store i32 %471, i32* %3, align 4
  br label %523

472:                                              ; preds = %429
  %473 = load %struct.Port*, %struct.Port** %8, align 8
  %474 = getelementptr inbounds %struct.Port, %struct.Port* %473, i32 0, i32 5
  %475 = load i64, i64* %9, align 8
  %476 = call i32 @rio_spin_lock_irqsave(i32* %474, i64 %475)
  br label %407

477:                                              ; preds = %427
  %478 = load i32, i32* @RIO_WOPEN, align 4
  %479 = xor i32 %478, -1
  %480 = load %struct.Port*, %struct.Port** %8, align 8
  %481 = getelementptr inbounds %struct.Port, %struct.Port* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 8
  %483 = and i32 %482, %479
  store i32 %483, i32* %481, align 8
  br label %484

484:                                              ; preds = %477, %392
  %485 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %484
  br label %361

490:                                              ; preds = %484
  %491 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %492 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %491, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %493 = load i32, i32* @RIO_MOPEN, align 4
  %494 = load %struct.Port*, %struct.Port** %8, align 8
  %495 = getelementptr inbounds %struct.Port, %struct.Port* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 8
  %497 = or i32 %496, %493
  store i32 %497, i32* %495, align 8
  %498 = load %struct.TYPE_12__*, %struct.TYPE_12__** @p, align 8
  %499 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %503

502:                                              ; preds = %490
  br label %361

503:                                              ; preds = %490
  %504 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %505 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %504, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0))
  %506 = load %struct.Port*, %struct.Port** %8, align 8
  %507 = getelementptr inbounds %struct.Port, %struct.Port* %506, i32 0, i32 7
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %503
  %511 = load %struct.Port*, %struct.Port** %8, align 8
  %512 = getelementptr inbounds %struct.Port, %struct.Port* %511, i32 0, i32 6
  %513 = load i32, i32* %512, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %512, align 4
  br label %515

515:                                              ; preds = %510, %503
  %516 = load %struct.Port*, %struct.Port** %8, align 8
  %517 = getelementptr inbounds %struct.Port, %struct.Port* %516, i32 0, i32 5
  %518 = load i64, i64* %9, align 8
  %519 = call i32 @rio_spin_unlock_irqrestore(i32* %517, i64 %518)
  %520 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %521 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  %522 = call i32 (...) @func_exit()
  store i32 0, i32* %3, align 4
  br label %523

523:                                              ; preds = %515, %447, %361, %338, %244, %167, %157, %145, %115, %96, %64, %42, %20
  %524 = load i32, i32* %3, align 4
  ret i32 %524
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @rio_minor(%struct.tty_struct*) #1

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i32 @gs_init_port(%struct.TYPE_13__*) #1

declare dso_local i64 @RIODelay(%struct.Port*, i32) #1

declare dso_local i32 @rio_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @RIOPreemptiveCmd(%struct.TYPE_12__*, %struct.Port*, i32) #1

declare dso_local i32 @rio_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @RIOParam(%struct.Port*, i32, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
