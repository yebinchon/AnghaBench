; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_print_io_sim_msg_f1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_print_io_sim_msg_f1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.irb = type { i64 }
%struct.tape_3590_sense = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32, i32 }

@BUFSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Effect of failure is unknown\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"CU Exception - no performance impact\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"CU Exception on channel interface 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"CU Exception on device path 0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"CU Exception on library path 0x%02x\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"CU Exception on node 0x%02x\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"CU Exception on partition 0x%02x\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Repair impact is unknown\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Repair will not impact cu performance\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Repair will disable node 0x%x on CU\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Repair will disable nodes (0x%x-0x%x) on CU\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Repair will disable channel path 0x%x on CU\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Repair will disable cannel paths (0x%x-0x%x) on CU\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Repair will disable device path 0x%x on CU\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Repair will disable device paths (0x%x-0x%x) on CU\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Repair will disable library path 0x%x on CU\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"Repair will disable library paths (0x%x-0x%x) on CU\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Repair will disable access to CU\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"I/O subsystem information: exception %s, service %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*, %struct.irb*)* @tape_3590_print_io_sim_msg_f1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_3590_print_io_sim_msg_f1(%struct.tape_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.tape_3590_sense*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %8 = load i32, i32* @BUFSIZE, align 4
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i8* @kmalloc(i32 %8, i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load i32, i32* @BUFSIZE, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call i8* @kmalloc(i32 %11, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %285

20:                                               ; preds = %16
  %21 = load %struct.irb*, %struct.irb** %4, align 8
  %22 = getelementptr inbounds %struct.irb, %struct.irb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.tape_3590_sense*
  store %struct.tape_3590_sense* %24, %struct.tape_3590_sense** %5, align 8
  %25 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %26 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %93 [
    i32 1, label %30
    i32 2, label %34
    i32 3, label %38
    i32 4, label %49
    i32 5, label %60
    i32 6, label %71
    i32 7, label %82
  ]

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @BUFSIZE, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %102

34:                                               ; preds = %20
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @BUFSIZE, align 4
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %102

38:                                               ; preds = %20
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @BUFSIZE, align 4
  %41 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %42 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %102

49:                                               ; preds = %20
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @BUFSIZE, align 4
  %52 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %53 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %102

60:                                               ; preds = %20
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @BUFSIZE, align 4
  %63 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %64 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %61, i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %102

71:                                               ; preds = %20
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* @BUFSIZE, align 4
  %74 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %75 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %72, i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %102

82:                                               ; preds = %20
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* @BUFSIZE, align 4
  %85 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %86 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %83, i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  br label %102

93:                                               ; preds = %20
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* @BUFSIZE, align 4
  %96 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %97 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %94, i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %93, %82, %71, %60, %49, %38, %34, %30
  %103 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %104 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %268 [
    i32 1, label %108
    i32 2, label %112
    i32 3, label %116
    i32 4, label %153
    i32 5, label %190
    i32 6, label %227
    i32 7, label %264
  ]

108:                                              ; preds = %102
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* @BUFSIZE, align 4
  %111 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %109, i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %277

112:                                              ; preds = %102
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* @BUFSIZE, align 4
  %115 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %113, i32 %114, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %277

116:                                              ; preds = %102
  %117 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %118 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %116
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* @BUFSIZE, align 4
  %126 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %127 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %124, i32 %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  br label %152

134:                                              ; preds = %116
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* @BUFSIZE, align 4
  %137 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %138 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %145 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %135, i32 %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %143, i32 %150)
  br label %152

152:                                              ; preds = %134, %123
  br label %277

153:                                              ; preds = %102
  %154 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %155 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %153
  %161 = load i8*, i8** %7, align 8
  %162 = load i32, i32* @BUFSIZE, align 4
  %163 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %164 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %161, i32 %162, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %169)
  br label %189

171:                                              ; preds = %153
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* @BUFSIZE, align 4
  %174 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %175 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %182 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %172, i32 %173, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %180, i32 %187)
  br label %189

189:                                              ; preds = %171, %160
  br label %277

190:                                              ; preds = %102
  %191 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %192 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %190
  %198 = load i8*, i8** %7, align 8
  %199 = load i32, i32* @BUFSIZE, align 4
  %200 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %201 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %198, i32 %199, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %206)
  br label %226

208:                                              ; preds = %190
  %209 = load i8*, i8** %7, align 8
  %210 = load i32, i32* @BUFSIZE, align 4
  %211 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %212 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %219 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %209, i32 %210, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32 %217, i32 %224)
  br label %226

226:                                              ; preds = %208, %197
  br label %277

227:                                              ; preds = %102
  %228 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %229 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %227
  %235 = load i8*, i8** %7, align 8
  %236 = load i32, i32* @BUFSIZE, align 4
  %237 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %238 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %235, i32 %236, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i32 %243)
  br label %263

245:                                              ; preds = %227
  %246 = load i8*, i8** %7, align 8
  %247 = load i32, i32* @BUFSIZE, align 4
  %248 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %249 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %256 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %246, i32 %247, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 %254, i32 %261)
  br label %263

263:                                              ; preds = %245, %234
  br label %277

264:                                              ; preds = %102
  %265 = load i8*, i8** %7, align 8
  %266 = load i32, i32* @BUFSIZE, align 4
  %267 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %265, i32 %266, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  br label %277

268:                                              ; preds = %102
  %269 = load i8*, i8** %7, align 8
  %270 = load i32, i32* @BUFSIZE, align 4
  %271 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %272 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %269, i32 %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %268, %264, %263, %226, %189, %152, %112, %108
  %278 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %279 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %278, i32 0, i32 0
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i8*, i8** %6, align 8
  %283 = load i8*, i8** %7, align 8
  %284 = call i32 @dev_warn(i32* %281, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0), i8* %282, i8* %283)
  br label %285

285:                                              ; preds = %277, %19
  %286 = load i8*, i8** %6, align 8
  %287 = call i32 @kfree(i8* %286)
  %288 = load i8*, i8** %7, align 8
  %289 = call i32 @kfree(i8* %288)
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
