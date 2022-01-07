; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_basic_to_known.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_basic_to_known.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@DBF_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%p debug area deleted\00", align 1
@DASD_STATE_KNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_state_basic_to_known to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_state_basic_to_known(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %5 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %6 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %5, i32 0, i32 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = call i32 @dasd_profile_exit(i32* %13)
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @debugfs_remove(i64 %26)
  br label %28

28:                                               ; preds = %21, %9
  %29 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @dasd_gendisk_free(%struct.TYPE_3__* %31)
  %33 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %34 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %33, i32 0, i32 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @dasd_block_clear_timer(%struct.TYPE_3__* %35)
  br label %37

37:                                               ; preds = %28, %1
  %38 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %39 = call i32 @dasd_flush_device_queue(%struct.dasd_device* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %79

44:                                               ; preds = %37
  %45 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %46 = call i32 @dasd_device_clear_timer(%struct.dasd_device* %45)
  %47 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %48 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %47, i32 0, i32 3
  %49 = call i32 @dasd_profile_exit(i32* %48)
  %50 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %51 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %56 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @debugfs_remove(i64 %57)
  br label %59

59:                                               ; preds = %54, %44
  %60 = load i32, i32* @DBF_EMERG, align 4
  %61 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %62 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %63 = call i32 @DBF_DEV_EVENT(i32 %60, %struct.dasd_device* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.dasd_device* %62)
  %64 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %65 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %70 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @debug_unregister(i32* %71)
  %73 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %74 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %59
  %76 = load i32, i32* @DASD_STATE_KNOWN, align 4
  %77 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %78 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %42
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @dasd_profile_exit(i32*) #1

declare dso_local i32 @debugfs_remove(i64) #1

declare dso_local i32 @dasd_gendisk_free(%struct.TYPE_3__*) #1

declare dso_local i32 @dasd_block_clear_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @dasd_flush_device_queue(%struct.dasd_device*) #1

declare dso_local i32 @dasd_device_clear_timer(%struct.dasd_device*) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, %struct.dasd_device*) #1

declare dso_local i32 @debug_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
