; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmur.c_ur_set_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmur.c_ur_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.ccw_device = type { i32 }
%struct.urdev = type { i64, %struct.TYPE_14__*, i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ur_set_online: cdev=%p\0A\00", align 1
@vmur_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ur_first_dev_maj_min = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ur_fops = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@READER_PUNCH_DEVTYPE = common dso_local global i64 0, align 8
@DEV_CLASS_UR_I = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"vmrdr-%s\00", align 1
@DEV_CLASS_UR_O = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"vmpun-%s\00", align 1
@PRINTER_DEVTYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"vmprt-%s\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@vmur_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"ur_set_online: device_create rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @ur_set_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ur_set_online(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.urdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %10 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.ccw_device* %9)
  %11 = call i32 @mutex_lock(i32* @vmur_mutex)
  %12 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %13 = call %struct.urdev* @urdev_get_from_cdev(%struct.ccw_device* %12)
  store %struct.urdev* %13, %struct.urdev** %4, align 8
  %14 = load %struct.urdev*, %struct.urdev** %4, align 8
  %15 = icmp ne %struct.urdev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %163

19:                                               ; preds = %1
  %20 = load %struct.urdev*, %struct.urdev** %4, align 8
  %21 = getelementptr inbounds %struct.urdev, %struct.urdev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %160

27:                                               ; preds = %19
  %28 = load %struct.urdev*, %struct.urdev** %4, align 8
  %29 = getelementptr inbounds %struct.urdev, %struct.urdev* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @ur_first_dev_maj_min, align 4
  %33 = call i32 @MAJOR(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = call %struct.TYPE_14__* (...) @cdev_alloc()
  %35 = load %struct.urdev*, %struct.urdev** %4, align 8
  %36 = getelementptr inbounds %struct.urdev, %struct.urdev* %35, i32 0, i32 1
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %36, align 8
  %37 = load %struct.urdev*, %struct.urdev** %4, align 8
  %38 = getelementptr inbounds %struct.urdev, %struct.urdev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %160

44:                                               ; preds = %27
  %45 = load %struct.urdev*, %struct.urdev** %4, align 8
  %46 = getelementptr inbounds %struct.urdev, %struct.urdev* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = call i32 @cdev_init(%struct.TYPE_14__* %47, %struct.TYPE_13__* @ur_fops)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @MKDEV(i32 %49, i32 %50)
  %52 = load %struct.urdev*, %struct.urdev** %4, align 8
  %53 = getelementptr inbounds %struct.urdev, %struct.urdev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ur_fops, i32 0, i32 0), align 4
  %57 = load %struct.urdev*, %struct.urdev** %4, align 8
  %58 = getelementptr inbounds %struct.urdev, %struct.urdev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.urdev*, %struct.urdev** %4, align 8
  %62 = getelementptr inbounds %struct.urdev, %struct.urdev* %61, i32 0, i32 1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load %struct.urdev*, %struct.urdev** %4, align 8
  %65 = getelementptr inbounds %struct.urdev, %struct.urdev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cdev_add(%struct.TYPE_14__* %63, i32 %68, i32 1)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %44
  br label %153

73:                                               ; preds = %44
  %74 = load %struct.urdev*, %struct.urdev** %4, align 8
  %75 = getelementptr inbounds %struct.urdev, %struct.urdev* %74, i32 0, i32 3
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @READER_PUNCH_DEVTYPE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %73
  %83 = load %struct.urdev*, %struct.urdev** %4, align 8
  %84 = getelementptr inbounds %struct.urdev, %struct.urdev* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DEV_CLASS_UR_I, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %90 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %91 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %90, i32 0, i32 0
  %92 = call i8* @dev_name(i32* %91)
  %93 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.urdev*, %struct.urdev** %4, align 8
  %96 = getelementptr inbounds %struct.urdev, %struct.urdev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DEV_CLASS_UR_O, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %102 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %103 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %102, i32 0, i32 0
  %104 = call i8* @dev_name(i32* %103)
  %105 = call i32 @sprintf(i8* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %100, %94
  br label %126

107:                                              ; preds = %73
  %108 = load %struct.urdev*, %struct.urdev** %4, align 8
  %109 = getelementptr inbounds %struct.urdev, %struct.urdev* %108, i32 0, i32 3
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PRINTER_DEVTYPE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %118 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %119 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %118, i32 0, i32 0
  %120 = call i8* @dev_name(i32* %119)
  %121 = call i32 @sprintf(i8* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  br label %125

122:                                              ; preds = %107
  %123 = load i32, i32* @EOPNOTSUPP, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %153

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %106
  %127 = load i32, i32* @vmur_class, align 4
  %128 = load %struct.urdev*, %struct.urdev** %4, align 8
  %129 = getelementptr inbounds %struct.urdev, %struct.urdev* %128, i32 0, i32 1
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %134 = call i32 @device_create(i32 %127, i32* null, i32 %132, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %133)
  %135 = load %struct.urdev*, %struct.urdev** %4, align 8
  %136 = getelementptr inbounds %struct.urdev, %struct.urdev* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.urdev*, %struct.urdev** %4, align 8
  %138 = getelementptr inbounds %struct.urdev, %struct.urdev* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @IS_ERR(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %126
  %143 = load %struct.urdev*, %struct.urdev** %4, align 8
  %144 = getelementptr inbounds %struct.urdev, %struct.urdev* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @PTR_ERR(i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  br label %153

149:                                              ; preds = %126
  %150 = load %struct.urdev*, %struct.urdev** %4, align 8
  %151 = call i32 @urdev_put(%struct.urdev* %150)
  %152 = call i32 @mutex_unlock(i32* @vmur_mutex)
  store i32 0, i32* %2, align 4
  br label %166

153:                                              ; preds = %142, %122, %72
  %154 = load %struct.urdev*, %struct.urdev** %4, align 8
  %155 = getelementptr inbounds %struct.urdev, %struct.urdev* %154, i32 0, i32 1
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = call i32 @cdev_del(%struct.TYPE_14__* %156)
  %158 = load %struct.urdev*, %struct.urdev** %4, align 8
  %159 = getelementptr inbounds %struct.urdev, %struct.urdev* %158, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %159, align 8
  br label %160

160:                                              ; preds = %153, %41, %24
  %161 = load %struct.urdev*, %struct.urdev** %4, align 8
  %162 = call i32 @urdev_put(%struct.urdev* %161)
  br label %163

163:                                              ; preds = %160, %16
  %164 = call i32 @mutex_unlock(i32* @vmur_mutex)
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %163, %149
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.urdev* @urdev_get_from_cdev(%struct.ccw_device*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.TYPE_14__* @cdev_alloc(...) #1

declare dso_local i32 @cdev_init(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_add(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @urdev_put(%struct.urdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
