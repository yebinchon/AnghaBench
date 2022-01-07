; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_read_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_3__*, %struct.dasd_path, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.dasd_path = type { i32, i32, i32 }
%struct.dasd_eckd_private = type { i8*, i32, %struct.dasd_uid }
%struct.dasd_uid = type { i8*, i8*, i8*, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Read configuration data returned error %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"No configuration data retrieved\00", align 1
@DASD_ECKD_RCD_DATA_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"%s.%s.%04x.%02x.%s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s.%s.%04x.%02x\00", align 1
@.str.5 = private unnamed_addr constant [91 x i8] c"Not all channel paths lead to the same device, path %02X leads to device %s instead of %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_read_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_read_conf(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dasd_eckd_private*, align 8
  %12 = alloca %struct.dasd_eckd_private, align 8
  %13 = alloca %struct.dasd_path*, align 8
  %14 = alloca %struct.dasd_uid*, align 8
  %15 = alloca [60 x i8], align 16
  %16 = alloca [60 x i8], align 16
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %17 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %20, %struct.dasd_eckd_private** %11, align 8
  %21 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 1
  store %struct.dasd_path* %22, %struct.dasd_path** %13, align 8
  %23 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %24 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call i32 @ccw_device_get_path_mask(%struct.TYPE_3__* %25)
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 128, i32* %9, align 4
  br label %27

27:                                               ; preds = %240, %1
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %243

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %240

36:                                               ; preds = %30
  %37 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dasd_eckd_read_conf_lpm(%struct.dasd_device* %37, i8** %4, i32* %5, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, i32* @DBF_WARNING, align 4
  %49 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %50 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, %struct.TYPE_3__*, i8*, ...) @DBF_EVENT_DEVID(i32 %48, %struct.TYPE_3__* %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %245

55:                                               ; preds = %42, %36
  %56 = load i8*, i8** %4, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* @DBF_WARNING, align 4
  %60 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %61 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 (i32, %struct.TYPE_3__*, i8*, ...) @DBF_EVENT_DEVID(i32 %59, %struct.TYPE_3__* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.dasd_path*, %struct.dasd_path** %13, align 8
  %66 = getelementptr inbounds %struct.dasd_path, %struct.dasd_path* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %240

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %69
  %73 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  %74 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @kfree(i8* %75)
  %77 = load i8*, i8** %4, align 8
  %78 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  %79 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  %82 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  %84 = call i64 @dasd_eckd_identify_conf_parts(%struct.dasd_eckd_private* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %72
  %87 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  %88 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %87, i32 0, i32 0
  store i8* null, i8** %88, align 8
  %89 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  %90 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %89, i32 0, i32 1
  store i32 0, i32* %90, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @kfree(i8* %91)
  br label %240

93:                                               ; preds = %72
  %94 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %95 = call i32 @dasd_eckd_generate_uid(%struct.dasd_device* %94)
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %209

98:                                               ; preds = %69
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* @DASD_ECKD_RCD_DATA_SIZE, align 4
  %102 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 1
  store i32 %101, i32* %102, align 8
  %103 = call i64 @dasd_eckd_identify_conf_parts(%struct.dasd_eckd_private* %12)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 0
  store i8* null, i8** %106, align 8
  %107 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 1
  store i32 0, i32* %107, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 @kfree(i8* %108)
  br label %240

110:                                              ; preds = %98
  %111 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %112 = call i64 @dasd_eckd_compare_path_uid(%struct.dasd_device* %111, %struct.dasd_eckd_private* %12)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %206

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 2
  store %struct.dasd_uid* %115, %struct.dasd_uid** %14, align 8
  %116 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %117 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strlen(i8* %118)
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %114
  %122 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %123 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %124 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %127 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %130 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %133 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %136 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i32, ...) @snprintf(i8* %122, i32 60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %125, i8* %128, i32 %131, i32 %134, i8* %137)
  br label %154

139:                                              ; preds = %114
  %140 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %141 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %142 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %145 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %148 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %151 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i32, ...) @snprintf(i8* %140, i32 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %143, i8* %146, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %139, %121
  %155 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  %156 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %155, i32 0, i32 2
  store %struct.dasd_uid* %156, %struct.dasd_uid** %14, align 8
  %157 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %158 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @strlen(i8* %159)
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %154
  %163 = getelementptr inbounds [60 x i8], [60 x i8]* %16, i64 0, i64 0
  %164 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %165 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %168 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %171 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %174 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %177 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i32, ...) @snprintf(i8* %163, i32 60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %166, i8* %169, i32 %172, i32 %175, i8* %178)
  br label %195

180:                                              ; preds = %154
  %181 = getelementptr inbounds [60 x i8], [60 x i8]* %16, i64 0, i64 0
  %182 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %183 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %186 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %189 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.dasd_uid*, %struct.dasd_uid** %14, align 8
  %192 = getelementptr inbounds %struct.dasd_uid, %struct.dasd_uid* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i8*, i32, i8*, i8*, i8*, i32, i32, ...) @snprintf(i8* %181, i32 60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %184, i8* %187, i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %180, %162
  %196 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %197 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %196, i32 0, i32 0
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %9, align 4
  %201 = getelementptr inbounds [60 x i8], [60 x i8]* %15, i64 0, i64 0
  %202 = getelementptr inbounds [60 x i8], [60 x i8]* %16, i64 0, i64 0
  %203 = call i32 @dev_err(i32* %199, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i32 %200, i8* %201, i8* %202)
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %8, align 4
  br label %240

206:                                              ; preds = %110
  %207 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 0
  store i8* null, i8** %207, align 8
  %208 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 1
  store i32 0, i32* %208, align 8
  br label %209

209:                                              ; preds = %206, %93
  %210 = load i8*, i8** %4, align 8
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @dasd_eckd_path_access(i8* %210, i32 %211)
  switch i32 %212, label %225 [
    i32 2, label %213
    i32 3, label %219
  ]

213:                                              ; preds = %209
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.dasd_path*, %struct.dasd_path** %13, align 8
  %216 = getelementptr inbounds %struct.dasd_path, %struct.dasd_path* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  br label %225

219:                                              ; preds = %209
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.dasd_path*, %struct.dasd_path** %13, align 8
  %222 = getelementptr inbounds %struct.dasd_path, %struct.dasd_path* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %209, %219, %213
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.dasd_path*, %struct.dasd_path** %13, align 8
  %228 = getelementptr inbounds %struct.dasd_path, %struct.dasd_path* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load i8*, i8** %4, align 8
  %232 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  %233 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %231, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %225
  %237 = load i8*, i8** %4, align 8
  %238 = call i32 @kfree(i8* %237)
  br label %239

239:                                              ; preds = %236, %225
  br label %240

240:                                              ; preds = %239, %195, %105, %86, %58, %35
  %241 = load i32, i32* %9, align 4
  %242 = ashr i32 %241, 1
  store i32 %242, i32* %9, align 4
  br label %27

243:                                              ; preds = %27
  %244 = load i32, i32* %8, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %243, %47
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @ccw_device_get_path_mask(%struct.TYPE_3__*) #1

declare dso_local i32 @dasd_eckd_read_conf_lpm(%struct.dasd_device*, i8**, i32*, i32) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @dasd_eckd_identify_conf_parts(%struct.dasd_eckd_private*) #1

declare dso_local i32 @dasd_eckd_generate_uid(%struct.dasd_device*) #1

declare dso_local i64 @dasd_eckd_compare_path_uid(%struct.dasd_device*, %struct.dasd_eckd_private*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @dasd_eckd_path_access(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
