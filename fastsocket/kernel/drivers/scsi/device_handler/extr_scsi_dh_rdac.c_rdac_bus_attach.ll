; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_bus_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_3__*, %struct.scsi_dh_data* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_dh_data = type { i64, i32* }
%struct.rdac_dh_data = type { %struct.TYPE_4__*, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ARRAY_LABEL_LEN = common dso_local global i32 0, align 4
@UNIQUE_ID_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: Attach failed\0A\00", align 1
@RDAC_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rdac_dh = common dso_local global i32 0, align 4
@UNINITIALIZED_LUN = common dso_local global i32 0, align 4
@RDAC_STATE_ACTIVE = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: LUN %d (%s) (%s)\0A\00", align 1
@mode = common dso_local global i32* null, align 8
@lun_state = common dso_local global i32* null, align 8
@list_lock = common dso_local global i32 0, align 4
@release_controller = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: not attached\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @rdac_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdac_bus_attach(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_dh_data*, align 8
  %5 = alloca %struct.rdac_dh_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %12 = load i32, i32* @ARRAY_LABEL_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @UNIQUE_ID_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.scsi_dh_data* @kzalloc(i32 48, i32 %19)
  store %struct.scsi_dh_data* %20, %struct.scsi_dh_data** %4, align 8
  %21 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %22 = icmp ne %struct.scsi_dh_data* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %26 = load i32, i32* @RDAC_NAME, align 4
  %27 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %24, %struct.scsi_device* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %138

30:                                               ; preds = %1
  %31 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %31, i32 0, i32 1
  store i32* @rdac_dh, i32** %32, align 8
  %33 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_dh_data, %struct.scsi_dh_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.rdac_dh_data*
  store %struct.rdac_dh_data* %36, %struct.rdac_dh_data** %5, align 8
  %37 = load i32, i32* @UNINITIALIZED_LUN, align 4
  %38 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %39 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @RDAC_STATE_ACTIVE, align 4
  %41 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %42 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %44 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %45 = call i32 @get_lun_info(%struct.scsi_device* %43, %struct.rdac_dh_data* %44, i8* %15, i8* %18)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SCSI_DH_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  br label %129

50:                                               ; preds = %30
  %51 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %52 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %53 = call i32 @initialize_controller(%struct.scsi_device* %51, %struct.rdac_dh_data* %52, i8* %15, i8* %18)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @SCSI_DH_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %129

58:                                               ; preds = %50
  %59 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %60 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %61 = call i32 @check_ownership(%struct.scsi_device* %59, %struct.rdac_dh_data* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SCSI_DH_OK, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %120

66:                                               ; preds = %58
  %67 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %68 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %69 = call i32 @set_mode_select(%struct.scsi_device* %67, %struct.rdac_dh_data* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SCSI_DH_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %120

74:                                               ; preds = %66
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = call i32 @try_module_get(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %120

79:                                               ; preds = %74
  %80 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_lock_irqsave(i32 %84, i64 %85)
  %87 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %88 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %89 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %88, i32 0, i32 1
  store %struct.scsi_dh_data* %87, %struct.scsi_dh_data** %89, align 8
  %90 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32 %94, i64 %95)
  %97 = load i32, i32* @KERN_NOTICE, align 4
  %98 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %99 = load i32, i32* @RDAC_NAME, align 4
  %100 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %101 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** @mode, align 8
  %104 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %105 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** @lun_state, align 8
  %112 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %113 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %97, %struct.scsi_device* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %102, i32 %110, i32 %118)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %138

120:                                              ; preds = %78, %73, %65
  %121 = call i32 @spin_lock(i32* @list_lock)
  %122 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  %123 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* @release_controller, align 4
  %127 = call i32 @kref_put(i32* %125, i32 %126)
  %128 = call i32 @spin_unlock(i32* @list_lock)
  br label %129

129:                                              ; preds = %120, %57, %49
  %130 = load %struct.scsi_dh_data*, %struct.scsi_dh_data** %4, align 8
  %131 = call i32 @kfree(%struct.scsi_dh_data* %130)
  %132 = load i32, i32* @KERN_ERR, align 4
  %133 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %134 = load i32, i32* @RDAC_NAME, align 4
  %135 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %132, %struct.scsi_device* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %138

138:                                              ; preds = %129, %79, %23
  %139 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.scsi_dh_data* @kzalloc(i32, i32) #2

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #2

declare dso_local i32 @get_lun_info(%struct.scsi_device*, %struct.rdac_dh_data*, i8*, i8*) #2

declare dso_local i32 @initialize_controller(%struct.scsi_device*, %struct.rdac_dh_data*, i8*, i8*) #2

declare dso_local i32 @check_ownership(%struct.scsi_device*, %struct.rdac_dh_data*) #2

declare dso_local i32 @set_mode_select(%struct.scsi_device*, %struct.rdac_dh_data*) #2

declare dso_local i32 @try_module_get(i32) #2

declare dso_local i32 @spin_lock_irqsave(i32, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @kref_put(i32*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @kfree(%struct.scsi_dh_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
