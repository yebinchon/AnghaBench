; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_do_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_do_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32 }
%struct.mapped_device = type { i32 }

@DM_SUSPEND_LOCKFS_FLAG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DM_SKIP_LOCKFS_FLAG = common dso_local global i32 0, align 4
@DM_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@DM_SUSPEND_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*)* @do_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_suspend(%struct.dm_ioctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_ioctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mapped_device*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @DM_SUSPEND_LOCKFS_FLAG, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %9 = call %struct.mapped_device* @find_device(%struct.dm_ioctl* %8)
  store %struct.mapped_device* %9, %struct.mapped_device** %6, align 8
  %10 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %11 = icmp ne %struct.mapped_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %17 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DM_SKIP_LOCKFS_FLAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @DM_SUSPEND_LOCKFS_FLAG, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %29 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DM_NOFLUSH_FLAG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @DM_SUSPEND_NOFLUSH_FLAG, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %40 = call i32 @dm_suspended_md(%struct.mapped_device* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dm_suspend(%struct.mapped_device* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %54

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %38
  %51 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %52 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %53 = call i32 @__dev_status(%struct.mapped_device* %51, %struct.dm_ioctl* %52)
  br label %54

54:                                               ; preds = %50, %48
  %55 = load %struct.mapped_device*, %struct.mapped_device** %6, align 8
  %56 = call i32 @dm_put(%struct.mapped_device* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.mapped_device* @find_device(%struct.dm_ioctl*) #1

declare dso_local i32 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i32 @dm_suspend(%struct.mapped_device*, i32) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
