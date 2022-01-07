; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_handle_summary_unit_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_alias.c_dasd_alias_handle_summary_unit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i64 }
%struct.irb = type { i32 }
%struct.alias_lcu = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8, i32, %struct.dasd_device* }
%struct.dasd_eckd_private = type { %struct.alias_lcu* }

@DBF_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"eckd handle summary unit check: reason\00", align 1
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"eckd handle summary unit check: no reason code available\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"device not ready to handle summary unit check (no lcu structure)\00", align 1
@NEED_UAC_UPDATE = common dso_local global i32 0, align 4
@UPDATE_PENDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"device is in offline processing, don't do summary unit check handling\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"previous instance of summary unit check worker still pending\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_alias_handle_summary_unit_check(%struct.dasd_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.alias_lcu*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.dasd_eckd_private*, align 8
  %8 = alloca i8*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %7, align 8
  %13 = load %struct.irb*, %struct.irb** %4, align 8
  %14 = call i8* @dasd_get_sense(%struct.irb* %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %6, align 1
  %21 = load i32, i32* @DBF_NOTICE, align 4
  %22 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %21, %struct.dasd_device* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @DBF_WARNING, align 4
  %28 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %29 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %27, %struct.dasd_device* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  br label %96

30:                                               ; preds = %17
  %31 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  %32 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %31, i32 0, i32 0
  %33 = load %struct.alias_lcu*, %struct.alias_lcu** %32, align 8
  store %struct.alias_lcu* %33, %struct.alias_lcu** %5, align 8
  %34 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %35 = icmp ne %struct.alias_lcu* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @DBF_WARNING, align 4
  %38 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %39 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %37, %struct.dasd_device* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  br label %96

40:                                               ; preds = %30
  %41 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %42 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %41, i32 0, i32 2
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %45 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %46 = call i32 @_stop_all_devices_on_lcu(%struct.alias_lcu* %44, %struct.dasd_device* %45)
  %47 = load i32, i32* @NEED_UAC_UPDATE, align 4
  %48 = load i32, i32* @UPDATE_PENDING, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  %51 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %50, i32 0, i32 0
  %52 = load %struct.alias_lcu*, %struct.alias_lcu** %51, align 8
  %53 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 8
  %56 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %57 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %56, i32 0, i32 0
  %58 = call i64 @list_empty(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %40
  %61 = load i32, i32* @DBF_WARNING, align 4
  %62 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %63 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %61, %struct.dasd_device* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %65 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock(i32* %65)
  br label %96

67:                                               ; preds = %40
  %68 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %69 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load %struct.dasd_device*, %struct.dasd_device** %70, align 8
  %72 = icmp ne %struct.dasd_device* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i32, i32* @DBF_WARNING, align 4
  %75 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %76 = call i32 (i32, %struct.dasd_device*, i8*, i8*, ...) @DBF_DEV_EVENT(i32 %74, %struct.dasd_device* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %77 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %78 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %77, i32 0, i32 2
  %79 = call i32 @spin_unlock(i32* %78)
  br label %96

80:                                               ; preds = %67
  %81 = load i8, i8* %6, align 1
  %82 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %83 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i8 %81, i8* %84, align 8
  %85 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %86 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %87 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store %struct.dasd_device* %85, %struct.dasd_device** %88, align 8
  %89 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %90 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %89, i32 0, i32 2
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.alias_lcu*, %struct.alias_lcu** %5, align 8
  %93 = getelementptr inbounds %struct.alias_lcu, %struct.alias_lcu* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = call i32 @schedule_work(i32* %94)
  br label %96

96:                                               ; preds = %80, %73, %60, %36, %26
  ret void
}

declare dso_local i8* @dasd_get_sense(%struct.irb*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_stop_all_devices_on_lcu(%struct.alias_lcu*, %struct.dasd_device*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
