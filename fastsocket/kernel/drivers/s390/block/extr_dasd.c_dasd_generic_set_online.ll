; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_set_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_generic_set_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_discipline = type { i32 (%struct.dasd_device*)*, i32, i32 }
%struct.dasd_device = type opaque
%struct.ccw_device = type { i32 }
%struct.dasd_device.0 = type { i32, i64, i64, %struct.dasd_discipline*, %struct.dasd_discipline* }

@DASD_FEATURE_INITIAL_ONLINE = common dso_local global i32 0, align 4
@DASD_FEATURE_USEDIAG = common dso_local global i32 0, align 4
@dasd_diag_discipline_pointer = common dso_local global %struct.dasd_discipline* null, align 8
@.str = private unnamed_addr constant [70 x i8] c"%s Setting the DASD online failed because of missing DIAG discipline\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"%s Setting the DASD online with discipline %s failed with rc=%i\0A\00", align 1
@DASD_STATE_ONLINE = common dso_local global i32 0, align 4
@DASD_STATE_KNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"%s Setting the DASD online failed because of a missing discipline\0A\00", align 1
@DASD_STATE_NEW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"dasd_generic device %s found\0A\00", align 1
@dasd_init_waitq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_set_online(%struct.ccw_device* %0, %struct.dasd_discipline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca %struct.dasd_discipline*, align 8
  %6 = alloca %struct.dasd_discipline*, align 8
  %7 = alloca %struct.dasd_device.0*, align 8
  %8 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store %struct.dasd_discipline* %1, %struct.dasd_discipline** %5, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = load i32, i32* @DASD_FEATURE_INITIAL_ONLINE, align 4
  %11 = call i32 @dasd_set_feature(%struct.ccw_device* %9, i32 %10, i32 0)
  %12 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %13 = call %struct.dasd_device.0* @dasd_create_device(%struct.ccw_device* %12)
  store %struct.dasd_device.0* %13, %struct.dasd_device.0** %7, align 8
  %14 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %15 = call i64 @IS_ERR(%struct.dasd_device.0* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.dasd_device.0* %18)
  store i32 %19, i32* %3, align 4
  br label %147

20:                                               ; preds = %2
  %21 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  store %struct.dasd_discipline* %21, %struct.dasd_discipline** %6, align 8
  %22 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %23 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DASD_FEATURE_USEDIAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load %struct.dasd_discipline*, %struct.dasd_discipline** @dasd_diag_discipline_pointer, align 8
  %30 = icmp ne %struct.dasd_discipline* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %33 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %32, i32 0, i32 0
  %34 = call i32 @dev_name(i32* %33)
  %35 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %37 = call i32 @dasd_delete_device(%struct.dasd_device.0* %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %147

40:                                               ; preds = %28
  %41 = load %struct.dasd_discipline*, %struct.dasd_discipline** @dasd_diag_discipline_pointer, align 8
  store %struct.dasd_discipline* %41, %struct.dasd_discipline** %6, align 8
  br label %42

42:                                               ; preds = %40, %20
  %43 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  %44 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @try_module_get(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %50 = call i32 @dasd_delete_device(%struct.dasd_device.0* %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %147

53:                                               ; preds = %42
  %54 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %55 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @try_module_get(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  %61 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @module_put(i32 %62)
  %64 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %65 = call i32 @dasd_delete_device(%struct.dasd_device.0* %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %147

68:                                               ; preds = %53
  %69 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  %70 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %71 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %70, i32 0, i32 4
  store %struct.dasd_discipline* %69, %struct.dasd_discipline** %71, align 8
  %72 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %73 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %74 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %73, i32 0, i32 3
  store %struct.dasd_discipline* %72, %struct.dasd_discipline** %74, align 8
  %75 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %76 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %75, i32 0, i32 0
  %77 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %76, align 8
  %78 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %79 = bitcast %struct.dasd_device.0* %78 to %struct.dasd_device*
  %80 = call i32 %77(%struct.dasd_device* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %68
  %84 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %85 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %84, i32 0, i32 0
  %86 = call i32 @dev_name(i32* %85)
  %87 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %88 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89, i32 %90)
  %92 = load %struct.dasd_discipline*, %struct.dasd_discipline** %6, align 8
  %93 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @module_put(i32 %94)
  %96 = load %struct.dasd_discipline*, %struct.dasd_discipline** %5, align 8
  %97 = getelementptr inbounds %struct.dasd_discipline, %struct.dasd_discipline* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @module_put(i32 %98)
  %100 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %101 = call i32 @dasd_delete_device(%struct.dasd_device.0* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %147

103:                                              ; preds = %68
  %104 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %105 = load i32, i32* @DASD_STATE_ONLINE, align 4
  %106 = call i32 @dasd_set_target_state(%struct.dasd_device.0* %104, i32 %105)
  %107 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %108 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DASD_STATE_KNOWN, align 8
  %111 = icmp sle i64 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %103
  %113 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %114 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %113, i32 0, i32 0
  %115 = call i32 @dev_name(i32* %114)
  %116 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %8, align 4
  %119 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %120 = load i32, i32* @DASD_STATE_NEW, align 4
  %121 = call i32 @dasd_set_target_state(%struct.dasd_device.0* %119, i32 %120)
  %122 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %123 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %112
  %127 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %128 = getelementptr inbounds %struct.dasd_device.0, %struct.dasd_device.0* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @dasd_free_block(i64 %129)
  br label %131

131:                                              ; preds = %126, %112
  %132 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %133 = call i32 @dasd_delete_device(%struct.dasd_device.0* %132)
  br label %139

134:                                              ; preds = %103
  %135 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %136 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %135, i32 0, i32 0
  %137 = call i32 @dev_name(i32* %136)
  %138 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %134, %131
  %140 = load i32, i32* @dasd_init_waitq, align 4
  %141 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %142 = call i32 @_wait_for_device(%struct.dasd_device.0* %141)
  %143 = call i32 @wait_event(i32 %140, i32 %142)
  %144 = load %struct.dasd_device.0*, %struct.dasd_device.0** %7, align 8
  %145 = call i32 @dasd_put_device(%struct.dasd_device.0* %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %139, %83, %59, %48, %31, %17
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @dasd_set_feature(%struct.ccw_device*, i32, i32) #1

declare dso_local %struct.dasd_device.0* @dasd_create_device(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device.0*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_device.0*) #1

declare dso_local i32 @pr_warning(i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dasd_delete_device(%struct.dasd_device.0*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @dasd_set_target_state(%struct.dasd_device.0*, i32) #1

declare dso_local i32 @dasd_free_block(i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @_wait_for_device(%struct.dasd_device.0*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
