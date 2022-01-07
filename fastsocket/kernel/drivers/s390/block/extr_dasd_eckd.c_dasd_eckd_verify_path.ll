; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_verify_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_verify_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_verification_work_data = type { i32, i32, i32, %struct.dasd_device* }
%struct.dasd_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@dasd_path_verification_mutex = common dso_local global i32 0, align 4
@path_verification_worker = common dso_local global %struct.path_verification_work_data* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@do_path_verification_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32)* @dasd_eckd_verify_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_verify_path(%struct.dasd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.path_verification_work_data*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = load i32, i32* @GFP_DMA, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.path_verification_work_data* @kmalloc(i32 24, i32 %9)
  store %struct.path_verification_work_data* %10, %struct.path_verification_work_data** %6, align 8
  %11 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %6, align 8
  %12 = icmp ne %struct.path_verification_work_data* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = call i64 @mutex_trylock(i32* @dasd_path_verification_mutex)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** @path_verification_worker, align 8
  store %struct.path_verification_work_data* %17, %struct.path_verification_work_data** %6, align 8
  %18 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %6, align 8
  %19 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %16
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %6, align 8
  %26 = call i32 @memset(%struct.path_verification_work_data* %25, i32 0, i32 24)
  %27 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %6, align 8
  %28 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %24, %23
  %30 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %6, align 8
  %31 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %30, i32 0, i32 1
  %32 = load i32, i32* @do_path_verification_work, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %35 = call i32 @dasd_get_device(%struct.dasd_device* %34)
  %36 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %37 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %6, align 8
  %38 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %37, i32 0, i32 3
  store %struct.dasd_device* %36, %struct.dasd_device** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %6, align 8
  %41 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.path_verification_work_data*, %struct.path_verification_work_data** %6, align 8
  %43 = getelementptr inbounds %struct.path_verification_work_data, %struct.path_verification_work_data* %42, i32 0, i32 1
  %44 = call i32 @schedule_work(i32* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %29, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.path_verification_work_data* @kmalloc(i32, i32) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @memset(%struct.path_verification_work_data*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dasd_get_device(%struct.dasd_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
