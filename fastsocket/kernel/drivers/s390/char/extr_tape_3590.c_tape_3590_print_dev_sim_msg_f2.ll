; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_print_dev_sim_msg_f2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_print_dev_sim_msg_f2.c"
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
@.str.1 = private unnamed_addr constant [37 x i8] c"DV Exception - no performance impact\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"DV Exception on channel interface 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"DV Exception on loader 0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"DV Exception on message display 0x%02x\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"DV Exception in tape path\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"DV Exception in drive\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Repair impact is unknown\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Repair will not impact device performance\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Repair will disable channel path 0x%x on DV\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Repair will disable channel path (0x%x-0x%x) on DV\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Repair will disable interface 0x%x on DV\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Repair will disable interfaces (0x%x-0x%x) on DV\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Repair will disable loader 0x%x on DV\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Repair will disable loader (0x%x-0x%x) on DV\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"Repair will disable access to DV\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Repair will disable message display 0x%x on DV\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Repair will disable message displays (0x%x-0x%x) on DV\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Clean DV\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"Device subsystem information: exception %s, service %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tape_device*, %struct.irb*)* @tape_3590_print_dev_sim_msg_f2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tape_3590_print_dev_sim_msg_f2(%struct.tape_device* %0, %struct.irb* %1) #0 {
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
  br label %275

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
  switch i32 %29, label %79 [
    i32 1, label %30
    i32 2, label %34
    i32 3, label %38
    i32 4, label %49
    i32 5, label %60
    i32 6, label %71
    i32 7, label %75
  ]

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @BUFSIZE, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %88

34:                                               ; preds = %20
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @BUFSIZE, align 4
  %37 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %88

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
  br label %88

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
  %59 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %88

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
  %70 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %61, i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %88

71:                                               ; preds = %20
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* @BUFSIZE, align 4
  %74 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %72, i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %88

75:                                               ; preds = %20
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* @BUFSIZE, align 4
  %78 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %76, i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %88

79:                                               ; preds = %20
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* @BUFSIZE, align 4
  %82 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %83 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %79, %75, %71, %60, %49, %38, %34, %30
  %89 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %90 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %258 [
    i32 1, label %94
    i32 2, label %98
    i32 3, label %102
    i32 4, label %139
    i32 5, label %176
    i32 7, label %213
    i32 8, label %217
    i32 9, label %254
  ]

94:                                               ; preds = %88
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* @BUFSIZE, align 4
  %97 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %95, i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %267

98:                                               ; preds = %88
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* @BUFSIZE, align 4
  %101 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %99, i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %267

102:                                              ; preds = %88
  %103 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %104 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %102
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* @BUFSIZE, align 4
  %112 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %113 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %110, i32 %111, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %118)
  br label %138

120:                                              ; preds = %102
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* @BUFSIZE, align 4
  %123 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %124 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %131 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %121, i32 %122, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %129, i32 %136)
  br label %138

138:                                              ; preds = %120, %109
  br label %267

139:                                              ; preds = %88
  %140 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %141 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %139
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* @BUFSIZE, align 4
  %149 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %150 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %147, i32 %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %155)
  br label %175

157:                                              ; preds = %139
  %158 = load i8*, i8** %7, align 8
  %159 = load i32, i32* @BUFSIZE, align 4
  %160 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %161 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %168 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %158, i32 %159, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %166, i32 %173)
  br label %175

175:                                              ; preds = %157, %146
  br label %267

176:                                              ; preds = %88
  %177 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %178 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %176
  %184 = load i8*, i8** %7, align 8
  %185 = load i32, i32* @BUFSIZE, align 4
  %186 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %187 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %184, i32 %185, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %192)
  br label %212

194:                                              ; preds = %176
  %195 = load i8*, i8** %7, align 8
  %196 = load i32, i32* @BUFSIZE, align 4
  %197 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %198 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %205 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %195, i32 %196, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 %203, i32 %210)
  br label %212

212:                                              ; preds = %194, %183
  br label %267

213:                                              ; preds = %88
  %214 = load i8*, i8** %7, align 8
  %215 = load i32, i32* @BUFSIZE, align 4
  %216 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %214, i32 %215, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  br label %267

217:                                              ; preds = %88
  %218 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %219 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %217
  %225 = load i8*, i8** %7, align 8
  %226 = load i32, i32* @BUFSIZE, align 4
  %227 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %228 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %225, i32 %226, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i32 %233)
  br label %253

235:                                              ; preds = %217
  %236 = load i8*, i8** %7, align 8
  %237 = load i32, i32* @BUFSIZE, align 4
  %238 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %239 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %246 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %236, i32 %237, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i32 %244, i32 %251)
  br label %253

253:                                              ; preds = %235, %224
  br label %267

254:                                              ; preds = %88
  %255 = load i8*, i8** %7, align 8
  %256 = load i32, i32* @BUFSIZE, align 4
  %257 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %255, i32 %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  br label %267

258:                                              ; preds = %88
  %259 = load i8*, i8** %7, align 8
  %260 = load i32, i32* @BUFSIZE, align 4
  %261 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %5, align 8
  %262 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %259, i32 %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %258, %254, %253, %213, %212, %175, %138, %98, %94
  %268 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %269 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %268, i32 0, i32 0
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i8*, i8** %6, align 8
  %273 = load i8*, i8** %7, align 8
  %274 = call i32 @dev_warn(i32* %271, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i8* %272, i8* %273)
  br label %275

275:                                              ; preds = %267, %19
  %276 = load i8*, i8** %6, align 8
  %277 = call i32 @kfree(i8* %276)
  %278 = load i8*, i8** %7, align 8
  %279 = call i32 @kfree(i8* %278)
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
