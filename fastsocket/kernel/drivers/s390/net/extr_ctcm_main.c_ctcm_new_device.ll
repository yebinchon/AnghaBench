; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { %struct.ccw_device**, i32 }
%struct.ccw_device = type { i32, i32 }
%struct.ctcm_priv = type { i32, %struct.TYPE_5__**, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CTCM_ID_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ch-%s\00", align 1
@TRACE = common dso_local global i32 0, align 4
@CTC_DBF_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s(%s) set_online rc=%d\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"setup OK : r/w = %s/%s, protocol : %d\0A\00", align 1
@SETUP = common dso_local global i32 0, align 4
@CTC_DBF_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"setup(%s) OK : r/w = %s/%s, protocol : %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @ctcm_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_new_device(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccwgroup_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ctcm_priv*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ccw_device*, align 8
  %12 = alloca %struct.ccw_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %3, align 8
  %15 = load i32, i32* @CTCM_ID_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load i32, i32* @CTCM_ID_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %22 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %23 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %22, i32 0, i32 1
  %24 = call %struct.ctcm_priv* @dev_get_drvdata(i32* %23)
  store %struct.ctcm_priv* %24, %struct.ctcm_priv** %9, align 8
  %25 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %26 = icmp ne %struct.ctcm_priv* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %277

30:                                               ; preds = %1
  %31 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %32 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %31, i32 0, i32 0
  %33 = load %struct.ccw_device**, %struct.ccw_device*** %32, align 8
  %34 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %33, i64 0
  %35 = load %struct.ccw_device*, %struct.ccw_device** %34, align 8
  store %struct.ccw_device* %35, %struct.ccw_device** %11, align 8
  %36 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %37 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %36, i32 0, i32 0
  %38 = load %struct.ccw_device**, %struct.ccw_device*** %37, align 8
  %39 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %38, i64 1
  %40 = load %struct.ccw_device*, %struct.ccw_device** %39, align 8
  store %struct.ccw_device* %40, %struct.ccw_device** %12, align 8
  %41 = load %struct.ccw_device*, %struct.ccw_device** %11, align 8
  %42 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %41, i32 0, i32 1
  %43 = call i32 @get_channel_type(i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @CTCM_ID_SIZE, align 4
  %45 = load %struct.ccw_device*, %struct.ccw_device** %11, align 8
  %46 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %45, i32 0, i32 0
  %47 = call i8* @dev_name(i32* %46)
  %48 = call i32 @snprintf(i8* %18, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @CTCM_ID_SIZE, align 4
  %50 = load %struct.ccw_device*, %struct.ccw_device** %12, align 8
  %51 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %50, i32 0, i32 0
  %52 = call i8* @dev_name(i32* %51)
  %53 = call i32 @snprintf(i8* %21, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.ccw_device*, %struct.ccw_device** %11, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %57 = call i32 @add_channel(%struct.ccw_device* %54, i32 %55, %struct.ctcm_priv* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %30
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %277

62:                                               ; preds = %30
  %63 = load %struct.ccw_device*, %struct.ccw_device** %12, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %66 = call i32 @add_channel(%struct.ccw_device* %63, i32 %64, %struct.ctcm_priv* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %277

71:                                               ; preds = %62
  %72 = load %struct.ccw_device*, %struct.ccw_device** %11, align 8
  %73 = call i32 @ccw_device_set_online(%struct.ccw_device* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @TRACE, align 4
  %78 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %79 = load i32, i32* @CTCM_FUNTAIL, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 (i32, i32, i8*, i32, i8*, i32, ...) @CTCM_DBF_TEXT_(i32 %77, i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %79, i8* %18, i32 %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.ccw_device*, %struct.ccw_device** %12, align 8
  %84 = call i32 @ccw_device_set_online(%struct.ccw_device* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* @TRACE, align 4
  %89 = load i32, i32* @CTC_DBF_NOTICE, align 4
  %90 = load i32, i32* @CTCM_FUNTAIL, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 (i32, i32, i8*, i32, i8*, i32, ...) @CTCM_DBF_TEXT_(i32 %88, i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %90, i8* %21, i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %95 = call %struct.net_device* @ctcm_init_netdevice(%struct.ctcm_priv* %94)
  store %struct.net_device* %95, %struct.net_device** %10, align 8
  %96 = load %struct.net_device*, %struct.net_device** %10, align 8
  %97 = icmp eq %struct.net_device* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %262

99:                                               ; preds = %93
  %100 = load i32, i32* @READ, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %176, %99
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @WRITE, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %179

105:                                              ; preds = %101
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @READ, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %112

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %110
  %113 = phi i8* [ %18, %110 ], [ %21, %111 ]
  %114 = load i32, i32* %7, align 4
  %115 = call %struct.TYPE_5__* @channel_get(i32 %106, i8* %113, i32 %114)
  %116 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %117 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %118, i64 %120
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %121, align 8
  %122 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %123 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %124, i64 %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = icmp eq %struct.TYPE_5__* %128, null
  br i1 %129, label %130, label %144

130:                                              ; preds = %112
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @WRITE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %136 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %135, i32 0, i32 1
  %137 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %136, align 8
  %138 = load i32, i32* @READ, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %137, i64 %139
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = call i32 @channel_free(%struct.TYPE_5__* %141)
  br label %143

143:                                              ; preds = %134, %130
  br label %259

144:                                              ; preds = %112
  %145 = load %struct.net_device*, %struct.net_device** %10, align 8
  %146 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %147 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %146, i32 0, i32 1
  %148 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %148, i64 %150
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  store %struct.net_device* %145, %struct.net_device** %153, align 8
  %154 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %155 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %158 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %157, i32 0, i32 1
  %159 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %159, i64 %161
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  store i32 %156, i32* %164, align 8
  %165 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %166 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %169 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %170, i64 %172
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i32 %167, i32* %175, align 4
  br label %176

176:                                              ; preds = %144
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %101

179:                                              ; preds = %101
  %180 = load %struct.net_device*, %struct.net_device** %10, align 8
  %181 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %182 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %181, i32 0, i32 1
  %183 = call i32 @SET_NETDEV_DEV(%struct.net_device* %180, i32* %182)
  %184 = load %struct.net_device*, %struct.net_device** %10, align 8
  %185 = call i64 @register_netdev(%struct.net_device* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %259

188:                                              ; preds = %179
  %189 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %190 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %189, i32 0, i32 1
  %191 = call i64 @ctcm_add_attributes(i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.net_device*, %struct.net_device** %10, align 8
  %195 = call i32 @unregister_netdev(%struct.net_device* %194)
  br label %259

196:                                              ; preds = %188
  %197 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %198 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %197, i32 0, i32 2
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.net_device*, %struct.net_device** %10, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @strlcpy(i32 %201, i32 %204, i32 4)
  %206 = load %struct.net_device*, %struct.net_device** %10, align 8
  %207 = getelementptr inbounds %struct.net_device, %struct.net_device* %206, i32 0, i32 1
  %208 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %209 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %208, i32 0, i32 1
  %210 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %209, align 8
  %211 = load i32, i32* @READ, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %210, i64 %212
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %218 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %217, i32 0, i32 1
  %219 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %218, align 8
  %220 = load i32, i32* @WRITE, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %219, i64 %221
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %227 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @dev_info(i32* %207, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %216, i32 %225, i32 %228)
  %230 = load i32, i32* @SETUP, align 4
  %231 = load i32, i32* @CTC_DBF_INFO, align 4
  %232 = load %struct.net_device*, %struct.net_device** %10, align 8
  %233 = getelementptr inbounds %struct.net_device, %struct.net_device* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %236 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %235, i32 0, i32 1
  %237 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %236, align 8
  %238 = load i32, i32* @READ, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %237, i64 %239
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = inttoptr i64 %244 to i8*
  %246 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %247 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %246, i32 0, i32 1
  %248 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %247, align 8
  %249 = load i32, i32* @WRITE, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %248, i64 %250
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.ctcm_priv*, %struct.ctcm_priv** %9, align 8
  %256 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (i32, i32, i8*, i32, i8*, i32, ...) @CTCM_DBF_TEXT_(i32 %230, i32 %231, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %234, i8* %245, i32 %254, i32 %257)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %277

259:                                              ; preds = %193, %187, %143
  %260 = load %struct.net_device*, %struct.net_device** %10, align 8
  %261 = call i32 @ctcm_free_netdevice(%struct.net_device* %260)
  br label %262

262:                                              ; preds = %259, %98
  %263 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %264 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %263, i32 0, i32 0
  %265 = load %struct.ccw_device**, %struct.ccw_device*** %264, align 8
  %266 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %265, i64 1
  %267 = load %struct.ccw_device*, %struct.ccw_device** %266, align 8
  %268 = call i32 @ccw_device_set_offline(%struct.ccw_device* %267)
  %269 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %3, align 8
  %270 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %269, i32 0, i32 0
  %271 = load %struct.ccw_device**, %struct.ccw_device*** %270, align 8
  %272 = getelementptr inbounds %struct.ccw_device*, %struct.ccw_device** %271, i64 0
  %273 = load %struct.ccw_device*, %struct.ccw_device** %272, align 8
  %274 = call i32 @ccw_device_set_offline(%struct.ccw_device* %273)
  %275 = load i32, i32* @ENODEV, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %277

277:                                              ; preds = %262, %196, %69, %60, %27
  %278 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %278)
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ctcm_priv* @dev_get_drvdata(i32*) #2

declare dso_local i32 @get_channel_type(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dev_name(i32*) #2

declare dso_local i32 @add_channel(%struct.ccw_device*, i32, %struct.ctcm_priv*) #2

declare dso_local i32 @ccw_device_set_online(%struct.ccw_device*) #2

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i8*, i32, ...) #2

declare dso_local %struct.net_device* @ctcm_init_netdevice(%struct.ctcm_priv*) #2

declare dso_local %struct.TYPE_5__* @channel_get(i32, i8*, i32) #2

declare dso_local i32 @channel_free(%struct.TYPE_5__*) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #2

declare dso_local i64 @register_netdev(%struct.net_device*) #2

declare dso_local i64 @ctcm_add_attributes(i32*) #2

declare dso_local i32 @unregister_netdev(%struct.net_device*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @ctcm_free_netdevice(%struct.net_device*) #2

declare dso_local i32 @ccw_device_set_offline(%struct.ccw_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
