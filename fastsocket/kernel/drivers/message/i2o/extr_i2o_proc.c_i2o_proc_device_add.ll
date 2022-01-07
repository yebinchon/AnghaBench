; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_proc_device_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_proc_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { %struct.i2o_device* }
%struct.i2o_device = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%03x\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"adding device /proc/i2o/%s/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not allocate procdir!\0A\00", align 1
@generic_dev_entries = common dso_local global i32* null, align 8
@rbs_dev_entries = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc_dir_entry*, %struct.i2o_device*)* @i2o_proc_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_proc_device_add(%struct.proc_dir_entry* %0, %struct.i2o_device* %1) #0 {
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.i2o_device*, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i32*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %3, align 8
  store %struct.i2o_device* %1, %struct.i2o_device** %4, align 8
  store i32* null, i32** %7, align 8
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %9 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %10 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %15 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %20 = call i32 @osm_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8* %19)
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %22 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %23 = call %struct.proc_dir_entry* @proc_mkdir(i8* %21, %struct.proc_dir_entry* %22)
  store %struct.proc_dir_entry* %23, %struct.proc_dir_entry** %6, align 8
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %25 = icmp ne %struct.proc_dir_entry* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = call i32 @osm_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %31 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %30, i32 0, i32 0
  store %struct.i2o_device* %29, %struct.i2o_device** %31, align 8
  %32 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %33 = load i32*, i32** @generic_dev_entries, align 8
  %34 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %35 = call i32 @i2o_proc_create_entries(%struct.proc_dir_entry* %32, i32* %33, %struct.i2o_device* %34)
  %36 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %37 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %42 [
    i32 128, label %40
    i32 129, label %40
  ]

40:                                               ; preds = %28, %28
  %41 = load i32*, i32** @rbs_dev_entries, align 8
  store i32* %41, i32** %7, align 8
  br label %43

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %50 = call i32 @i2o_proc_create_entries(%struct.proc_dir_entry* %47, i32* %48, %struct.i2o_device* %49)
  br label %51

51:                                               ; preds = %26, %46, %43
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @osm_debug(i8*, i32, i8*) #1

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, %struct.proc_dir_entry*) #1

declare dso_local i32 @osm_warn(i8*) #1

declare dso_local i32 @i2o_proc_create_entries(%struct.proc_dir_entry*, i32*, %struct.i2o_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
