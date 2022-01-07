; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_unit_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_unit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tape_request = type { i64, i32 }
%struct.irb = type { i64 }
%struct.tape_3590_sense = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unit Check: RQC = %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"(%08x): Backward at Beginning of Partition\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"(%08x): Forward at End of Partition\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"(%08x): End of Data Mark\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"(%08x): Rewind Unload initiated\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"(%08x): Rewind Unload complete\0A\00", align 1
@MS_UNLOADED = common dso_local global i32 0, align 4
@TO_CRYPT_OFF = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"(%08x): LONG BUSY\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"(%08x): Crypto LONG BUSY\0A\00", align 1
@EMEDIUMTYPE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"A different host has privileged access to the tape unit\0A\00", align 1
@TO_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_3590_unit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_unit_check(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tape_device*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.irb*, align 8
  %8 = alloca %struct.tape_3590_sense*, align 8
  %9 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %5, align 8
  store %struct.tape_request* %1, %struct.tape_request** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  %10 = load %struct.irb*, %struct.irb** %7, align 8
  %11 = getelementptr inbounds %struct.irb, %struct.irb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.tape_3590_sense*
  store %struct.tape_3590_sense* %13, %struct.tape_3590_sense** %8, align 8
  %14 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %8, align 8
  %15 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %8, align 8
  %21 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %234 [
    i32 4368, label %23
    i32 8209, label %31
    i32 8752, label %39
    i32 8753, label %39
    i32 8768, label %47
    i32 12304, label %52
    i32 12306, label %63
    i32 12320, label %74
    i32 12578, label %85
    i32 12579, label %96
    i32 16400, label %111
    i32 16402, label %124
    i32 16404, label %138
    i32 20496, label %147
    i32 20512, label %180
    i32 20513, label %180
    i32 20514, label %180
    i32 20544, label %180
    i32 20545, label %180
    i32 20546, label %180
    i32 20752, label %188
    i32 20753, label %188
    i32 20768, label %195
    i32 4384, label %195
    i32 24608, label %208
    i32 32785, label %215
    i32 32787, label %222
  ]

23:                                               ; preds = %3
  %24 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %25 = load %struct.irb*, %struct.irb** %7, align 8
  %26 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %24, %struct.irb* %25)
  %27 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %28 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %29 = load %struct.irb*, %struct.irb** %7, align 8
  %30 = call i32 @tape_3590_erp_read_buf_log(%struct.tape_device* %27, %struct.tape_request* %28, %struct.irb* %29)
  store i32 %30, i32* %4, align 4
  br label %241

31:                                               ; preds = %3
  %32 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %33 = load %struct.irb*, %struct.irb** %7, align 8
  %34 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %32, %struct.irb* %33)
  %35 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %36 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %37 = load %struct.irb*, %struct.irb** %7, align 8
  %38 = call i32 @tape_3590_erp_read_alternate(%struct.tape_device* %35, %struct.tape_request* %36, %struct.irb* %37)
  store i32 %38, i32* %4, align 4
  br label %241

39:                                               ; preds = %3, %3
  %40 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %41 = load %struct.irb*, %struct.irb** %7, align 8
  %42 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %40, %struct.irb* %41)
  %43 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %44 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %45 = load %struct.irb*, %struct.irb** %7, align 8
  %46 = call i32 @tape_3590_erp_special_interrupt(%struct.tape_device* %43, %struct.tape_request* %44, %struct.irb* %45)
  store i32 %46, i32* %4, align 4
  br label %241

47:                                               ; preds = %3
  %48 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %49 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %50 = load %struct.irb*, %struct.irb** %7, align 8
  %51 = call i32 @tape_3590_crypt_error(%struct.tape_device* %48, %struct.tape_request* %49, %struct.irb* %50)
  store i32 %51, i32* %4, align 4
  br label %241

52:                                               ; preds = %3
  %53 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %54 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %58 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %59 = load %struct.irb*, %struct.irb** %7, align 8
  %60 = load i32, i32* @ENOSPC, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @tape_3590_erp_basic(%struct.tape_device* %57, %struct.tape_request* %58, %struct.irb* %59, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %241

63:                                               ; preds = %3
  %64 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %65 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %69 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %70 = load %struct.irb*, %struct.irb** %7, align 8
  %71 = load i32, i32* @ENOSPC, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @tape_3590_erp_basic(%struct.tape_device* %68, %struct.tape_request* %69, %struct.irb* %70, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %241

74:                                               ; preds = %3
  %75 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %76 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %80 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %81 = load %struct.irb*, %struct.irb** %7, align 8
  %82 = load i32, i32* @ENOSPC, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @tape_3590_erp_basic(%struct.tape_device* %79, %struct.tape_request* %80, %struct.irb* %81, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %241

85:                                               ; preds = %3
  %86 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %87 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %91 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %92 = load %struct.irb*, %struct.irb** %7, align 8
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  %95 = call i32 @tape_3590_erp_basic(%struct.tape_device* %90, %struct.tape_request* %91, %struct.irb* %92, i32 %94)
  store i32 %95, i32* %4, align 4
  br label %241

96:                                               ; preds = %3
  %97 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %98 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %102 = load i32, i32* @MS_UNLOADED, align 4
  %103 = call i32 @tape_med_state_set(%struct.tape_device* %101, i32 %102)
  %104 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %105 = load i32, i32* @TO_CRYPT_OFF, align 4
  %106 = call i32 @tape_3590_schedule_work(%struct.tape_device* %104, i32 %105)
  %107 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %108 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %109 = load %struct.irb*, %struct.irb** %7, align 8
  %110 = call i32 @tape_3590_erp_basic(%struct.tape_device* %107, %struct.tape_request* %108, %struct.irb* %109, i32 0)
  store i32 %110, i32* %4, align 4
  br label %241

111:                                              ; preds = %3
  %112 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %113 = load i32, i32* @MS_UNLOADED, align 4
  %114 = call i32 @tape_med_state_set(%struct.tape_device* %112, i32 %113)
  %115 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %116 = load i32, i32* @TO_CRYPT_OFF, align 4
  %117 = call i32 @tape_3590_schedule_work(%struct.tape_device* %115, i32 %116)
  %118 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %119 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %120 = load %struct.irb*, %struct.irb** %7, align 8
  %121 = load i32, i32* @ENOMEDIUM, align 4
  %122 = sub nsw i32 0, %121
  %123 = call i32 @tape_3590_erp_basic(%struct.tape_device* %118, %struct.tape_request* %119, %struct.irb* %120, i32 %122)
  store i32 %123, i32* %4, align 4
  br label %241

124:                                              ; preds = %3
  %125 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %126 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  %129 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %130 = load %struct.irb*, %struct.irb** %7, align 8
  %131 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %129, %struct.irb* %130)
  %132 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %133 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %134 = load %struct.irb*, %struct.irb** %7, align 8
  %135 = load i32, i32* @EBUSY, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 @tape_3590_erp_basic(%struct.tape_device* %132, %struct.tape_request* %133, %struct.irb* %134, i32 %136)
  store i32 %137, i32* %4, align 4
  br label %241

138:                                              ; preds = %3
  %139 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %140 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  %143 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %144 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %145 = load %struct.irb*, %struct.irb** %7, align 8
  %146 = call i32 @tape_3590_erp_long_busy(%struct.tape_device* %143, %struct.tape_request* %144, %struct.irb* %145)
  store i32 %146, i32* %4, align 4
  br label %241

147:                                              ; preds = %3
  %148 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %8, align 8
  %149 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 208
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %154 = load %struct.irb*, %struct.irb** %7, align 8
  %155 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %153, %struct.irb* %154)
  %156 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %157 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %158 = load %struct.irb*, %struct.irb** %7, align 8
  %159 = call i32 @tape_3590_erp_swap(%struct.tape_device* %156, %struct.tape_request* %157, %struct.irb* %158)
  store i32 %159, i32* %4, align 4
  br label %241

160:                                              ; preds = %147
  %161 = load %struct.tape_3590_sense*, %struct.tape_3590_sense** %8, align 8
  %162 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 38
  br i1 %164, label %165, label %173

165:                                              ; preds = %160
  %166 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %167 = load %struct.irb*, %struct.irb** %7, align 8
  %168 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %166, %struct.irb* %167)
  %169 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %170 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %171 = load %struct.irb*, %struct.irb** %7, align 8
  %172 = call i32 @tape_3590_erp_read_opposite(%struct.tape_device* %169, %struct.tape_request* %170, %struct.irb* %171)
  store i32 %172, i32* %4, align 4
  br label %241

173:                                              ; preds = %160
  %174 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %175 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %176 = load %struct.irb*, %struct.irb** %7, align 8
  %177 = load i32, i32* @EIO, align 4
  %178 = sub nsw i32 0, %177
  %179 = call i32 @tape_3590_erp_basic(%struct.tape_device* %174, %struct.tape_request* %175, %struct.irb* %176, i32 %178)
  store i32 %179, i32* %4, align 4
  br label %241

180:                                              ; preds = %3, %3, %3, %3, %3, %3
  %181 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %182 = load %struct.irb*, %struct.irb** %7, align 8
  %183 = call i32 @tape_3590_print_era_msg(%struct.tape_device* %181, %struct.irb* %182)
  %184 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %185 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %186 = load %struct.irb*, %struct.irb** %7, align 8
  %187 = call i32 @tape_3590_erp_swap(%struct.tape_device* %184, %struct.tape_request* %185, %struct.irb* %186)
  store i32 %187, i32* %4, align 4
  br label %241

188:                                              ; preds = %3, %3
  %189 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %190 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %191 = load %struct.irb*, %struct.irb** %7, align 8
  %192 = load i32, i32* @EMEDIUMTYPE, align 4
  %193 = sub nsw i32 0, %192
  %194 = call i32 @tape_3590_erp_basic(%struct.tape_device* %189, %struct.tape_request* %190, %struct.irb* %191, i32 %193)
  store i32 %194, i32* %4, align 4
  br label %241

195:                                              ; preds = %3, %3
  %196 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %197 = load i32, i32* @MS_UNLOADED, align 4
  %198 = call i32 @tape_med_state_set(%struct.tape_device* %196, i32 %197)
  %199 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %200 = load i32, i32* @TO_CRYPT_OFF, align 4
  %201 = call i32 @tape_3590_schedule_work(%struct.tape_device* %199, i32 %200)
  %202 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %203 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %204 = load %struct.irb*, %struct.irb** %7, align 8
  %205 = load i32, i32* @ENOMEDIUM, align 4
  %206 = sub nsw i32 0, %205
  %207 = call i32 @tape_3590_erp_basic(%struct.tape_device* %202, %struct.tape_request* %203, %struct.irb* %204, i32 %206)
  store i32 %207, i32* %4, align 4
  br label %241

208:                                              ; preds = %3
  %209 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %210 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %211 = load %struct.irb*, %struct.irb** %7, align 8
  %212 = load i32, i32* @EMEDIUMTYPE, align 4
  %213 = sub nsw i32 0, %212
  %214 = call i32 @tape_3590_erp_basic(%struct.tape_device* %209, %struct.tape_request* %210, %struct.irb* %211, i32 %213)
  store i32 %214, i32* %4, align 4
  br label %241

215:                                              ; preds = %3
  %216 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %217 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %218 = load %struct.irb*, %struct.irb** %7, align 8
  %219 = load i32, i32* @EPERM, align 4
  %220 = sub nsw i32 0, %219
  %221 = call i32 @tape_3590_erp_basic(%struct.tape_device* %216, %struct.tape_request* %217, %struct.irb* %218, i32 %220)
  store i32 %221, i32* %4, align 4
  br label %241

222:                                              ; preds = %3
  %223 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %224 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %223, i32 0, i32 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = call i32 @dev_warn(i32* %226, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %228 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %229 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %230 = load %struct.irb*, %struct.irb** %7, align 8
  %231 = load i32, i32* @EPERM, align 4
  %232 = sub nsw i32 0, %231
  %233 = call i32 @tape_3590_erp_basic(%struct.tape_device* %228, %struct.tape_request* %229, %struct.irb* %230, i32 %232)
  store i32 %233, i32* %4, align 4
  br label %241

234:                                              ; preds = %3
  %235 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %236 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %237 = load %struct.irb*, %struct.irb** %7, align 8
  %238 = load i32, i32* @EIO, align 4
  %239 = sub nsw i32 0, %238
  %240 = call i32 @tape_3590_erp_basic(%struct.tape_device* %235, %struct.tape_request* %236, %struct.irb* %237, i32 %239)
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %234, %222, %215, %208, %195, %188, %180, %173, %165, %152, %138, %124, %111, %96, %85, %74, %63, %52, %47, %39, %31, %23
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local i32 @tape_3590_print_era_msg(%struct.tape_device*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_read_buf_log(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_read_alternate(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_special_interrupt(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_crypt_error(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_basic(%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32) #1

declare dso_local i32 @tape_med_state_set(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_3590_schedule_work(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_3590_erp_long_busy(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_swap(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_erp_read_opposite(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
