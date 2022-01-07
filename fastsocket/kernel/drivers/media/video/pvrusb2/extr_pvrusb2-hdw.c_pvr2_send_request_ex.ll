; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_send_request_ex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_send_request_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i8, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_3__*, %struct.TYPE_3__*, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.timer_list = type { i64, i32, i64 }

@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Attempted to execute control transfer without lock!!\00", align 1
@EDEADLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Attempted to execute control transfer when device not ok\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Attempted to execute control transfer when USB is disconnected\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@PVR2_CTL_BUFFSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Attempted to execute %d byte control-write transfer (limit=%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Attempted to execute %d byte control-read transfer (limit=%d)\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Attempted to execute null control transfer?\00", align 1
@jiffies = common dso_local global i64 0, align 8
@pvr2_ctl_timeout = common dso_local global i32 0, align 4
@PVR2_CTL_WRITE_ENDPOINT = common dso_local global i32 0, align 4
@pvr2_ctl_write_complete = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Failed to submit write-control URB status=%d\00", align 1
@PVR2_CTL_READ_ENDPOINT = common dso_local global i32 0, align 4
@pvr2_ctl_read_complete = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Failed to submit read-control URB status=%d\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Timed out control-write\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"control-write URB failure, status=%d\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"control-write URB short, expected=%d got=%d\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"control-read URB failure, status=%d\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"control-read URB short, expected=%d got=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32, i32, i8*, i32, i8*, i32)* @pvr2_send_request_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_send_request_ex(%struct.pvr2_hdw* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timer_list, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %25 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %24, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EDEADLK, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %475

28:                                               ; preds = %7
  %29 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %30 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %38 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %37, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %475

41:                                               ; preds = %33, %28
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %48 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %47, i32 0, i32 9
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %56 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %55, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @ENOTTY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %475

60:                                               ; preds = %46
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i8*, i8** %14, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @PVR2_CTL_BUFFSIZE, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @PVR2_CTL_BUFFSIZE, align 4
  %76 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %73, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %475

79:                                               ; preds = %68
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @PVR2_CTL_BUFFSIZE, align 4
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @PVR2_CTL_BUFFSIZE, align 4
  %87 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %84, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %475

90:                                               ; preds = %79
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %98 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %475

101:                                              ; preds = %93, %90
  %102 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %103 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i8*, i8** %12, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %111 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %110, i32 0, i32 1
  store i8 %109, i8* %111, align 4
  br label %115

112:                                              ; preds = %101
  %113 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %114 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %113, i32 0, i32 1
  store i8 0, i8* %114, align 4
  br label %115

115:                                              ; preds = %112, %106
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %118 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %121 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %123 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %122, i32 0, i32 11
  %124 = call i32 @init_completion(i32* %123)
  %125 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %126 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %125, i32 0, i32 10
  store i64 0, i64* %126, align 8
  %127 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %128 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %127, i32 0, i32 4
  store i32 0, i32* %128, align 8
  %129 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %130 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %129, i32 0, i32 5
  store i32 0, i32* %130, align 4
  %131 = call i32 @init_timer(%struct.timer_list* %18)
  %132 = load i64, i64* @jiffies, align 8
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %18, i32 0, i32 2
  store i64 %135, i64* %136, align 8
  %137 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %138 = ptrtoint %struct.pvr2_hdw* %137 to i64
  %139 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %18, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = load i32, i32* @pvr2_ctl_timeout, align 4
  %141 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %18, i32 0, i32 1
  store i32 %140, i32* %141, align 8
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %205

144:                                              ; preds = %115
  %145 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %146 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %145, i32 0, i32 0
  store i32 2, i32* %146, align 8
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %163, %144
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %147
  %152 = load i8*, i8** %12, align 8
  %153 = load i32, i32* %16, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %158 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %157, i32 0, i32 6
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %16, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8 %156, i8* %162, align 1
  br label %163

163:                                              ; preds = %151
  %164 = load i32, i32* %16, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %16, align 4
  br label %147

166:                                              ; preds = %147
  %167 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %168 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %167, i32 0, i32 9
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %171 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %170, i32 0, i32 12
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %174 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @PVR2_CTL_WRITE_ENDPOINT, align 4
  %177 = call i32 @usb_sndbulkpipe(i32 %175, i32 %176)
  %178 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %179 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %178, i32 0, i32 6
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @pvr2_ctl_write_complete, align 4
  %183 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %184 = call i32 @usb_fill_bulk_urb(%struct.TYPE_3__* %169, i32 %172, i32 %177, i8* %180, i32 %181, i32 %182, %struct.pvr2_hdw* %183)
  %185 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %186 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %185, i32 0, i32 9
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  store i32 0, i32* %188, align 4
  %189 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %190 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %189, i32 0, i32 4
  store i32 1, i32* %190, align 8
  %191 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %192 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %191, i32 0, i32 9
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = load i32, i32* @GFP_KERNEL, align 4
  %195 = call i32 @usb_submit_urb(%struct.TYPE_3__* %193, i32 %194)
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %166
  %199 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %200 = load i32, i32* %17, align 4
  %201 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %199, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %200)
  %202 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %203 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %202, i32 0, i32 4
  store i32 0, i32* %203, align 8
  br label %462

204:                                              ; preds = %166
  br label %205

205:                                              ; preds = %204, %115
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %254

208:                                              ; preds = %205
  %209 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %210 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %209, i32 0, i32 0
  store i32 3, i32* %210, align 8
  %211 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %212 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %211, i32 0, i32 7
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %15, align 4
  %215 = call i32 @memset(i8* %213, i32 67, i32 %214)
  %216 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %217 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %216, i32 0, i32 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %217, align 8
  %219 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %220 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %219, i32 0, i32 12
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %223 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %222, i32 0, i32 12
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @PVR2_CTL_READ_ENDPOINT, align 4
  %226 = call i32 @usb_rcvbulkpipe(i32 %224, i32 %225)
  %227 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %228 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %227, i32 0, i32 7
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* @pvr2_ctl_read_complete, align 4
  %232 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %233 = call i32 @usb_fill_bulk_urb(%struct.TYPE_3__* %218, i32 %221, i32 %226, i8* %229, i32 %230, i32 %231, %struct.pvr2_hdw* %232)
  %234 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %235 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %234, i32 0, i32 8
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  store i32 0, i32* %237, align 4
  %238 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %239 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %238, i32 0, i32 5
  store i32 1, i32* %239, align 4
  %240 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %241 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %240, i32 0, i32 8
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %241, align 8
  %243 = load i32, i32* @GFP_KERNEL, align 4
  %244 = call i32 @usb_submit_urb(%struct.TYPE_3__* %242, i32 %243)
  store i32 %244, i32* %17, align 4
  %245 = load i32, i32* %17, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %208
  %248 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %249 = load i32, i32* %17, align 4
  %250 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %248, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %249)
  %251 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %252 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %251, i32 0, i32 5
  store i32 0, i32* %252, align 4
  br label %462

253:                                              ; preds = %208
  br label %254

254:                                              ; preds = %253, %205
  %255 = call i32 @add_timer(%struct.timer_list* %18)
  %256 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %257 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %256, i32 0, i32 0
  store i32 4, i32* %257, align 8
  br label %258

258:                                              ; preds = %270, %254
  %259 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %260 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %258
  %264 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %265 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br label %268

268:                                              ; preds = %263, %258
  %269 = phi i1 [ true, %258 ], [ %267, %263 ]
  br i1 %269, label %270, label %274

270:                                              ; preds = %268
  %271 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %272 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %271, i32 0, i32 11
  %273 = call i32 @wait_for_completion(i32* %272)
  br label %258

274:                                              ; preds = %268
  %275 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %276 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %275, i32 0, i32 0
  store i32 5, i32* %276, align 8
  %277 = call i32 @del_timer_sync(%struct.timer_list* %18)
  %278 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %279 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %278, i32 0, i32 0
  store i32 6, i32* %279, align 8
  store i32 0, i32* %17, align 4
  %280 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %281 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %280, i32 0, i32 10
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %274
  %285 = load i32, i32* @ETIMEDOUT, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %17, align 4
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %284
  %290 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %291 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %290, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %284
  br label %462

293:                                              ; preds = %274
  %294 = load i32, i32* %13, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %367

296:                                              ; preds = %293
  %297 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %298 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %297, i32 0, i32 9
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %343

303:                                              ; preds = %296
  %304 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %305 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %304, i32 0, i32 9
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @ENOENT, align 4
  %310 = sub nsw i32 0, %309
  %311 = icmp ne i32 %308, %310
  br i1 %311, label %312, label %343

312:                                              ; preds = %303
  %313 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %314 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %313, i32 0, i32 9
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @ESHUTDOWN, align 4
  %319 = sub nsw i32 0, %318
  %320 = icmp ne i32 %317, %319
  br i1 %320, label %321, label %343

321:                                              ; preds = %312
  %322 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %323 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %322, i32 0, i32 9
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @ECONNRESET, align 4
  %328 = sub nsw i32 0, %327
  %329 = icmp ne i32 %326, %328
  br i1 %329, label %330, label %343

330:                                              ; preds = %321
  %331 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %332 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %331, i32 0, i32 9
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  store i32 %335, i32* %17, align 4
  %336 = load i32, i32* %11, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %342, label %338

338:                                              ; preds = %330
  %339 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %340 = load i32, i32* %17, align 4
  %341 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %339, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %340)
  br label %342

342:                                              ; preds = %338, %330
  br label %462

343:                                              ; preds = %321, %312, %303, %296
  %344 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %345 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %344, i32 0, i32 9
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %13, align 4
  %350 = icmp ult i32 %348, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %343
  %352 = load i32, i32* @EIO, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %17, align 4
  %354 = load i32, i32* %11, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %365, label %356

356:                                              ; preds = %351
  %357 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %358 = load i32, i32* %13, align 4
  %359 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %360 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %359, i32 0, i32 9
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %357, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %358, i32 %363)
  br label %365

365:                                              ; preds = %356, %351
  br label %462

366:                                              ; preds = %343
  br label %367

367:                                              ; preds = %366, %293
  %368 = load i32, i32* %15, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %461

370:                                              ; preds = %367
  %371 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %372 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %371, i32 0, i32 8
  %373 = load %struct.TYPE_3__*, %struct.TYPE_3__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %417

377:                                              ; preds = %370
  %378 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %379 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %378, i32 0, i32 8
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @ENOENT, align 4
  %384 = sub nsw i32 0, %383
  %385 = icmp ne i32 %382, %384
  br i1 %385, label %386, label %417

386:                                              ; preds = %377
  %387 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %388 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %387, i32 0, i32 8
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @ESHUTDOWN, align 4
  %393 = sub nsw i32 0, %392
  %394 = icmp ne i32 %391, %393
  br i1 %394, label %395, label %417

395:                                              ; preds = %386
  %396 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %397 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %396, i32 0, i32 8
  %398 = load %struct.TYPE_3__*, %struct.TYPE_3__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @ECONNRESET, align 4
  %402 = sub nsw i32 0, %401
  %403 = icmp ne i32 %400, %402
  br i1 %403, label %404, label %417

404:                                              ; preds = %395
  %405 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %406 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %405, i32 0, i32 8
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %17, align 4
  %410 = load i32, i32* %11, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %416, label %412

412:                                              ; preds = %404
  %413 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %414 = load i32, i32* %17, align 4
  %415 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %413, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %414)
  br label %416

416:                                              ; preds = %412, %404
  br label %462

417:                                              ; preds = %395, %386, %377, %370
  %418 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %419 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %418, i32 0, i32 8
  %420 = load %struct.TYPE_3__*, %struct.TYPE_3__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %15, align 4
  %424 = icmp ult i32 %422, %423
  br i1 %424, label %425, label %440

425:                                              ; preds = %417
  %426 = load i32, i32* @EIO, align 4
  %427 = sub nsw i32 0, %426
  store i32 %427, i32* %17, align 4
  %428 = load i32, i32* %11, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %439, label %430

430:                                              ; preds = %425
  %431 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %432 = load i32, i32* %15, align 4
  %433 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %434 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %433, i32 0, i32 8
  %435 = load %struct.TYPE_3__*, %struct.TYPE_3__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %431, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %432, i32 %437)
  br label %439

439:                                              ; preds = %430, %425
  br label %462

440:                                              ; preds = %417
  store i32 0, i32* %16, align 4
  br label %441

441:                                              ; preds = %457, %440
  %442 = load i32, i32* %16, align 4
  %443 = load i32, i32* %15, align 4
  %444 = icmp ult i32 %442, %443
  br i1 %444, label %445, label %460

445:                                              ; preds = %441
  %446 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %447 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %446, i32 0, i32 7
  %448 = load i8*, i8** %447, align 8
  %449 = load i32, i32* %16, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* %448, i64 %450
  %452 = load i8, i8* %451, align 1
  %453 = load i8*, i8** %14, align 8
  %454 = load i32, i32* %16, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds i8, i8* %453, i64 %455
  store i8 %452, i8* %456, align 1
  br label %457

457:                                              ; preds = %445
  %458 = load i32, i32* %16, align 4
  %459 = add i32 %458, 1
  store i32 %459, i32* %16, align 4
  br label %441

460:                                              ; preds = %441
  br label %461

461:                                              ; preds = %460, %367
  br label %462

462:                                              ; preds = %461, %439, %416, %365, %342, %292, %247, %198
  %463 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %464 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %463, i32 0, i32 0
  store i32 0, i32* %464, align 8
  %465 = load i32, i32* %17, align 4
  %466 = icmp slt i32 %465, 0
  br i1 %466, label %467, label %473

467:                                              ; preds = %462
  %468 = load i32, i32* %11, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %467
  %471 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %472 = call i32 @pvr2_hdw_render_useless(%struct.pvr2_hdw* %471)
  br label %473

473:                                              ; preds = %470, %467, %462
  %474 = load i32, i32* %17, align 4
  store i32 %474, i32* %8, align 4
  br label %475

475:                                              ; preds = %473, %96, %83, %72, %57, %36, %23
  %476 = load i32, i32* %8, align 4
  ret i32 %476
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @init_timer(%struct.timer_list*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_3__*, i32, i32, i8*, i32, i32, %struct.pvr2_hdw*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @del_timer_sync(%struct.timer_list*) #1

declare dso_local i32 @pvr2_hdw_render_useless(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
