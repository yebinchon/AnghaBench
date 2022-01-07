; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32, i32, i32 }
%struct.dm_table = type { i32 }

@DM_SUSPEND_LOCKFS_FLAG = common dso_local global i32 0, align 4
@DM_SUSPEND_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMF_NOFLUSH_SUSPENDING = common dso_local global i32 0, align 4
@DMF_BLOCK_IO_FOR_SUSPEND = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@DMF_SUSPENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_suspend(%struct.mapped_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.dm_table* null, %struct.dm_table** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DM_SUSPEND_LOCKFS_FLAG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DM_SUSPEND_NOFLUSH_FLAG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %22 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %25 = call i64 @dm_suspended_md(%struct.mapped_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %122

30:                                               ; preds = %2
  %31 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %32 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %31)
  store %struct.dm_table* %32, %struct.dm_table** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @DMF_NOFLUSH_SUSPENDING, align 4
  %37 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %38 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %37, i32 0, i32 1
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %42 = call i32 @dm_table_presuspend_targets(%struct.dm_table* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %50 = call i32 @lock_fs(%struct.mapped_device* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %119

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %45, %40
  %56 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %57 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %56, i32 0, i32 3
  %58 = call i32 @down_write(i32* %57)
  %59 = load i32, i32* @DMF_BLOCK_IO_FOR_SUSPEND, align 4
  %60 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %61 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %60, i32 0, i32 1
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %64 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %63, i32 0, i32 3
  %65 = call i32 @up_write(i32* %64)
  %66 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %67 = call i64 @dm_request_based(%struct.mapped_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %55
  %70 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %71 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @stop_queue(i32 %72)
  br label %74

74:                                               ; preds = %69, %55
  %75 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %76 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @flush_workqueue(i32 %77)
  %79 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %80 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %81 = call i32 @dm_wait_for_completion(%struct.mapped_device* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %83 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %82, i32 0, i32 3
  %84 = call i32 @down_write(i32* %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %74
  %88 = load i32, i32* @DMF_NOFLUSH_SUSPENDING, align 4
  %89 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %90 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %89, i32 0, i32 1
  %91 = call i32 @clear_bit(i32 %88, i32* %90)
  br label %92

92:                                               ; preds = %87, %74
  %93 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %94 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %93, i32 0, i32 3
  %95 = call i32 @up_write(i32* %94)
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %100 = call i32 @dm_queue_flush(%struct.mapped_device* %99)
  %101 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %102 = call i64 @dm_request_based(%struct.mapped_device* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %106 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @start_queue(i32 %107)
  br label %109

109:                                              ; preds = %104, %98
  %110 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %111 = call i32 @unlock_fs(%struct.mapped_device* %110)
  br label %119

112:                                              ; preds = %92
  %113 = load i32, i32* @DMF_SUSPENDED, align 4
  %114 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %115 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %114, i32 0, i32 1
  %116 = call i32 @set_bit(i32 %113, i32* %115)
  %117 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %118 = call i32 @dm_table_postsuspend_targets(%struct.dm_table* %117)
  br label %119

119:                                              ; preds = %112, %109, %53
  %120 = load %struct.dm_table*, %struct.dm_table** %5, align 8
  %121 = call i32 @dm_table_put(%struct.dm_table* %120)
  br label %122

122:                                              ; preds = %119, %27
  %123 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %124 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dm_table_presuspend_targets(%struct.dm_table*) #1

declare dso_local i32 @lock_fs(%struct.mapped_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @dm_request_based(%struct.mapped_device*) #1

declare dso_local i32 @stop_queue(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @dm_wait_for_completion(%struct.mapped_device*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dm_queue_flush(%struct.mapped_device*) #1

declare dso_local i32 @start_queue(i32) #1

declare dso_local i32 @unlock_fs(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_postsuspend_targets(%struct.dm_table*) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
