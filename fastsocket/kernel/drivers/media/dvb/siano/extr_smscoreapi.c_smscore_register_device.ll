; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/siano/extr_smscoreapi.c_smscore_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdevice_params_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smscore_device_t = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smscore_buffer_t = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"kzalloc(...) failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"allocated %d buffers\00", align 1
@DEVICE_MODE_NONE = common dso_local global i32 0, align 4
@g_smscore_deviceslock = common dso_local global i32 0, align 4
@g_smscore_devices = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"device %p created\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smscore_register_device(%struct.smsdevice_params_t* %0, %struct.smscore_device_t** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsdevice_params_t*, align 8
  %5 = alloca %struct.smscore_device_t**, align 8
  %6 = alloca %struct.smscore_device_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.smscore_buffer_t*, align 8
  store %struct.smsdevice_params_t* %0, %struct.smsdevice_params_t** %4, align 8
  store %struct.smscore_device_t** %1, %struct.smscore_device_t*** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.smscore_device_t* @kzalloc(i32 136, i32 %9)
  store %struct.smscore_device_t* %10, %struct.smscore_device_t** %6, align 8
  %11 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %12 = icmp ne %struct.smscore_device_t* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @sms_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %210

17:                                               ; preds = %2
  %18 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %19 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %22 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %21, i32 0, i32 29
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %25 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %24, i32 0, i32 28
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %28 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %27, i32 0, i32 27
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %31 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %30, i32 0, i32 26
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %34 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %33, i32 0, i32 25
  %35 = call i32 @init_completion(i32* %34)
  %36 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %37 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %36, i32 0, i32 24
  %38 = call i32 @init_completion(i32* %37)
  %39 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %40 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %39, i32 0, i32 23
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %43 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %42, i32 0, i32 22
  %44 = call i32 @init_completion(i32* %43)
  %45 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %46 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %45, i32 0, i32 21
  %47 = call i32 @init_completion(i32* %46)
  %48 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %49 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %48, i32 0, i32 20
  %50 = call i32 @init_completion(i32* %49)
  %51 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %52 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %51, i32 0, i32 19
  %53 = call i32 @init_completion(i32* %52)
  %54 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %55 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %54, i32 0, i32 18
  %56 = call i32 @init_completion(i32* %55)
  %57 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %58 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %57, i32 0, i32 17
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %61 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %60, i32 0, i32 16
  %62 = call i32 @init_completion(i32* %61)
  %63 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %64 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %63, i32 0, i32 15
  %65 = call i32 @init_waitqueue_head(i32* %64)
  %66 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %67 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %70 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %74 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %76 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %79 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %78, i32 0, i32 13
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = load i32, i32* @GFP_DMA, align 4
  %82 = or i32 %80, %81
  %83 = call i32* @dma_alloc_coherent(i32* null, i32 %77, i32* %79, i32 %82)
  %84 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %85 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %84, i32 0, i32 14
  store i32* %83, i32** %85, align 8
  %86 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %87 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %86, i32 0, i32 14
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %17
  %91 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %92 = call i32 @smscore_unregister_device(%struct.smscore_device_t* %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %210

95:                                               ; preds = %17
  %96 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %97 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %96, i32 0, i32 14
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %7, align 8
  br label %99

99:                                               ; preds = %128, %95
  %100 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %101 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %104 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %102, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %99
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %111 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %110, i32 0, i32 14
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %114 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %113, i32 0, i32 13
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.smscore_buffer_t* @smscore_createbuffer(i32* %109, i32* %112, i32 %115)
  store %struct.smscore_buffer_t* %116, %struct.smscore_buffer_t** %8, align 8
  %117 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %8, align 8
  %118 = icmp ne %struct.smscore_buffer_t* %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %108
  %120 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %121 = call i32 @smscore_unregister_device(%struct.smscore_device_t* %120)
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %210

124:                                              ; preds = %108
  %125 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %126 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %8, align 8
  %127 = call i32 @smscore_putbuffer(%struct.smscore_device_t* %125, %struct.smscore_buffer_t* %126)
  br label %128

128:                                              ; preds = %124
  %129 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %130 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  %133 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %134 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %7, align 8
  br label %99

139:                                              ; preds = %99
  %140 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %141 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i8*, ...) @sms_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %142)
  %144 = load i32, i32* @DEVICE_MODE_NONE, align 4
  %145 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %146 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %145, i32 0, i32 12
  store i32 %144, i32* %146, align 8
  %147 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %148 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %147, i32 0, i32 11
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %151 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %150, i32 0, i32 11
  store i32 %149, i32* %151, align 4
  %152 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %153 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %152, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %156 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 8
  %157 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %158 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %161 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %160, i32 0, i32 9
  store i32 %159, i32* %161, align 4
  %162 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %163 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %166 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %165, i32 0, i32 8
  store i32 %164, i32* %166, align 8
  %167 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %168 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %171 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 4
  %172 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %173 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %176 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  %177 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %178 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %181 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 4
  %182 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %183 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %186 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 8
  %187 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %188 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %191 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @strcpy(i32 %189, i32 %192)
  %194 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %195 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.smsdevice_params_t*, %struct.smsdevice_params_t** %4, align 8
  %198 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @smscore_registry_settype(i32 %196, i32 %199)
  %201 = call i32 @kmutex_lock(i32* @g_smscore_deviceslock)
  %202 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %203 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %202, i32 0, i32 2
  %204 = call i32 @list_add(i32* %203, i32* @g_smscore_devices)
  %205 = call i32 @kmutex_unlock(i32* @g_smscore_deviceslock)
  %206 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %207 = load %struct.smscore_device_t**, %struct.smscore_device_t*** %5, align 8
  store %struct.smscore_device_t* %206, %struct.smscore_device_t** %207, align 8
  %208 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %209 = call i32 (i8*, ...) @sms_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.smscore_device_t* %208)
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %139, %119, %90, %13
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local %struct.smscore_device_t* @kzalloc(i32, i32) #1

declare dso_local i32 @sms_info(i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @smscore_unregister_device(%struct.smscore_device_t*) #1

declare dso_local %struct.smscore_buffer_t* @smscore_createbuffer(i32*, i32*, i32) #1

declare dso_local i32 @smscore_putbuffer(%struct.smscore_device_t*, %struct.smscore_buffer_t*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @smscore_registry_settype(i32, i32) #1

declare dso_local i32 @kmutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kmutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
