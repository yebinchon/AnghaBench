; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_CreateProcEntries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_CreateProcEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, %struct.proc_dir_entry* }
%struct.proc_dir_entry = type { i32 }

@DAC960_ProcDirectoryEntry = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rd\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@dac960_proc_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"c%d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"initial_status\00", align 1
@dac960_initial_status_proc_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"current_status\00", align 1
@dac960_current_status_proc_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"user_command\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@dac960_user_command_proc_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @DAC960_CreateProcEntries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DAC960_CreateProcEntries(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load i32*, i32** @DAC960_ProcDirectoryEntry, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = call i8* @proc_mkdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null)
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** @DAC960_ProcDirectoryEntry, align 8
  %11 = load i32*, i32** @DAC960_ProcDirectoryEntry, align 8
  %12 = call %struct.proc_dir_entry* @proc_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %11, i32* @dac960_proc_fops)
  store %struct.proc_dir_entry* %12, %struct.proc_dir_entry** %3, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32*, i32** @DAC960_ProcDirectoryEntry, align 8
  %25 = call i8* @proc_mkdir(i8* %23, i32* %24)
  %26 = bitcast i8* %25 to %struct.proc_dir_entry*
  store %struct.proc_dir_entry* %26, %struct.proc_dir_entry** %4, align 8
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %27, i32* @dac960_initial_status_proc_fops, %struct.TYPE_4__* %28)
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0, %struct.proc_dir_entry* %30, i32* @dac960_current_status_proc_fops, %struct.TYPE_4__* %31)
  %33 = load i32, i32* @S_IWUSR, align 4
  %34 = load i32, i32* @S_IRUSR, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = call %struct.proc_dir_entry* @proc_create_data(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %35, %struct.proc_dir_entry* %36, i32* @dac960_user_command_proc_fops, %struct.TYPE_4__* %37)
  store %struct.proc_dir_entry* %38, %struct.proc_dir_entry** %5, align 8
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store %struct.proc_dir_entry* %39, %struct.proc_dir_entry** %41, align 8
  ret void
}

declare dso_local i8* @proc_mkdir(i8*, i32*) #1

declare dso_local %struct.proc_dir_entry* @proc_create(i8*, i32, i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i8*, i32, %struct.proc_dir_entry*, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
