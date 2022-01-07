; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_do_request_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_do_request_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_request_fw_context = type { i32, i8*, %struct.TYPE_7__*, i32*, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.b43_firmware_file = type { i8*, i32, %struct.TYPE_7__* }
%struct.b43_fw_header = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"b43%s/%s.fw\00", align 1
@modparam_fwpostfix = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"b43-open%s/%s.fw\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@b43_fw_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to load firmware\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Firmware file \22%s\22 not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Firmware file \22%s\22 request failed (err=%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Firmware file \22%s\22 format error.\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_do_request_fw(%struct.b43_request_fw_context* %0, i8* %1, %struct.b43_firmware_file* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_request_fw_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.b43_firmware_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.b43_fw_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_request_fw_context* %0, %struct.b43_request_fw_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.b43_firmware_file* %2, %struct.b43_firmware_file** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %17 = call i32 @b43_do_release_fw(%struct.b43_firmware_file* %16)
  store i32 0, i32* %5, align 4
  br label %239

18:                                               ; preds = %4
  %19 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %20 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %25 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %28 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %33 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strcmp(i8* %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %239

39:                                               ; preds = %31, %23
  %40 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %41 = call i32 @b43_do_release_fw(%struct.b43_firmware_file* %40)
  br label %42

42:                                               ; preds = %39, %18
  %43 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %44 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %60 [
    i32 131, label %46
    i32 132, label %53
  ]

46:                                               ; preds = %42
  %47 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %48 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** @modparam_fwpostfix, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %49, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %51)
  br label %64

53:                                               ; preds = %42
  %54 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %55 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** @modparam_fwpostfix, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %56, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58)
  br label %64

60:                                               ; preds = %42
  %61 = call i32 @B43_WARN_ON(i32 1)
  %62 = load i32, i32* @ENOSYS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %239

64:                                               ; preds = %53, %46
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %64
  %68 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %69 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %68, i32 0, i32 5
  %70 = call i32 @init_completion(i32* %69)
  %71 = load i32, i32* @THIS_MODULE, align 4
  %72 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %73 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %76 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %75, i32 0, i32 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %84 = load i32, i32* @b43_fw_cb, align 4
  %85 = call i32 @request_firmware_nowait(i32 %71, i32 1, i8* %74, i32 %81, i32 %82, %struct.b43_request_fw_context* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %67
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %239

91:                                               ; preds = %67
  %92 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %93 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %92, i32 0, i32 5
  %94 = call i32 @wait_for_completion(i32* %93)
  %95 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %96 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = icmp ne %struct.TYPE_7__* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %159

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %64
  %102 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %103 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %102, i32 0, i32 2
  %104 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %105 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %108 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %107, i32 0, i32 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @request_firmware(%struct.TYPE_7__** %103, i8* %106, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @ENOENT, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %101
  %120 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %121 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %124 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %132 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %130, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %5, align 4
  br label %239

136:                                              ; preds = %101
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %136
  %140 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %141 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %144 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %152 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %150, i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %153, i32 %154)
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %5, align 4
  br label %239

157:                                              ; preds = %136
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158, %99
  %160 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %161 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %160, i32 0, i32 2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = icmp ult i64 %165, 12
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %217

168:                                              ; preds = %159
  %169 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %170 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %169, i32 0, i32 2
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to %struct.b43_fw_header*
  store %struct.b43_fw_header* %174, %struct.b43_fw_header** %10, align 8
  %175 = load %struct.b43_fw_header*, %struct.b43_fw_header** %10, align 8
  %176 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %202 [
    i32 128, label %178
    i32 129, label %178
    i32 130, label %195
  ]

178:                                              ; preds = %168, %168
  %179 = load %struct.b43_fw_header*, %struct.b43_fw_header** %10, align 8
  %180 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @be32_to_cpu(i32 %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %186 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %185, i32 0, i32 2
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = sub i64 %190, 12
  %192 = icmp ne i64 %184, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  br label %217

194:                                              ; preds = %178
  br label %195

195:                                              ; preds = %168, %194
  %196 = load %struct.b43_fw_header*, %struct.b43_fw_header** %10, align 8
  %197 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 1
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %217

201:                                              ; preds = %195
  br label %203

202:                                              ; preds = %168
  br label %217

203:                                              ; preds = %201
  %204 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %205 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %204, i32 0, i32 2
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %208 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %207, i32 0, i32 2
  store %struct.TYPE_7__* %206, %struct.TYPE_7__** %208, align 8
  %209 = load i8*, i8** %7, align 8
  %210 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %211 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %210, i32 0, i32 0
  store i8* %209, i8** %211, align 8
  %212 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %213 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %216 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  store i32 0, i32* %5, align 4
  br label %239

217:                                              ; preds = %202, %200, %193, %167
  %218 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %219 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %222 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  %229 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %230 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %228, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %231)
  %233 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %234 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %233, i32 0, i32 2
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = call i32 @release_firmware(%struct.TYPE_7__* %235)
  %237 = load i32, i32* @EPROTO, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %217, %203, %139, %119, %88, %60, %38, %15
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @b43_do_release_fw(%struct.b43_firmware_file*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.b43_request_fw_context*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_7__**, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
