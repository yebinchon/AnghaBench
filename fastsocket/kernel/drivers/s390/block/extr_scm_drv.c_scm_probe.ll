; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_drv.c_scm_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_scm_drv.c_scm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.scm_blk_dev = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@OP_STATE_GOOD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scm_device*)* @scm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scm_probe(%struct.scm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scm_device*, align 8
  %4 = alloca %struct.scm_blk_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.scm_device* %0, %struct.scm_device** %3, align 8
  %6 = call i32 @SCM_LOG(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %8 = call i32 @SCM_LOG_STATE(i32 2, %struct.scm_device* %7)
  %9 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %10 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OP_STATE_GOOD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.scm_blk_dev* @kzalloc(i32 4, i32 %19)
  store %struct.scm_blk_dev* %20, %struct.scm_blk_dev** %4, align 8
  %21 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %22 = icmp ne %struct.scm_blk_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %57

26:                                               ; preds = %18
  %27 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %28 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %31 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %30, i32 0, i32 1
  %32 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %33 = call i32 @dev_set_drvdata(i32* %31, %struct.scm_blk_dev* %32)
  %34 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %35 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %38 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %39 = call i32 @scm_blk_dev_setup(%struct.scm_blk_dev* %37, %struct.scm_device* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %26
  %43 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %44 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_irq(i32* %44)
  %46 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %47 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %46, i32 0, i32 1
  %48 = call i32 @dev_set_drvdata(i32* %47, %struct.scm_blk_dev* null)
  %49 = load %struct.scm_device*, %struct.scm_device** %3, align 8
  %50 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %4, align 8
  %53 = call i32 @kfree(%struct.scm_blk_dev* %52)
  br label %55

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %23, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @SCM_LOG(i32, i8*) #1

declare dso_local i32 @SCM_LOG_STATE(i32, %struct.scm_device*) #1

declare dso_local %struct.scm_blk_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.scm_blk_dev*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @scm_blk_dev_setup(%struct.scm_blk_dev*, %struct.scm_device*) #1

declare dso_local i32 @kfree(%struct.scm_blk_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
