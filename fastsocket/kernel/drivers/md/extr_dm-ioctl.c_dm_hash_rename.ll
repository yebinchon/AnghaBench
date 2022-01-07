; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dm_hash_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dm_hash_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.dm_ioctl = type { i32, i8*, i32 }
%struct.hash_cell = type { i8*, %struct.mapped_device* }
%struct.dm_table = type { i32 }

@DM_UUID_FLAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_hash_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Unable to change %s on mapped device %s to one that already exists: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Unable to rename non-existent device, %s to %s%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"uuid \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [82 x i8] c"Unable to change uuid of mapped device %s to %s because uuid is already set to %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@DM_UEVENT_GENERATED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mapped_device* (%struct.dm_ioctl*, i8*)* @dm_hash_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mapped_device* @dm_hash_rename(%struct.dm_ioctl* %0, i8* %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hash_cell*, align 8
  %9 = alloca %struct.dm_table*, align 8
  %10 = alloca %struct.mapped_device*, align 8
  %11 = alloca i32, align 4
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %12 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %13 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DM_UUID_FLAG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kstrdup(i8* %20, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.mapped_device* @ERR_PTR(i32 %27)
  store %struct.mapped_device* %28, %struct.mapped_device** %3, align 8
  br label %159

29:                                               ; preds = %2
  %30 = call i32 @down_write(i32* @_hash_lock)
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call %struct.hash_cell* @__get_uuid_cell(i8* %34)
  store %struct.hash_cell* %35, %struct.hash_cell** %8, align 8
  br label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.hash_cell* @__get_name_cell(i8* %37)
  store %struct.hash_cell* %38, %struct.hash_cell** %8, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %41 = icmp ne %struct.hash_cell* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %47 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %48 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @DMWARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %49, i8* %50)
  %52 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %53 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %52, i32 0, i32 1
  %54 = load %struct.mapped_device*, %struct.mapped_device** %53, align 8
  %55 = call i32 @dm_put(%struct.mapped_device* %54)
  %56 = call i32 @up_write(i32* @_hash_lock)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @kfree(i8* %57)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.mapped_device* @ERR_PTR(i32 %60)
  store %struct.mapped_device* %61, %struct.mapped_device** %3, align 8
  br label %159

62:                                               ; preds = %39
  %63 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %64 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call %struct.hash_cell* @__get_name_cell(i8* %65)
  store %struct.hash_cell* %66, %struct.hash_cell** %8, align 8
  %67 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %68 = icmp ne %struct.hash_cell* %67, null
  br i1 %68, label %85, label %69

69:                                               ; preds = %62
  %70 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %71 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @DMWARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %72, i8* %76, i8* %77)
  %79 = call i32 @up_write(i32* @_hash_lock)
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @kfree(i8* %80)
  %82 = load i32, i32* @ENXIO, align 4
  %83 = sub nsw i32 0, %82
  %84 = call %struct.mapped_device* @ERR_PTR(i32 %83)
  store %struct.mapped_device* %84, %struct.mapped_device** %3, align 8
  br label %159

85:                                               ; preds = %62
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %90 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %95 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %99 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @DMWARN(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0), i8* %96, i8* %97, i8* %100)
  %102 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %103 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %102, i32 0, i32 1
  %104 = load %struct.mapped_device*, %struct.mapped_device** %103, align 8
  %105 = call i32 @dm_put(%struct.mapped_device* %104)
  %106 = call i32 @up_write(i32* @_hash_lock)
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  %111 = call %struct.mapped_device* @ERR_PTR(i32 %110)
  store %struct.mapped_device* %111, %struct.mapped_device** %3, align 8
  br label %159

112:                                              ; preds = %88, %85
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @__set_cell_uuid(%struct.hash_cell* %116, i8* %117)
  br label %123

119:                                              ; preds = %112
  %120 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call i8* @__change_cell_name(%struct.hash_cell* %120, i8* %121)
  store i8* %122, i8** %7, align 8
  br label %123

123:                                              ; preds = %119, %115
  %124 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %125 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %124, i32 0, i32 1
  %126 = load %struct.mapped_device*, %struct.mapped_device** %125, align 8
  %127 = call %struct.dm_table* @dm_get_live_table(%struct.mapped_device* %126)
  store %struct.dm_table* %127, %struct.dm_table** %9, align 8
  %128 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %129 = icmp ne %struct.dm_table* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %132 = call i32 @dm_table_event(%struct.dm_table* %131)
  %133 = load %struct.dm_table*, %struct.dm_table** %9, align 8
  %134 = call i32 @dm_table_put(%struct.dm_table* %133)
  br label %135

135:                                              ; preds = %130, %123
  %136 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %137 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %136, i32 0, i32 1
  %138 = load %struct.mapped_device*, %struct.mapped_device** %137, align 8
  %139 = load i32, i32* @KOBJ_CHANGE, align 4
  %140 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %141 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dm_kobject_uevent(%struct.mapped_device* %138, i32 %139, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %135
  %146 = load i32, i32* @DM_UEVENT_GENERATED_FLAG, align 4
  %147 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %148 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %135
  %152 = load %struct.hash_cell*, %struct.hash_cell** %8, align 8
  %153 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %152, i32 0, i32 1
  %154 = load %struct.mapped_device*, %struct.mapped_device** %153, align 8
  store %struct.mapped_device* %154, %struct.mapped_device** %10, align 8
  %155 = call i32 @up_write(i32* @_hash_lock)
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 @kfree(i8* %156)
  %158 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  store %struct.mapped_device* %158, %struct.mapped_device** %3, align 8
  br label %159

159:                                              ; preds = %151, %93, %69, %42, %25
  %160 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  ret %struct.mapped_device* %160
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.mapped_device* @ERR_PTR(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.hash_cell* @__get_uuid_cell(i8*) #1

declare dso_local %struct.hash_cell* @__get_name_cell(i8*) #1

declare dso_local i32 @DMWARN(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @__set_cell_uuid(%struct.hash_cell*, i8*) #1

declare dso_local i8* @__change_cell_name(%struct.hash_cell*, i8*) #1

declare dso_local %struct.dm_table* @dm_get_live_table(%struct.mapped_device*) #1

declare dso_local i32 @dm_table_event(%struct.dm_table*) #1

declare dso_local i32 @dm_table_put(%struct.dm_table*) #1

declare dso_local i32 @dm_kobject_uevent(%struct.mapped_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
