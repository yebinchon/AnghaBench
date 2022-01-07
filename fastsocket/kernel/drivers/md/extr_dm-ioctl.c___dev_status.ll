; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c___dev_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c___dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.dm_ioctl = type { i32, i8*, i32, i32, i32 }
%struct.gendisk = type { i32 }
%struct.dm_table = type { i32 }

@DM_SUSPEND_FLAG = common dso_local global i32 0, align 4
@DM_READONLY_FLAG = common dso_local global i32 0, align 4
@DM_ACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@DM_QUERY_INACTIVE_TABLE_FLAG = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*, %struct.dm_ioctl*)* @__dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dev_status(%struct.mapped_device* %0, %struct.dm_ioctl* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.dm_table*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %4, align 8
  %7 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %8 = call %struct.gendisk* @dm_disk(%struct.mapped_device* %7)
  store %struct.gendisk* %8, %struct.gendisk** %5, align 8
  %9 = load i32, i32* @DM_SUSPEND_FLAG, align 4
  %10 = load i32, i32* @DM_READONLY_FLAG, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DM_ACTIVE_PRESENT_FLAG, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %16 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %20 = call i64 @dm_suspended_md(%struct.mapped_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @DM_SUSPEND_FLAG, align 4
  %24 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %25 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %30 = call i32 @disk_devt(%struct.gendisk* %29)
  %31 = call i32 @huge_encode_dev(i32 %30)
  %32 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %33 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %35 = call i32 @dm_open_count(%struct.mapped_device* %34)
  %36 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %37 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %39 = call i32 @dm_get_event_nr(%struct.mapped_device* %38)
  %40 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %41 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %43 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %42, i32 0, i32 1
  store i8* null, i8** %43, align 8
  %44 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %45 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %44)
  store %struct.dm_table* %45, %struct.dm_table** %6, align 8
  %46 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %47 = icmp ne %struct.dm_table* %46, null
  br i1 %47, label %48, label %78

48:                                               ; preds = %28
  %49 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %50 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DM_QUERY_INACTIVE_TABLE_FLAG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %48
  %56 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %57 = call i64 @get_disk_ro(%struct.gendisk* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* @DM_READONLY_FLAG, align 4
  %61 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %62 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %67 = call i8* @dm_table_get_num_targets(%struct.dm_table* %66)
  %68 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %69 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %65, %48
  %71 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %72 = call i32 @dm_table_put(%struct.dm_table* %71)
  %73 = load i32, i32* @DM_ACTIVE_PRESENT_FLAG, align 4
  %74 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %75 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %70, %28
  %79 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %80 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DM_QUERY_INACTIVE_TABLE_FLAG, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %78
  %86 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %87 = call %struct.dm_table* @dm_get_inactive_table(%struct.mapped_device* %86)
  store %struct.dm_table* %87, %struct.dm_table** %6, align 8
  %88 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %89 = icmp ne %struct.dm_table* %88, null
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %92 = call i32 @dm_table_get_mode(%struct.dm_table* %91)
  %93 = load i32, i32* @FMODE_WRITE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* @DM_READONLY_FLAG, align 4
  %98 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %99 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %104 = call i8* @dm_table_get_num_targets(%struct.dm_table* %103)
  %105 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %106 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.dm_table*, %struct.dm_table** %6, align 8
  %108 = call i32 @dm_table_put(%struct.dm_table* %107)
  br label %109

109:                                              ; preds = %102, %85
  br label %110

110:                                              ; preds = %109, %78
  ret void
}

declare dso_local %struct.gendisk* @dm_disk(%struct.mapped_device*) #1

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @disk_devt(%struct.gendisk*) #1

declare dso_local i32 @dm_open_count(%struct.mapped_device*) #1

declare dso_local i32 @dm_get_event_nr(%struct.mapped_device*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

declare dso_local i64 @get_disk_ro(%struct.gendisk*) #1

declare dso_local i8* @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

declare dso_local %struct.dm_table* @dm_get_inactive_table(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_get_mode(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
