; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_set_readonly.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_set_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.block_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"md: %s still in use.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.block_device*)* @md_set_readonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_set_readonly(%struct.mddev* %0, %struct.block_device* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.block_device* %1, %struct.block_device** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 6
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load %struct.block_device*, %struct.block_device** %4, align 8
  %13 = icmp ne %struct.block_device* %12, null
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = icmp sgt i32 %11, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.mddev*, %struct.mddev** %3, align 8
  %20 = call i32 @mdname(%struct.mddev* %19)
  %21 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %61

24:                                               ; preds = %2
  %25 = load %struct.block_device*, %struct.block_device** %4, align 8
  %26 = icmp ne %struct.block_device* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.block_device*, %struct.block_device** %4, align 8
  %29 = call i32 @sync_blockdev(%struct.block_device* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.mddev*, %struct.mddev** %3, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load %struct.mddev*, %struct.mddev** %3, align 8
  %37 = call i32 @__md_stop_writes(%struct.mddev* %36)
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.mddev*, %struct.mddev** %3, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %61

45:                                               ; preds = %35
  %46 = load %struct.mddev*, %struct.mddev** %3, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.mddev*, %struct.mddev** %3, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @set_disk_ro(i32 %50, i32 1)
  %52 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %53 = load %struct.mddev*, %struct.mddev** %3, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 3
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = load %struct.mddev*, %struct.mddev** %3, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sysfs_notify_dirent_safe(i32 %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %45, %30
  br label %61

61:                                               ; preds = %60, %44, %18
  %62 = load %struct.mddev*, %struct.mddev** %3, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @sync_blockdev(%struct.block_device*) #1

declare dso_local i32 @__md_stop_writes(%struct.mddev*) #1

declare dso_local i32 @set_disk_ro(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
