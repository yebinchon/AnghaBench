; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ucma_file* }
%struct.ucma_file = type { %struct.file*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ucma_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ucma_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ucma_file* @kmalloc(i32 24, i32 %7)
  store %struct.ucma_file* %8, %struct.ucma_file** %6, align 8
  %9 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %10 = icmp ne %struct.ucma_file* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %16 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %19 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %18, i32 0, i32 3
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %22 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %21, i32 0, i32 2
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %25 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %24, i32 0, i32 1
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  store %struct.ucma_file* %27, %struct.ucma_file** %29, align 8
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = load %struct.ucma_file*, %struct.ucma_file** %6, align 8
  %32 = getelementptr inbounds %struct.ucma_file, %struct.ucma_file* %31, i32 0, i32 0
  store %struct.file* %30, %struct.file** %32, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = call i32 @nonseekable_open(%struct.inode* %33, %struct.file* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %14, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.ucma_file* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
