; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_alloc_event_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_alloc_event_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ib_uverbs_file = type { i32 }
%struct.ib_uverbs_event_file = type { i32, i64, i32*, %struct.ib_uverbs_file*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"[uverbs-event]\00", align 1
@uverbs_event_fops = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @ib_uverbs_alloc_event_file(%struct.ib_uverbs_file* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ib_uverbs_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ib_uverbs_event_file*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ib_uverbs_event_file* @kmalloc(i32 48, i32 %11)
  store %struct.ib_uverbs_event_file* %12, %struct.ib_uverbs_event_file** %8, align 8
  %13 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %14 = icmp ne %struct.ib_uverbs_event_file* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.file* @ERR_PTR(i32 %17)
  store %struct.file* %18, %struct.file** %4, align 8
  br label %70

19:                                               ; preds = %3
  %20 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %20, i32 0, i32 7
  %22 = call i32 @kref_init(i32* %21)
  %23 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %23, i32 0, i32 6
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %27 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %26, i32 0, i32 5
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %30 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %29, i32 0, i32 4
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %33 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %34 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %33, i32 0, i32 3
  store %struct.ib_uverbs_file* %32, %struct.ib_uverbs_file** %34, align 8
  %35 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %36 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %39 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %41 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = call i32 (...) @get_unused_fd()
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %19
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  br label %65

50:                                               ; preds = %19
  %51 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* @uverbs_event_fops, %struct.ib_uverbs_event_file* %51, i32 %52)
  store %struct.file* %53, %struct.file** %9, align 8
  %54 = load %struct.file*, %struct.file** %9, align 8
  %55 = icmp ne %struct.file* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENFILE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %60, %struct.file** %4, align 8
  br label %70

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @put_unused_fd(i32 %63)
  br label %65

65:                                               ; preds = %61, %47
  %66 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %67 = call i32 @kfree(%struct.ib_uverbs_event_file* %66)
  %68 = load i32, i32* %10, align 4
  %69 = call %struct.file* @ERR_PTR(i32 %68)
  store %struct.file* %69, %struct.file** %4, align 8
  br label %70

70:                                               ; preds = %65, %59, %15
  %71 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %71
}

declare dso_local %struct.ib_uverbs_event_file* @kmalloc(i32, i32) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_unused_fd(...) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, i32*, %struct.ib_uverbs_event_file*, i32) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @kfree(%struct.ib_uverbs_event_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
