; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_table_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_table_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32, i32 }
%struct.hash_cell = type { %struct.dm_table*, %struct.mapped_device* }
%struct.dm_table = type { i32 }
%struct.mapped_device = type { i32 }
%struct.target_type = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can't replace immutable target type %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DM_TYPE_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"can't change device type after initial table load.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"unable to set up device queue for new table.\00", align 1
@_hash_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"device has been removed from the dev hash table.\00", align 1
@DM_INACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*, i64)* @table_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_load(%struct.dm_ioctl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_cell*, align 8
  %8 = alloca %struct.dm_table*, align 8
  %9 = alloca %struct.mapped_device*, align 8
  %10 = alloca %struct.target_type*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %12 = call %struct.mapped_device* @find_device(%struct.dm_ioctl* %11)
  store %struct.mapped_device* %12, %struct.mapped_device** %9, align 8
  %13 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %14 = icmp ne %struct.mapped_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %144

18:                                               ; preds = %2
  %19 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %20 = call i32 @get_mode(%struct.dm_ioctl* %19)
  %21 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %22 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %25 = call i32 @dm_table_create(%struct.dm_table** %8, i32 %20, i32 %23, %struct.mapped_device* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %140

29:                                               ; preds = %18
  %30 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %31 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @populate_table(%struct.dm_table* %30, %struct.dm_ioctl* %31, i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %38 = call i32 @dm_table_destroy(%struct.dm_table* %37)
  br label %140

39:                                               ; preds = %29
  %40 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %41 = call %struct.target_type* @dm_get_immutable_target_type(%struct.mapped_device* %40)
  store %struct.target_type* %41, %struct.target_type** %10, align 8
  %42 = load %struct.target_type*, %struct.target_type** %10, align 8
  %43 = icmp ne %struct.target_type* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.target_type*, %struct.target_type** %10, align 8
  %46 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %47 = call %struct.target_type* @dm_table_get_immutable_target_type(%struct.dm_table* %46)
  %48 = icmp ne %struct.target_type* %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.target_type*, %struct.target_type** %10, align 8
  %51 = getelementptr inbounds %struct.target_type, %struct.target_type* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %55 = call i32 @dm_table_destroy(%struct.dm_table* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %140

58:                                               ; preds = %44, %39
  %59 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %60 = call i32 @dm_lock_md_type(%struct.mapped_device* %59)
  %61 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %62 = call i64 @dm_get_md_type(%struct.mapped_device* %61)
  %63 = load i64, i64* @DM_TYPE_NONE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %67 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %68 = call i64 @dm_table_get_type(%struct.dm_table* %67)
  %69 = call i32 @dm_set_md_type(%struct.mapped_device* %66, i64 %68)
  br label %85

70:                                               ; preds = %58
  %71 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %72 = call i64 @dm_get_md_type(%struct.mapped_device* %71)
  %73 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %74 = call i64 @dm_table_get_type(%struct.dm_table* %73)
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %79 = call i32 @dm_table_destroy(%struct.dm_table* %78)
  %80 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %81 = call i32 @dm_unlock_md_type(%struct.mapped_device* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %140

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %65
  %86 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %87 = call i32 @dm_setup_md_queue(%struct.mapped_device* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %93 = call i32 @dm_table_destroy(%struct.dm_table* %92)
  %94 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %95 = call i32 @dm_unlock_md_type(%struct.mapped_device* %94)
  br label %140

96:                                               ; preds = %85
  %97 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %98 = call i32 @dm_unlock_md_type(%struct.mapped_device* %97)
  %99 = call i32 @down_write(i32* @_hash_lock)
  %100 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %101 = call %struct.hash_cell* @dm_get_mdptr(%struct.mapped_device* %100)
  store %struct.hash_cell* %101, %struct.hash_cell** %7, align 8
  %102 = load %struct.hash_cell*, %struct.hash_cell** %7, align 8
  %103 = icmp ne %struct.hash_cell* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct.hash_cell*, %struct.hash_cell** %7, align 8
  %106 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %105, i32 0, i32 1
  %107 = load %struct.mapped_device*, %struct.mapped_device** %106, align 8
  %108 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %109 = icmp ne %struct.mapped_device* %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104, %96
  %111 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %113 = call i32 @dm_table_destroy(%struct.dm_table* %112)
  %114 = call i32 @up_write(i32* @_hash_lock)
  %115 = load i32, i32* @ENXIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %140

117:                                              ; preds = %104
  %118 = load %struct.hash_cell*, %struct.hash_cell** %7, align 8
  %119 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %118, i32 0, i32 0
  %120 = load %struct.dm_table*, %struct.dm_table** %119, align 8
  %121 = icmp ne %struct.dm_table* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.hash_cell*, %struct.hash_cell** %7, align 8
  %124 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %123, i32 0, i32 0
  %125 = load %struct.dm_table*, %struct.dm_table** %124, align 8
  %126 = call i32 @dm_table_destroy(%struct.dm_table* %125)
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.dm_table*, %struct.dm_table** %8, align 8
  %129 = load %struct.hash_cell*, %struct.hash_cell** %7, align 8
  %130 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %129, i32 0, i32 0
  store %struct.dm_table* %128, %struct.dm_table** %130, align 8
  %131 = call i32 @up_write(i32* @_hash_lock)
  %132 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %133 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %134 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %138 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %139 = call i32 @__dev_status(%struct.mapped_device* %137, %struct.dm_ioctl* %138)
  br label %140

140:                                              ; preds = %127, %110, %90, %76, %49, %36, %28
  %141 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %142 = call i32 @dm_put(%struct.mapped_device* %141)
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %15
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.mapped_device* @find_device(%struct.dm_ioctl*) #1

declare dso_local i32 @dm_table_create(%struct.dm_table**, i32, i32, %struct.mapped_device*) #1

declare dso_local i32 @get_mode(%struct.dm_ioctl*) #1

declare dso_local i32 @populate_table(%struct.dm_table*, %struct.dm_ioctl*, i64) #1

declare dso_local i32 @dm_table_destroy(%struct.dm_table*) #1

declare dso_local %struct.target_type* @dm_get_immutable_target_type(%struct.mapped_device*) #1

declare dso_local %struct.target_type* @dm_table_get_immutable_target_type(%struct.dm_table*) #1

declare dso_local i32 @DMWARN(i8*, ...) #1

declare dso_local i32 @dm_lock_md_type(%struct.mapped_device*) #1

declare dso_local i64 @dm_get_md_type(%struct.mapped_device*) #1

declare dso_local i32 @dm_set_md_type(%struct.mapped_device*, i64) #1

declare dso_local i64 @dm_table_get_type(%struct.dm_table*) #1

declare dso_local i32 @dm_unlock_md_type(%struct.mapped_device*) #1

declare dso_local i32 @dm_setup_md_queue(%struct.mapped_device*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @dm_get_mdptr(%struct.mapped_device*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
