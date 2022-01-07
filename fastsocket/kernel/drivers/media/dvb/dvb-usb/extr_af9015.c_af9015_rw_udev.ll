; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9015.c_af9015_rw_udev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9015.c_af9015_rw_udev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.req_t = type { i32, i32, i32, i32, i32, i32, i32* }

@af9015_rw_udev.seq = internal global i32 0, align 4
@af9015_usb_mutex = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@READ_WRITE_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unknown command:%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"too much data; cmd:%d len:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@AF9015_USB_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"bulk message failed:%d (%d/%d)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"recv bulk message failed:%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"<<< \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"command failed:%d\00", align 1
@ACK_HDR_LEN = common dso_local global i64 0, align 8
@BUF_LEN = common dso_local global i32 0, align 4
@REQ_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.req_t*)* @af9015_rw_udev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_rw_udev(%struct.usb_device* %0, %struct.req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.req_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [63 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.req_t* %1, %struct.req_t** %5, align 8
  store i32 1, i32* %9, align 4
  store i32 8, i32* %10, align 4
  %11 = call i64 @mutex_lock_interruptible(i32* @af9015_usb_mutex)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %233

16:                                               ; preds = %2
  %17 = load %struct.req_t*, %struct.req_t** %5, align 8
  %18 = getelementptr inbounds %struct.req_t, %struct.req_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* @af9015_rw_udev.seq, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @af9015_rw_udev.seq, align 4
  %23 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.req_t*, %struct.req_t** %5, align 8
  %25 = getelementptr inbounds %struct.req_t, %struct.req_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.req_t*, %struct.req_t** %5, align 8
  %29 = getelementptr inbounds %struct.req_t, %struct.req_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 8
  %32 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.req_t*, %struct.req_t** %5, align 8
  %34 = getelementptr inbounds %struct.req_t, %struct.req_t* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 4
  store i32 %36, i32* %37, align 16
  %38 = load %struct.req_t*, %struct.req_t** %5, align 8
  %39 = getelementptr inbounds %struct.req_t, %struct.req_t* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 5
  store i32 %40, i32* %41, align 4
  %42 = load %struct.req_t*, %struct.req_t** %5, align 8
  %43 = getelementptr inbounds %struct.req_t, %struct.req_t* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 6
  store i32 %44, i32* %45, align 8
  %46 = load %struct.req_t*, %struct.req_t** %5, align 8
  %47 = getelementptr inbounds %struct.req_t, %struct.req_t* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 7
  store i32 %48, i32* %49, align 4
  %50 = load %struct.req_t*, %struct.req_t** %5, align 8
  %51 = getelementptr inbounds %struct.req_t, %struct.req_t* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %77 [
    i32 135, label %53
    i32 132, label %53
    i32 131, label %53
    i32 134, label %53
    i32 133, label %54
    i32 130, label %58
    i32 129, label %61
    i32 128, label %76
    i32 137, label %76
    i32 136, label %76
    i32 138, label %76
  ]

53:                                               ; preds = %16, %16, %16, %16
  store i32 0, i32* %9, align 4
  br label %82

54:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  %55 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %16, %54
  %59 = load i32, i32* @READ_WRITE_I2C, align 4
  %60 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  store i32 %59, i32* %60, align 16
  br label %82

61:                                               ; preds = %16
  %62 = load %struct.req_t*, %struct.req_t** %5, align 8
  %63 = getelementptr inbounds %struct.req_t, %struct.req_t* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 65280
  %66 = icmp eq i32 %65, 65280
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.req_t*, %struct.req_t** %5, align 8
  %69 = getelementptr inbounds %struct.req_t, %struct.req_t* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 65280
  %72 = icmp eq i32 %71, 44544
  br i1 %72, label %73, label %75

73:                                               ; preds = %67, %61
  %74 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  store i32 128, i32* %74, align 16
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %16, %16, %16, %16, %75
  br label %82

77:                                               ; preds = %16
  %78 = load %struct.req_t*, %struct.req_t** %5, align 8
  %79 = getelementptr inbounds %struct.req_t, %struct.req_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32 -1, i32* %7, align 4
  br label %229

82:                                               ; preds = %76, %58, %53
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.req_t*, %struct.req_t** %5, align 8
  %87 = getelementptr inbounds %struct.req_t, %struct.req_t* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 55
  br i1 %89, label %98, label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %90
  %94 = load %struct.req_t*, %struct.req_t** %5, align 8
  %95 = getelementptr inbounds %struct.req_t, %struct.req_t* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 61
  br i1 %97, label %98, label %108

98:                                               ; preds = %93, %85
  %99 = load %struct.req_t*, %struct.req_t** %5, align 8
  %100 = getelementptr inbounds %struct.req_t, %struct.req_t* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.req_t*, %struct.req_t** %5, align 8
  %103 = getelementptr inbounds %struct.req_t, %struct.req_t* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %229

108:                                              ; preds = %93, %90
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 8
  %113 = load %struct.req_t*, %struct.req_t** %5, align 8
  %114 = getelementptr inbounds %struct.req_t, %struct.req_t* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.req_t*, %struct.req_t** %5, align 8
  %117 = getelementptr inbounds %struct.req_t, %struct.req_t* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memcpy(i32* %112, i32* %115, i32 %118)
  %120 = load %struct.req_t*, %struct.req_t** %5, align 8
  %121 = getelementptr inbounds %struct.req_t, %struct.req_t* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %111, %108
  %126 = call i32 @deb_xfer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %127 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @debug_dump(i32* %127, i32 %128, i32 (i8*)* @deb_xfer)
  %130 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %131 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %132 = call i32 @usb_sndbulkpipe(%struct.usb_device* %131, i32 2)
  %133 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @AF9015_USB_TIMEOUT, align 4
  %136 = call i32 @usb_bulk_msg(%struct.usb_device* %130, i32 %132, i32* %133, i32 %134, i32* %6, i32 %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %125
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %141, i32 %142)
  br label %150

144:                                              ; preds = %125
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 -1, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %144
  br label %150

150:                                              ; preds = %149, %139
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %229

154:                                              ; preds = %150
  %155 = load %struct.req_t*, %struct.req_t** %5, align 8
  %156 = getelementptr inbounds %struct.req_t, %struct.req_t* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 136
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load %struct.req_t*, %struct.req_t** %5, align 8
  %161 = getelementptr inbounds %struct.req_t, %struct.req_t* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 131
  br i1 %163, label %164, label %165

164:                                              ; preds = %159, %154
  br label %230

165:                                              ; preds = %159
  store i32 2, i32* %10, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load %struct.req_t*, %struct.req_t** %5, align 8
  %170 = getelementptr inbounds %struct.req_t, %struct.req_t* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %168, %165
  %175 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %176 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %177 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %176, i32 129)
  %178 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @AF9015_USB_TIMEOUT, align 4
  %181 = call i32 @usb_bulk_msg(%struct.usb_device* %175, i32 %177, i32* %178, i32 %179, i32* %6, i32 %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %174
  %185 = load i32, i32* %7, align 4
  %186 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %185)
  store i32 -1, i32* %7, align 4
  br label %229

187:                                              ; preds = %174
  %188 = call i32 @deb_xfer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %189 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 0
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @debug_dump(i32* %189, i32 %190, i32 (i8*)* @deb_xfer)
  %192 = load %struct.req_t*, %struct.req_t** %5, align 8
  %193 = getelementptr inbounds %struct.req_t, %struct.req_t* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 134
  br i1 %195, label %196, label %208

196:                                              ; preds = %187
  %197 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %208

200:                                              ; preds = %196
  %201 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %201, align 4
  %202 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 2
  %203 = load %struct.req_t*, %struct.req_t** %5, align 8
  %204 = getelementptr inbounds %struct.req_t, %struct.req_t* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @memset(i32* %202, i32 0, i32 %205)
  %207 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 3
  store i32 1, i32* %207, align 4
  br label %208

208:                                              ; preds = %200, %196, %187
  %209 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %208
  %213 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %214)
  store i32 -1, i32* %7, align 4
  br label %229

216:                                              ; preds = %208
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %228, label %219

219:                                              ; preds = %216
  %220 = load %struct.req_t*, %struct.req_t** %5, align 8
  %221 = getelementptr inbounds %struct.req_t, %struct.req_t* %220, i32 0, i32 6
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds [63 x i32], [63 x i32]* %8, i64 0, i64 2
  %224 = load %struct.req_t*, %struct.req_t** %5, align 8
  %225 = getelementptr inbounds %struct.req_t, %struct.req_t* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @memcpy(i32* %222, i32* %223, i32 %226)
  br label %228

228:                                              ; preds = %219, %216
  br label %229

229:                                              ; preds = %228, %212, %184, %153, %98, %77
  br label %230

230:                                              ; preds = %229, %164
  %231 = call i32 @mutex_unlock(i32* @af9015_usb_mutex)
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %230, %13
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @deb_xfer(i8*) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
