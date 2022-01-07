; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_do_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_do_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32, i32 }
%struct.hash_cell = type { %struct.dm_table*, %struct.mapped_device* }
%struct.dm_table = type { i32 }
%struct.mapped_device = type { i32 }

@DM_SUSPEND_LOCKFS_FLAG = common dso_local global i32 0, align 4
@_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"device doesn't appear to be in the dev hash table.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DM_INACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@DM_SKIP_LOCKFS_FLAG = common dso_local global i32 0, align 4
@DM_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@DM_SUSPEND_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@DM_UEVENT_GENERATED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*)* @do_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_resume(%struct.dm_ioctl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_ioctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hash_cell*, align 8
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca %struct.dm_table*, align 8
  %9 = alloca %struct.dm_table*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @DM_SUSPEND_LOCKFS_FLAG, align 4
  store i32 %10, i32* %5, align 4
  store %struct.dm_table* null, %struct.dm_table** %9, align 8
  %11 = call i32 @down_write(i32* @_hash_lock)
  %12 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %13 = call %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl* %12)
  store %struct.hash_cell* %13, %struct.hash_cell** %6, align 8
  %14 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %15 = icmp ne %struct.hash_cell* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = call i32 @DMDEBUG_LIMIT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @up_write(i32* @_hash_lock)
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %140

21:                                               ; preds = %1
  %22 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %23 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %22, i32 0, i32 1
  %24 = load %struct.mapped_device*, %struct.mapped_device** %23, align 8
  store %struct.mapped_device* %24, %struct.mapped_device** %7, align 8
  %25 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %26 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %25, i32 0, i32 0
  %27 = load %struct.dm_table*, %struct.dm_table** %26, align 8
  store %struct.dm_table* %27, %struct.dm_table** %8, align 8
  %28 = load %struct.hash_cell*, %struct.hash_cell** %6, align 8
  %29 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %28, i32 0, i32 0
  store %struct.dm_table* null, %struct.dm_table** %29, align 8
  %30 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %33 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = call i32 @up_write(i32* @_hash_lock)
  %37 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %38 = icmp ne %struct.dm_table* %37, null
  br i1 %38, label %39, label %99

39:                                               ; preds = %21
  %40 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %41 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DM_SKIP_LOCKFS_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @DM_SUSPEND_LOCKFS_FLAG, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %53 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DM_NOFLUSH_FLAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @DM_SUSPEND_NOFLUSH_FLAG, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %64 = call i64 @dm_suspended_md(%struct.mapped_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dm_suspend(%struct.mapped_device* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %72 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %73 = call %struct.dm_table* @dm_swap_table(%struct.mapped_device* %71, %struct.dm_table* %72)
  store %struct.dm_table* %73, %struct.dm_table** %9, align 8
  %74 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %75 = call i64 @IS_ERR(%struct.dm_table* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %79 = call i32 @dm_table_destroy(%struct.dm_table* %78)
  %80 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %81 = call i32 @dm_put(%struct.mapped_device* %80)
  %82 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %83 = call i32 @PTR_ERR(%struct.dm_table* %82)
  store i32 %83, i32* %2, align 4
  br label %140

84:                                               ; preds = %70
  %85 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %86 = call i32 @dm_table_get_mode(%struct.dm_table* %85)
  %87 = load i32, i32* @FMODE_WRITE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %92 = call i32 @dm_disk(%struct.mapped_device* %91)
  %93 = call i32 @set_disk_ro(i32 %92, i32 0)
  br label %98

94:                                               ; preds = %84
  %95 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %96 = call i32 @dm_disk(%struct.mapped_device* %95)
  %97 = call i32 @set_disk_ro(i32 %96, i32 1)
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %21
  %100 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %101 = call i64 @dm_suspended_md(%struct.mapped_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %105 = call i32 @dm_resume(%struct.mapped_device* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %103
  %109 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %110 = load i32, i32* @KOBJ_CHANGE, align 4
  %111 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %112 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dm_kobject_uevent(%struct.mapped_device* %109, i32 %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* @DM_UEVENT_GENERATED_FLAG, align 4
  %118 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %119 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %108, %103
  br label %123

123:                                              ; preds = %122, %99
  %124 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %125 = icmp ne %struct.dm_table* %124, null
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %128 = call i32 @dm_table_destroy(%struct.dm_table* %127)
  br label %129

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %134 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %135 = call i32 @__dev_status(%struct.mapped_device* %133, %struct.dm_ioctl* %134)
  br label %136

136:                                              ; preds = %132, %129
  %137 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %138 = call i32 @dm_put(%struct.mapped_device* %137)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %77, %16
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl*) #1

declare dso_local i32 @DMDEBUG_LIMIT(i8*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i32 @dm_suspend(%struct.mapped_device*, i32) #1

declare dso_local %struct.dm_table* @dm_swap_table(%struct.mapped_device*, %struct.dm_table*) #1

declare dso_local i64 @IS_ERR(%struct.dm_table*) #1

declare dso_local i32 @dm_table_destroy(%struct.dm_table*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @PTR_ERR(%struct.dm_table*) #1

declare dso_local i32 @dm_table_get_mode(%struct.dm_table*) #1

declare dso_local i32 @set_disk_ro(i32, i32) #1

declare dso_local i32 @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @dm_resume(%struct.mapped_device*) #1

declare dso_local i32 @dm_kobject_uevent(%struct.mapped_device*, i32, i32) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
