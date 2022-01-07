; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_known_to_basic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_known_to_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32, %struct.TYPE_4__*, i8*, i32, %struct.dasd_block* }
%struct.TYPE_4__ = type { i32 }
%struct.dasd_block = type { i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@dasd_debugfs_root_entry = common dso_local global i32 0, align 4
@dasd_global_profile_level = common dso_local global i64 0, align 8
@DASD_PROFILE_ON = common dso_local global i64 0, align 8
@debug_sprintf_view = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@DBF_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"debug area created\00", align 1
@DASD_STATE_BASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_state_known_to_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_state_known_to_basic(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_block*, align 8
  %5 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 5
  %8 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  store %struct.dasd_block* %8, %struct.dasd_block** %4, align 8
  %9 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %10 = icmp ne %struct.dasd_block* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %13 = call i32 @dasd_gendisk_alloc(%struct.dasd_block* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %83

18:                                               ; preds = %11
  %19 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %20 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @dasd_debugfs_root_entry, align 4
  %25 = call i8* @dasd_debugfs_setup(i32 %23, i32 %24)
  %26 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %29 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %28, i32 0, i32 0
  %30 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %31 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @dasd_profile_init(i32* %29, i8* %32)
  %34 = load i64, i64* @dasd_global_profile_level, align 8
  %35 = load i64, i64* @DASD_PROFILE_ON, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %18
  %38 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %39 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %38, i32 0, i32 5
  %40 = load %struct.dasd_block*, %struct.dasd_block** %39, align 8
  %41 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %40, i32 0, i32 0
  %42 = call i32 @dasd_profile_on(i32* %41)
  br label %43

43:                                               ; preds = %37, %18
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %46 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @dev_name(i32* %48)
  %50 = load i32, i32* @dasd_debugfs_root_entry, align 4
  %51 = call i8* @dasd_debugfs_setup(i32 %49, i32 %50)
  %52 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %53 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %55 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %54, i32 0, i32 4
  %56 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %57 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @dasd_profile_init(i32* %55, i8* %58)
  %60 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %61 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @dev_name(i32* %63)
  %65 = call i32 @debug_register(i32 %64, i32 4, i32 1, i32 64)
  %66 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %67 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %69 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @debug_register_view(i32 %70, i32* @debug_sprintf_view)
  %72 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %73 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DBF_WARNING, align 4
  %76 = call i32 @debug_set_level(i32 %74, i32 %75)
  %77 = load i32, i32* @DBF_EMERG, align 4
  %78 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %79 = call i32 @DBF_DEV_EVENT(i32 %77, %struct.dasd_device* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @DASD_STATE_BASIC, align 4
  %81 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %82 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %44, %16
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @dasd_gendisk_alloc(%struct.dasd_block*) #1

declare dso_local i8* @dasd_debugfs_setup(i32, i32) #1

declare dso_local i32 @dasd_profile_init(i32*, i8*) #1

declare dso_local i32 @dasd_profile_on(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @debug_register(i32, i32, i32, i32) #1

declare dso_local i32 @debug_register_view(i32, i32*) #1

declare dso_local i32 @debug_set_level(i32, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
