; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_devintf.c_ipmi_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_devintf.c_ipmi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ipmi_file_private* }
%struct.ipmi_file_private = type { i32, i64, i32, i32*, i32, i32, i32, i32, %struct.file* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ipmi_hndlrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ipmi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipmi_file_private*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ipmi_file_private* @kmalloc(i32 56, i32 %11)
  store %struct.ipmi_file_private* %12, %struct.ipmi_file_private** %8, align 8
  %13 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %14 = icmp ne %struct.ipmi_file_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = call i32 (...) @lock_kernel()
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %22 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %21, i32 0, i32 8
  store %struct.file* %20, %struct.file** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %25 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %26 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %25, i32 0, i32 7
  %27 = call i32 @ipmi_create_user(i32 %23, i32* @ipmi_hndlrs, %struct.ipmi_file_private* %24, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %32 = call i32 @kfree(%struct.ipmi_file_private* %31)
  br label %55

33:                                               ; preds = %18
  %34 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  store %struct.ipmi_file_private* %34, %struct.ipmi_file_private** %36, align 8
  %37 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %38 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %37, i32 0, i32 6
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %41 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %40, i32 0, i32 5
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %44 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %43, i32 0, i32 4
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %47 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %49 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %48, i32 0, i32 2
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %52 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %54 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %33, %30
  %56 = call i32 (...) @unlock_kernel()
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.ipmi_file_private* @kmalloc(i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ipmi_create_user(i32, i32*, %struct.ipmi_file_private*, i32*) #1

declare dso_local i32 @kfree(%struct.ipmi_file_private*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
