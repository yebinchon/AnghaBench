; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_oprofile_files.c_oprofile_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_oprofile_files.c_oprofile_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.super_block*, %struct.dentry*)* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }

@BUFFER_SIZE_DEFAULT = common dso_local global i32 0, align 4
@oprofile_buffer_size = common dso_local global i32 0, align 4
@CPU_BUFFER_SIZE_DEFAULT = common dso_local global i32 0, align 4
@oprofile_cpu_buffer_size = common dso_local global i32 0, align 4
@BUFFER_WATERSHED_DEFAULT = common dso_local global i32 0, align 4
@oprofile_buffer_watershed = common dso_local global i32 0, align 4
@TIME_SLICE_DEFAULT = common dso_local global i32 0, align 4
@oprofile_time_slice = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@enable_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@dump_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@event_buffer_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"buffer_watershed\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"cpu_buffer_size\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"cpu_type\00", align 1
@cpu_type_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"backtrace_depth\00", align 1
@depth_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"pointer_size\00", align 1
@pointer_size_fops = common dso_local global i32 0, align 4
@oprofile_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@timeout_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oprofile_create_files(%struct.super_block* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load i32, i32* @BUFFER_SIZE_DEFAULT, align 4
  store i32 %5, i32* @oprofile_buffer_size, align 4
  %6 = load i32, i32* @CPU_BUFFER_SIZE_DEFAULT, align 4
  store i32 %6, i32* @oprofile_cpu_buffer_size, align 4
  %7 = load i32, i32* @BUFFER_WATERSHED_DEFAULT, align 4
  store i32 %7, i32* @oprofile_buffer_watershed, align 4
  %8 = load i32, i32* @TIME_SLICE_DEFAULT, align 4
  %9 = call i32 @msecs_to_jiffies(i32 %8)
  store i32 %9, i32* @oprofile_time_slice, align 4
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call i32 @oprofilefs_create_file(%struct.super_block* %10, %struct.dentry* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @enable_fops)
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call i32 @oprofilefs_create_file_perm(%struct.super_block* %13, %struct.dentry* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* @dump_fops, i32 438)
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i32 @oprofilefs_create_file(%struct.super_block* %16, %struct.dentry* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @event_buffer_fops)
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call i32 @oprofilefs_create_ulong(%struct.super_block* %19, %struct.dentry* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* @oprofile_buffer_size)
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call i32 @oprofilefs_create_ulong(%struct.super_block* %22, %struct.dentry* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* @oprofile_buffer_watershed)
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = call i32 @oprofilefs_create_ulong(%struct.super_block* %25, %struct.dentry* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* @oprofile_cpu_buffer_size)
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = call i32 @oprofilefs_create_file(%struct.super_block* %28, %struct.dentry* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* @cpu_type_fops)
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = call i32 @oprofilefs_create_file(%struct.super_block* %31, %struct.dentry* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32* @depth_fops)
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = call i32 @oprofilefs_create_file(%struct.super_block* %34, %struct.dentry* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* @pointer_size_fops)
  %37 = load %struct.super_block*, %struct.super_block** %3, align 8
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = call i32 @oprofile_create_stats_files(%struct.super_block* %37, %struct.dentry* %38)
  %40 = load i32 (%struct.super_block*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.dentry*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oprofile_ops, i32 0, i32 0), align 8
  %41 = icmp ne i32 (%struct.super_block*, %struct.dentry*)* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load i32 (%struct.super_block*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.dentry*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oprofile_ops, i32 0, i32 0), align 8
  %44 = load %struct.super_block*, %struct.super_block** %3, align 8
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = call i32 %43(%struct.super_block* %44, %struct.dentry* %45)
  br label %47

47:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @oprofilefs_create_file(%struct.super_block*, %struct.dentry*, i8*, i32*) #1

declare dso_local i32 @oprofilefs_create_file_perm(%struct.super_block*, %struct.dentry*, i8*, i32*, i32) #1

declare dso_local i32 @oprofilefs_create_ulong(%struct.super_block*, %struct.dentry*, i8*, i32*) #1

declare dso_local i32 @oprofile_create_stats_files(%struct.super_block*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
