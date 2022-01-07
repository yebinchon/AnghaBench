; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_irb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_irb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.irb }
%struct.TYPE_16__ = type { i32 }
%struct.irb = type { %struct.TYPE_15__, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@SCSW_FCTL_CLEAR_FUNC = common dso_local global i32 0, align 4
@SCSW_FCTL_START_FUNC = common dso_local global i32 0, align 4
@SCSW_STCTL_PRIM_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_INTER_STATUS = common dso_local global i32 0, align 4
@SCSW_ACTL_DEVACT = common dso_local global i32 0, align 4
@SCSW_ACTL_SCHACT = common dso_local global i32 0, align 4
@SCSW_ACTL_SUSPENDED = common dso_local global i32 0, align 4
@DEV_STAT_BUSY = common dso_local global i32 0, align 4
@SCSW_STCTL_SEC_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_ALERT_STATUS = common dso_local global i32 0, align 4
@SCHN_STAT_PCI = common dso_local global i32 0, align 4
@SCHN_STAT_INCORR_LEN = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccw_device_accumulate_irb(%struct.ccw_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.irb*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %6 = load %struct.irb*, %struct.irb** %4, align 8
  %7 = getelementptr inbounds %struct.irb, %struct.irb* %6, i32 0, i32 1
  %8 = call i32 @scsw_stctl(%struct.TYPE_18__* %7)
  %9 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %343

13:                                               ; preds = %2
  %14 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %15 = load %struct.irb*, %struct.irb** %4, align 8
  %16 = call i32 @ccw_device_msg_control_check(%struct.ccw_device* %14, %struct.irb* %15)
  %17 = load %struct.irb*, %struct.irb** %4, align 8
  %18 = getelementptr inbounds %struct.irb, %struct.irb* %17, i32 0, i32 1
  %19 = call i64 @scsw_is_valid_pno(%struct.TYPE_18__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.irb*, %struct.irb** %4, align 8
  %23 = getelementptr inbounds %struct.irb, %struct.irb* %22, i32 0, i32 1
  %24 = call i64 @scsw_pno(%struct.TYPE_18__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %28 = call i32 @ccw_device_path_notoper(%struct.ccw_device* %27)
  br label %29

29:                                               ; preds = %26, %21, %13
  %30 = load %struct.irb*, %struct.irb** %4, align 8
  %31 = getelementptr inbounds %struct.irb, %struct.irb* %30, i32 0, i32 1
  %32 = call i64 @scsw_is_tm(%struct.TYPE_18__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %36 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load %struct.irb*, %struct.irb** %4, align 8
  %40 = call i32 @memcpy(%struct.irb* %38, %struct.irb* %39, i32 64)
  br label %343

41:                                               ; preds = %29
  %42 = load %struct.irb*, %struct.irb** %4, align 8
  %43 = getelementptr inbounds %struct.irb, %struct.irb* %42, i32 0, i32 1
  %44 = call i32 @scsw_is_solicited(%struct.TYPE_18__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %343

47:                                               ; preds = %41
  %48 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %49 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  store %struct.irb* %51, %struct.irb** %5, align 8
  %52 = load %struct.irb*, %struct.irb** %4, align 8
  %53 = getelementptr inbounds %struct.irb, %struct.irb* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SCSW_FCTL_CLEAR_FUNC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %47
  %61 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %62 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = call i32 @memset(%struct.irb* %64, i32 0, i32 64)
  br label %66

66:                                               ; preds = %60, %47
  %67 = load %struct.irb*, %struct.irb** %4, align 8
  %68 = getelementptr inbounds %struct.irb, %struct.irb* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SCSW_FCTL_START_FUNC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %150

75:                                               ; preds = %66
  %76 = load %struct.irb*, %struct.irb** %4, align 8
  %77 = getelementptr inbounds %struct.irb, %struct.irb* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.irb*, %struct.irb** %5, align 8
  %82 = getelementptr inbounds %struct.irb, %struct.irb* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 14
  store i32 %80, i32* %84, align 4
  %85 = load %struct.irb*, %struct.irb** %4, align 8
  %86 = getelementptr inbounds %struct.irb, %struct.irb* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.irb*, %struct.irb** %5, align 8
  %91 = getelementptr inbounds %struct.irb, %struct.irb* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 13
  store i32 %89, i32* %93, align 4
  %94 = load %struct.irb*, %struct.irb** %4, align 8
  %95 = getelementptr inbounds %struct.irb, %struct.irb* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 12
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.irb*, %struct.irb** %5, align 8
  %100 = getelementptr inbounds %struct.irb, %struct.irb* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 12
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %98
  store i32 %104, i32* %102, align 4
  %105 = load %struct.irb*, %struct.irb** %4, align 8
  %106 = getelementptr inbounds %struct.irb, %struct.irb* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.irb*, %struct.irb** %5, align 8
  %111 = getelementptr inbounds %struct.irb, %struct.irb* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 11
  store i32 %109, i32* %113, align 4
  %114 = load %struct.irb*, %struct.irb** %4, align 8
  %115 = getelementptr inbounds %struct.irb, %struct.irb* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.irb*, %struct.irb** %5, align 8
  %120 = getelementptr inbounds %struct.irb, %struct.irb* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 10
  store i32 %118, i32* %122, align 4
  %123 = load %struct.irb*, %struct.irb** %4, align 8
  %124 = getelementptr inbounds %struct.irb, %struct.irb* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.irb*, %struct.irb** %5, align 8
  %129 = getelementptr inbounds %struct.irb, %struct.irb* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 9
  store i32 %127, i32* %131, align 4
  %132 = load %struct.irb*, %struct.irb** %4, align 8
  %133 = getelementptr inbounds %struct.irb, %struct.irb* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.irb*, %struct.irb** %5, align 8
  %138 = getelementptr inbounds %struct.irb, %struct.irb* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 8
  store i32 %136, i32* %140, align 4
  %141 = load %struct.irb*, %struct.irb** %4, align 8
  %142 = getelementptr inbounds %struct.irb, %struct.irb* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.irb*, %struct.irb** %5, align 8
  %147 = getelementptr inbounds %struct.irb, %struct.irb* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 7
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %75, %66
  %151 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %152 = load %struct.irb*, %struct.irb** %4, align 8
  %153 = call i32 @ccw_device_accumulate_ecw(%struct.ccw_device* %151, %struct.irb* %152)
  %154 = load %struct.irb*, %struct.irb** %4, align 8
  %155 = getelementptr inbounds %struct.irb, %struct.irb* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.irb*, %struct.irb** %5, align 8
  %160 = getelementptr inbounds %struct.irb, %struct.irb* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %158
  store i32 %164, i32* %162, align 4
  %165 = load %struct.irb*, %struct.irb** %4, align 8
  %166 = getelementptr inbounds %struct.irb, %struct.irb* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.irb*, %struct.irb** %5, align 8
  %171 = getelementptr inbounds %struct.irb, %struct.irb* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 4
  %174 = load %struct.irb*, %struct.irb** %4, align 8
  %175 = getelementptr inbounds %struct.irb, %struct.irb* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.irb*, %struct.irb** %5, align 8
  %180 = getelementptr inbounds %struct.irb, %struct.irb* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %178
  store i32 %184, i32* %182, align 4
  %185 = load %struct.irb*, %struct.irb** %4, align 8
  %186 = getelementptr inbounds %struct.irb, %struct.irb* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SCSW_STCTL_PRIM_STATUS, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %230, label %193

193:                                              ; preds = %150
  %194 = load %struct.irb*, %struct.irb** %4, align 8
  %195 = getelementptr inbounds %struct.irb, %struct.irb* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @SCSW_STCTL_INTER_STATUS, align 4
  %200 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %201 = or i32 %199, %200
  %202 = icmp eq i32 %198, %201
  br i1 %202, label %203, label %221

203:                                              ; preds = %193
  %204 = load %struct.irb*, %struct.irb** %4, align 8
  %205 = getelementptr inbounds %struct.irb, %struct.irb* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @SCSW_ACTL_DEVACT, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %203
  %213 = load %struct.irb*, %struct.irb** %4, align 8
  %214 = getelementptr inbounds %struct.irb, %struct.irb* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @SCSW_ACTL_SCHACT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %212, %203, %193
  %222 = load %struct.irb*, %struct.irb** %4, align 8
  %223 = getelementptr inbounds %struct.irb, %struct.irb* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @SCSW_ACTL_SUSPENDED, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %221, %212, %150
  %231 = load %struct.irb*, %struct.irb** %4, align 8
  %232 = getelementptr inbounds %struct.irb, %struct.irb* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.irb*, %struct.irb** %5, align 8
  %237 = getelementptr inbounds %struct.irb, %struct.irb* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 6
  store i32 %235, i32* %239, align 4
  br label %240

240:                                              ; preds = %230, %221
  %241 = load i32, i32* @DEV_STAT_BUSY, align 4
  %242 = xor i32 %241, -1
  %243 = load %struct.irb*, %struct.irb** %5, align 8
  %244 = getelementptr inbounds %struct.irb, %struct.irb* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, %242
  store i32 %248, i32* %246, align 4
  %249 = load %struct.irb*, %struct.irb** %4, align 8
  %250 = getelementptr inbounds %struct.irb, %struct.irb* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @SCSW_STCTL_PRIM_STATUS, align 4
  %255 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @SCSW_STCTL_INTER_STATUS, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %260 = or i32 %258, %259
  %261 = and i32 %253, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %240
  %264 = load %struct.irb*, %struct.irb** %4, align 8
  %265 = getelementptr inbounds %struct.irb, %struct.irb* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.irb*, %struct.irb** %5, align 8
  %270 = getelementptr inbounds %struct.irb, %struct.irb* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %268
  store i32 %274, i32* %272, align 4
  br label %275

275:                                              ; preds = %263, %240
  %276 = load %struct.irb*, %struct.irb** %4, align 8
  %277 = getelementptr inbounds %struct.irb, %struct.irb* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.irb*, %struct.irb** %5, align 8
  %282 = getelementptr inbounds %struct.irb, %struct.irb* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %280
  store i32 %286, i32* %284, align 4
  %287 = load %struct.irb*, %struct.irb** %4, align 8
  %288 = getelementptr inbounds %struct.irb, %struct.irb* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @SCSW_STCTL_PRIM_STATUS, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %317

295:                                              ; preds = %275
  %296 = load %struct.irb*, %struct.irb** %4, align 8
  %297 = getelementptr inbounds %struct.irb, %struct.irb* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @SCHN_STAT_PCI, align 4
  %302 = load i32, i32* @SCHN_STAT_INCORR_LEN, align 4
  %303 = or i32 %301, %302
  %304 = xor i32 %303, -1
  %305 = and i32 %300, %304
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %295
  %308 = load %struct.irb*, %struct.irb** %4, align 8
  %309 = getelementptr inbounds %struct.irb, %struct.irb* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.irb*, %struct.irb** %5, align 8
  %314 = getelementptr inbounds %struct.irb, %struct.irb* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 5
  store i32 %312, i32* %316, align 4
  br label %317

317:                                              ; preds = %307, %295, %275
  %318 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %319 = load %struct.irb*, %struct.irb** %4, align 8
  %320 = call i32 @ccw_device_accumulate_esw(%struct.ccw_device* %318, %struct.irb* %319)
  %321 = load %struct.irb*, %struct.irb** %5, align 8
  %322 = getelementptr inbounds %struct.irb, %struct.irb* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %343

329:                                              ; preds = %317
  %330 = load %struct.irb*, %struct.irb** %5, align 8
  %331 = getelementptr inbounds %struct.irb, %struct.irb* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %343, label %337

337:                                              ; preds = %329
  %338 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %339 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %338, i32 0, i32 0
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 0
  store i32 1, i32* %342, align 4
  br label %343

343:                                              ; preds = %12, %34, %46, %337, %329, %317
  ret void
}

declare dso_local i32 @scsw_stctl(%struct.TYPE_18__*) #1

declare dso_local i32 @ccw_device_msg_control_check(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i64 @scsw_is_valid_pno(%struct.TYPE_18__*) #1

declare dso_local i64 @scsw_pno(%struct.TYPE_18__*) #1

declare dso_local i32 @ccw_device_path_notoper(%struct.ccw_device*) #1

declare dso_local i64 @scsw_is_tm(%struct.TYPE_18__*) #1

declare dso_local i32 @memcpy(%struct.irb*, %struct.irb*, i32) #1

declare dso_local i32 @scsw_is_solicited(%struct.TYPE_18__*) #1

declare dso_local i32 @memset(%struct.irb*, i32, i32) #1

declare dso_local i32 @ccw_device_accumulate_ecw(%struct.ccw_device*, %struct.irb*) #1

declare dso_local i32 @ccw_device_accumulate_esw(%struct.ccw_device*, %struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
