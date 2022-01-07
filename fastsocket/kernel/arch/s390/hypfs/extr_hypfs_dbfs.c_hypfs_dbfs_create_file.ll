; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_dbfs.c_hypfs_dbfs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_dbfs.c_hypfs_dbfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypfs_dbfs_file = type { i32, i32, i32, i32 }

@dbfs_dir = common dso_local global i32 0, align 4
@dbfs_ops = common dso_local global i32 0, align 4
@data_free_delayed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hypfs_dbfs_create_file(%struct.hypfs_dbfs_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hypfs_dbfs_file*, align 8
  store %struct.hypfs_dbfs_file* %0, %struct.hypfs_dbfs_file** %3, align 8
  %4 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %3, align 8
  %5 = getelementptr inbounds %struct.hypfs_dbfs_file, %struct.hypfs_dbfs_file* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @dbfs_dir, align 4
  %8 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %3, align 8
  %9 = call i32 @debugfs_create_file(i32 %6, i32 256, i32 %7, %struct.hypfs_dbfs_file* %8, i32* @dbfs_ops)
  %10 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %3, align 8
  %11 = getelementptr inbounds %struct.hypfs_dbfs_file, %struct.hypfs_dbfs_file* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %3, align 8
  %13 = getelementptr inbounds %struct.hypfs_dbfs_file, %struct.hypfs_dbfs_file* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %3, align 8
  %19 = getelementptr inbounds %struct.hypfs_dbfs_file, %struct.hypfs_dbfs_file* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PTR_ERR(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %3, align 8
  %24 = getelementptr inbounds %struct.hypfs_dbfs_file, %struct.hypfs_dbfs_file* %23, i32 0, i32 1
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.hypfs_dbfs_file*, %struct.hypfs_dbfs_file** %3, align 8
  %27 = getelementptr inbounds %struct.hypfs_dbfs_file, %struct.hypfs_dbfs_file* %26, i32 0, i32 0
  %28 = load i32, i32* @data_free_delayed, align 4
  %29 = call i32 @INIT_DELAYED_WORK(i32* %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.hypfs_dbfs_file*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
