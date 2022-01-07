; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_logger.c_logger_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_logger.c_logger_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.logger_reader* }
%struct.logger_reader = type { i32, i32, i32, i32, i32, %struct.logger_reader* }
%struct.logger_log = type { i32, i32, i32, i32, i32, %struct.logger_log* }

@ENODEV = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @logger_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logger_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.logger_log*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.logger_reader*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call i32 @nonseekable_open(%struct.inode* %9, %struct.file* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MINOR(i32 %19)
  %21 = call %struct.logger_reader* @get_log_from_minor(i32 %20)
  %22 = bitcast %struct.logger_reader* %21 to %struct.logger_log*
  store %struct.logger_log* %22, %struct.logger_log** %6, align 8
  %23 = load %struct.logger_log*, %struct.logger_log** %6, align 8
  %24 = icmp ne %struct.logger_log* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %16
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FMODE_READ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %28
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.logger_reader* @kmalloc(i32 32, i32 %36)
  store %struct.logger_reader* %37, %struct.logger_reader** %8, align 8
  %38 = load %struct.logger_reader*, %struct.logger_reader** %8, align 8
  %39 = icmp ne %struct.logger_reader* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %76

43:                                               ; preds = %35
  %44 = load %struct.logger_log*, %struct.logger_log** %6, align 8
  %45 = bitcast %struct.logger_log* %44 to %struct.logger_reader*
  %46 = load %struct.logger_reader*, %struct.logger_reader** %8, align 8
  %47 = getelementptr inbounds %struct.logger_reader, %struct.logger_reader* %46, i32 0, i32 5
  store %struct.logger_reader* %45, %struct.logger_reader** %47, align 8
  %48 = load %struct.logger_reader*, %struct.logger_reader** %8, align 8
  %49 = getelementptr inbounds %struct.logger_reader, %struct.logger_reader* %48, i32 0, i32 2
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.logger_log*, %struct.logger_log** %6, align 8
  %52 = getelementptr inbounds %struct.logger_log, %struct.logger_log* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.logger_log*, %struct.logger_log** %6, align 8
  %55 = getelementptr inbounds %struct.logger_log, %struct.logger_log* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.logger_reader*, %struct.logger_reader** %8, align 8
  %58 = getelementptr inbounds %struct.logger_reader, %struct.logger_reader* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.logger_reader*, %struct.logger_reader** %8, align 8
  %60 = getelementptr inbounds %struct.logger_reader, %struct.logger_reader* %59, i32 0, i32 2
  %61 = load %struct.logger_log*, %struct.logger_log** %6, align 8
  %62 = getelementptr inbounds %struct.logger_log, %struct.logger_log* %61, i32 0, i32 1
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  %64 = load %struct.logger_log*, %struct.logger_log** %6, align 8
  %65 = getelementptr inbounds %struct.logger_log, %struct.logger_log* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.logger_reader*, %struct.logger_reader** %8, align 8
  %68 = load %struct.file*, %struct.file** %5, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 1
  store %struct.logger_reader* %67, %struct.logger_reader** %69, align 8
  br label %75

70:                                               ; preds = %28
  %71 = load %struct.logger_log*, %struct.logger_log** %6, align 8
  %72 = bitcast %struct.logger_log* %71 to %struct.logger_reader*
  %73 = load %struct.file*, %struct.file** %5, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 1
  store %struct.logger_reader* %72, %struct.logger_reader** %74, align 8
  br label %75

75:                                               ; preds = %70, %43
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %40, %25, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.logger_reader* @get_log_from_minor(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local %struct.logger_reader* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
