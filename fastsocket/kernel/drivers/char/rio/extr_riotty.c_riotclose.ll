; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riotty.c_riotclose.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riotty.c_riotclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.Port = type { i32, i64, i64, i64, i32, i32, i32, i64, i32, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@RIO_DEBUG_TTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"port close SysPort %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Port is at address %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"TTY is at address %p\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@RIO_CLOSING = common dso_local global i32 0, align 4
@RIO_DELETED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Close on deleted RTA\0A\00", align 1
@p = common dso_local global %struct.TYPE_8__* null, align 8
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Clear bits\0A\00", align 1
@RIO_MOPEN = common dso_local global i32 0, align 4
@RIO_CARR_ON = common dso_local global i32 0, align 4
@RIOC_MSVR1_CD = common dso_local global i32 0, align 4
@RIO_LOPEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Channel %d still open !\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Closing down - everything must go!\0A\00", align 1
@RIO_DYNOROD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Timeout 1 starts\0A\00", align 1
@NOT_INUSE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Waiting for not idle closed broken by signal\0A\00", align 1
@RIOC_FCLOSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"Calling timeout to flush in closing\0A\00", align 1
@HUNDRED_MS = common dso_local global i32 0, align 4
@RIO_FAIL = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"RTA EINTR in delay \0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Channel %d re-open!\0A\00", align 1
@RIOC_CLOSE = common dso_local global i32 0, align 4
@PORT_ISOPEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"Run out of tries - force the bugger shut!\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Close: PortState:ISOPEN is %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Close: try was %d on completion\0A\00", align 1
@RIO_CTSFLOW = common dso_local global i32 0, align 4
@RIO_RTSFLOW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"Return from close\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @riotclose(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tty_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.Port*
  store %struct.Port* %13, %struct.Port** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %15 = load %struct.Port*, %struct.Port** %4, align 8
  %16 = getelementptr inbounds %struct.Port, %struct.Port* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %20 = load %struct.Port*, %struct.Port** %4, align 8
  %21 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.Port* %20)
  %22 = load %struct.Port*, %struct.Port** %4, align 8
  %23 = getelementptr inbounds %struct.Port, %struct.Port* %22, i32 0, i32 12
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.tty_struct*, %struct.tty_struct** %25, align 8
  store %struct.tty_struct* %26, %struct.tty_struct** %9, align 8
  %27 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %28 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %29 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.tty_struct* %28)
  %30 = load %struct.Port*, %struct.Port** %4, align 8
  %31 = getelementptr inbounds %struct.Port, %struct.Port* %30, i32 0, i32 12
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load i64, i64* @jiffies, align 8
  %37 = load %struct.Port*, %struct.Port** %4, align 8
  %38 = getelementptr inbounds %struct.Port, %struct.Port* %37, i32 0, i32 12
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %36, %40
  store i64 %41, i64* %8, align 8
  br label %46

42:                                               ; preds = %1
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.Port*, %struct.Port** %4, align 8
  %48 = getelementptr inbounds %struct.Port, %struct.Port* %47, i32 0, i32 6
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @rio_spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load i32, i32* @RIO_CLOSING, align 4
  %52 = load %struct.Port*, %struct.Port** %4, align 8
  %53 = getelementptr inbounds %struct.Port, %struct.Port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.Port*, %struct.Port** %4, align 8
  %57 = getelementptr inbounds %struct.Port, %struct.Port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RIO_DELETED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %64 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %46
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.Port*, %struct.Port** %4, align 8
  %72 = call i32 @RIOClearUp(%struct.Port* %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %369

75:                                               ; preds = %65
  %76 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %77 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @RIO_MOPEN, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.Port*, %struct.Port** %4, align 8
  %81 = getelementptr inbounds %struct.Port, %struct.Port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @RIO_CARR_ON, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.Port*, %struct.Port** %4, align 8
  %87 = getelementptr inbounds %struct.Port, %struct.Port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* @RIOC_MSVR1_CD, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.Port*, %struct.Port** %4, align 8
  %93 = getelementptr inbounds %struct.Port, %struct.Port* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.Port*, %struct.Port** %4, align 8
  %97 = getelementptr inbounds %struct.Port, %struct.Port* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RIO_LOPEN, align 4
  %100 = load i32, i32* @RIO_MOPEN, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %75
  %105 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %106 = load %struct.Port*, %struct.Port** %4, align 8
  %107 = getelementptr inbounds %struct.Port, %struct.Port* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @RIO_CLOSING, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.Port*, %struct.Port** %4, align 8
  %113 = getelementptr inbounds %struct.Port, %struct.Port* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.Port*, %struct.Port** %4, align 8
  %117 = getelementptr inbounds %struct.Port, %struct.Port* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %104
  %121 = load %struct.Port*, %struct.Port** %4, align 8
  %122 = getelementptr inbounds %struct.Port, %struct.Port* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, -1
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %120, %104
  %126 = load %struct.Port*, %struct.Port** %4, align 8
  %127 = getelementptr inbounds %struct.Port, %struct.Port* %126, i32 0, i32 6
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @rio_spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %395

132:                                              ; preds = %75
  %133 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %134 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %133, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* @RIO_DYNOROD, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.Port*, %struct.Port** %4, align 8
  %138 = getelementptr inbounds %struct.Port, %struct.Port* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %142 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %208, label %145

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %202, %145
  %147 = load %struct.Port*, %struct.Port** %4, align 8
  %148 = getelementptr inbounds %struct.Port, %struct.Port* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @NOT_INUSE, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %146
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %152
  %158 = load %struct.Port*, %struct.Port** %4, align 8
  %159 = getelementptr inbounds %struct.Port, %struct.Port* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.Port*, %struct.Port** %4, align 8
  %162 = getelementptr inbounds %struct.Port, %struct.Port* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %160, %163
  br label %165

165:                                              ; preds = %157, %152, %146
  %166 = phi i1 [ false, %152 ], [ false, %146 ], [ %164, %157 ]
  br i1 %166, label %167, label %207

167:                                              ; preds = %165
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %7, align 4
  %170 = icmp sle i32 %168, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load i32, i32* @EINTR, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %175 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %174, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p, align 8
  %177 = load %struct.Port*, %struct.Port** %4, align 8
  %178 = load i32, i32* @RIOC_FCLOSE, align 4
  %179 = call i32 @RIOPreemptiveCmd(%struct.TYPE_8__* %176, %struct.Port* %177, i32 %178)
  br label %369

180:                                              ; preds = %167
  %181 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %182 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %183 = load %struct.Port*, %struct.Port** %4, align 8
  %184 = getelementptr inbounds %struct.Port, %struct.Port* %183, i32 0, i32 6
  %185 = load i64, i64* %10, align 8
  %186 = call i32 @rio_spin_unlock_irqrestore(i32* %184, i64 %185)
  %187 = load %struct.Port*, %struct.Port** %4, align 8
  %188 = load i32, i32* @HUNDRED_MS, align 4
  %189 = mul nsw i32 %188, 10
  %190 = call i64 @RIODelay_ni(%struct.Port* %187, i32 %189)
  %191 = load i64, i64* @RIO_FAIL, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %180
  %194 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %195 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %194, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %196 = load i32, i32* @EINTR, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %11, align 4
  %198 = load %struct.Port*, %struct.Port** %4, align 8
  %199 = getelementptr inbounds %struct.Port, %struct.Port* %198, i32 0, i32 6
  %200 = load i64, i64* %10, align 8
  %201 = call i32 @rio_spin_lock_irqsave(i32* %199, i64 %200)
  br label %369

202:                                              ; preds = %180
  %203 = load %struct.Port*, %struct.Port** %4, align 8
  %204 = getelementptr inbounds %struct.Port, %struct.Port* %203, i32 0, i32 6
  %205 = load i64, i64* %10, align 8
  %206 = call i32 @rio_spin_lock_irqsave(i32* %204, i64 %205)
  br label %146

207:                                              ; preds = %165
  br label %208

208:                                              ; preds = %207, %132
  %209 = load %struct.Port*, %struct.Port** %4, align 8
  %210 = getelementptr inbounds %struct.Port, %struct.Port* %209, i32 0, i32 3
  store i64 0, i64* %210, align 8
  %211 = load %struct.Port*, %struct.Port** %4, align 8
  %212 = getelementptr inbounds %struct.Port, %struct.Port* %211, i32 0, i32 2
  store i64 0, i64* %212, align 8
  store i32 255, i32* %7, align 4
  %213 = load %struct.Port*, %struct.Port** %4, align 8
  %214 = getelementptr inbounds %struct.Port, %struct.Port* %213, i32 0, i32 1
  store i64 0, i64* %214, align 8
  %215 = load %struct.Port*, %struct.Port** %4, align 8
  %216 = getelementptr inbounds %struct.Port, %struct.Port* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @RIO_LOPEN, align 4
  %219 = load i32, i32* @RIO_MOPEN, align 4
  %220 = or i32 %218, %219
  %221 = and i32 %217, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %251

223:                                              ; preds = %208
  %224 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %225 = load %struct.Port*, %struct.Port** %4, align 8
  %226 = getelementptr inbounds %struct.Port, %struct.Port* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %224, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @RIO_CLOSING, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.Port*, %struct.Port** %4, align 8
  %232 = getelementptr inbounds %struct.Port, %struct.Port* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.Port*, %struct.Port** %4, align 8
  %236 = getelementptr inbounds %struct.Port, %struct.Port* %235, i32 0, i32 6
  %237 = load i64, i64* %10, align 8
  %238 = call i32 @rio_spin_unlock_irqrestore(i32* %236, i64 %237)
  %239 = load %struct.Port*, %struct.Port** %4, align 8
  %240 = getelementptr inbounds %struct.Port, %struct.Port* %239, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %223
  %244 = load %struct.Port*, %struct.Port** %4, align 8
  %245 = getelementptr inbounds %struct.Port, %struct.Port* %244, i32 0, i32 7
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %246, -1
  store i64 %247, i64* %245, align 8
  br label %248

248:                                              ; preds = %243, %223
  %249 = load i32, i32* @EIO, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %2, align 4
  br label %395

251:                                              ; preds = %208
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = load %struct.Port*, %struct.Port** %4, align 8
  %258 = call i32 @RIOClearUp(%struct.Port* %257)
  br label %369

259:                                              ; preds = %251
  %260 = load %struct.Port*, %struct.Port** %4, align 8
  %261 = getelementptr inbounds %struct.Port, %struct.Port* %260, i32 0, i32 6
  %262 = load i64, i64* %10, align 8
  %263 = call i32 @rio_spin_unlock_irqrestore(i32* %261, i64 %262)
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p, align 8
  %265 = load %struct.Port*, %struct.Port** %4, align 8
  %266 = load i32, i32* @RIOC_CLOSE, align 4
  %267 = call i64 @RIOShortCommand(%struct.TYPE_8__* %264, %struct.Port* %265, i32 %266, i32 1, i32 0)
  %268 = load i64, i64* @RIO_FAIL, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %279

270:                                              ; preds = %259
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p, align 8
  %272 = load %struct.Port*, %struct.Port** %4, align 8
  %273 = load i32, i32* @RIOC_FCLOSE, align 4
  %274 = call i32 @RIOPreemptiveCmd(%struct.TYPE_8__* %271, %struct.Port* %272, i32 %273)
  %275 = load %struct.Port*, %struct.Port** %4, align 8
  %276 = getelementptr inbounds %struct.Port, %struct.Port* %275, i32 0, i32 6
  %277 = load i64, i64* %10, align 8
  %278 = call i32 @rio_spin_lock_irqsave(i32* %276, i64 %277)
  br label %369

279:                                              ; preds = %259
  %280 = load i32, i32* %5, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %343, label %282

282:                                              ; preds = %279
  br label %283

283:                                              ; preds = %341, %282
  %284 = load i32, i32* %6, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %283
  %287 = load %struct.Port*, %struct.Port** %4, align 8
  %288 = getelementptr inbounds %struct.Port, %struct.Port* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @PORT_ISOPEN, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br label %293

293:                                              ; preds = %286, %283
  %294 = phi i1 [ false, %283 ], [ %292, %286 ]
  br i1 %294, label %295, label %342

295:                                              ; preds = %293
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %6, align 4
  %298 = load i64, i64* @jiffies, align 8
  %299 = load i64, i64* %8, align 8
  %300 = call i64 @time_after(i64 %298, i64 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %309

302:                                              ; preds = %295
  %303 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %304 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %303, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p, align 8
  %306 = load %struct.Port*, %struct.Port** %4, align 8
  %307 = load i32, i32* @RIOC_FCLOSE, align 4
  %308 = call i32 @RIOPreemptiveCmd(%struct.TYPE_8__* %305, %struct.Port* %306, i32 %307)
  br label %342

309:                                              ; preds = %295
  %310 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %311 = load %struct.Port*, %struct.Port** %4, align 8
  %312 = getelementptr inbounds %struct.Port, %struct.Port* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @PORT_ISOPEN, align 4
  %315 = and i32 %313, %314
  %316 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %310, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %315)
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %309
  %322 = load %struct.Port*, %struct.Port** %4, align 8
  %323 = call i32 @RIOClearUp(%struct.Port* %322)
  %324 = load %struct.Port*, %struct.Port** %4, align 8
  %325 = getelementptr inbounds %struct.Port, %struct.Port* %324, i32 0, i32 6
  %326 = load i64, i64* %10, align 8
  %327 = call i32 @rio_spin_lock_irqsave(i32* %325, i64 %326)
  br label %369

328:                                              ; preds = %309
  %329 = load %struct.Port*, %struct.Port** %4, align 8
  %330 = load i32, i32* @HUNDRED_MS, align 4
  %331 = call i64 @RIODelay(%struct.Port* %329, i32 %330)
  %332 = load i64, i64* @RIO_FAIL, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %341

334:                                              ; preds = %328
  %335 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %336 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %335, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** @p, align 8
  %338 = load %struct.Port*, %struct.Port** %4, align 8
  %339 = load i32, i32* @RIOC_FCLOSE, align 4
  %340 = call i32 @RIOPreemptiveCmd(%struct.TYPE_8__* %337, %struct.Port* %338, i32 %339)
  br label %342

341:                                              ; preds = %328
  br label %283

342:                                              ; preds = %334, %302, %293
  br label %343

343:                                              ; preds = %342, %279
  %344 = load %struct.Port*, %struct.Port** %4, align 8
  %345 = getelementptr inbounds %struct.Port, %struct.Port* %344, i32 0, i32 6
  %346 = load i64, i64* %10, align 8
  %347 = call i32 @rio_spin_lock_irqsave(i32* %345, i64 %346)
  %348 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %349 = load i32, i32* %6, align 4
  %350 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %348, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %349)
  %351 = load i32, i32* @RIO_CTSFLOW, align 4
  %352 = load i32, i32* @RIO_RTSFLOW, align 4
  %353 = or i32 %351, %352
  %354 = xor i32 %353, -1
  %355 = load %struct.Port*, %struct.Port** %4, align 8
  %356 = getelementptr inbounds %struct.Port, %struct.Port* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = and i32 %357, %354
  store i32 %358, i32* %356, align 4
  %359 = load %struct.Port*, %struct.Port** %4, align 8
  %360 = getelementptr inbounds %struct.Port, %struct.Port* %359, i32 0, i32 9
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %343
  %364 = load %struct.Port*, %struct.Port** %4, align 8
  %365 = getelementptr inbounds %struct.Port, %struct.Port* %364, i32 0, i32 8
  %366 = load i32, i32* %365, align 8
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %365, align 8
  br label %368

368:                                              ; preds = %363, %343
  br label %369

369:                                              ; preds = %368, %321, %270, %256, %193, %171, %70
  %370 = load i32, i32* @RIO_CLOSING, align 4
  %371 = load i32, i32* @RIO_DELETED, align 4
  %372 = or i32 %370, %371
  %373 = xor i32 %372, -1
  %374 = load %struct.Port*, %struct.Port** %4, align 8
  %375 = getelementptr inbounds %struct.Port, %struct.Port* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = and i32 %376, %373
  store i32 %377, i32* %375, align 8
  %378 = load %struct.Port*, %struct.Port** %4, align 8
  %379 = getelementptr inbounds %struct.Port, %struct.Port* %378, i32 0, i32 7
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %387

382:                                              ; preds = %369
  %383 = load %struct.Port*, %struct.Port** %4, align 8
  %384 = getelementptr inbounds %struct.Port, %struct.Port* %383, i32 0, i32 7
  %385 = load i64, i64* %384, align 8
  %386 = add nsw i64 %385, -1
  store i64 %386, i64* %384, align 8
  br label %387

387:                                              ; preds = %382, %369
  %388 = load %struct.Port*, %struct.Port** %4, align 8
  %389 = getelementptr inbounds %struct.Port, %struct.Port* %388, i32 0, i32 6
  %390 = load i64, i64* %10, align 8
  %391 = call i32 @rio_spin_unlock_irqrestore(i32* %389, i64 %390)
  %392 = load i32, i32* @RIO_DEBUG_TTY, align 4
  %393 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %394 = load i32, i32* %11, align 4
  store i32 %394, i32* %2, align 4
  br label %395

395:                                              ; preds = %387, %248, %125
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local i32 @rio_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @RIOClearUp(%struct.Port*) #1

declare dso_local i32 @rio_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @RIOPreemptiveCmd(%struct.TYPE_8__*, %struct.Port*, i32) #1

declare dso_local i64 @RIODelay_ni(%struct.Port*, i32) #1

declare dso_local i64 @RIOShortCommand(%struct.TYPE_8__*, %struct.Port*, i32, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @RIODelay(%struct.Port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
