; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_make_ide_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_make_ide_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32*, i32, i32* }

@proc_ide_root = common dso_local global i32* null, align 8
@proc_ide = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"media\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@proc_ide_read_media = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ide0/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @make_ide_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_ide_entries(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca [64 x i8], align 16
  store i8* %0, i8** %2, align 8
  %6 = load i32*, i32** @proc_ide_root, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @make_proc_ide()
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* @proc_ide, align 4
  %13 = call %struct.proc_dir_entry* @proc_mkdir(i8* %11, i32 %12)
  store %struct.proc_dir_entry* %13, %struct.proc_dir_entry** %3, align 8
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %15 = icmp ne %struct.proc_dir_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %41

17:                                               ; preds = %10
  %18 = load i32, i32* @S_IFREG, align 4
  %19 = load i32, i32* @S_IRUGO, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %22 = call %struct.proc_dir_entry* @create_proc_entry(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.proc_dir_entry* %21)
  store %struct.proc_dir_entry* %22, %struct.proc_dir_entry** %4, align 8
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %24 = icmp ne %struct.proc_dir_entry* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %28 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @proc_ide_read_media, align 4
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %31 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %33 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @snprintf(i8* %34, i32 64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %2, align 8
  %38 = load i32*, i32** @proc_ide_root, align 8
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %40 = call i32 @proc_symlink(i8* %37, i32* %38, i8* %39)
  br label %41

41:                                               ; preds = %26, %25, %16
  ret void
}

declare dso_local i32 @make_proc_ide(...) #1

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @create_proc_entry(i8*, i32, %struct.proc_dir_entry*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @proc_symlink(i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
