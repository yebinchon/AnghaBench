; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio_raw.c_serio_raw_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_serio_raw.c_serio_raw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.serio_raw_list* }
%struct.serio_raw_list = type { i32, %struct.serio_raw* }
%struct.serio_raw = type { i32, i32, i32 }

@serio_raw_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @serio_raw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serio_raw_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.serio_raw*, align 8
  %6 = alloca %struct.serio_raw_list*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @lock_kernel()
  %9 = call i32 @mutex_lock_interruptible(i32* @serio_raw_mutex)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @iminor(%struct.inode* %14)
  %16 = call %struct.serio_raw* @serio_raw_locate(i32 %15)
  store %struct.serio_raw* %16, %struct.serio_raw** %5, align 8
  %17 = icmp ne %struct.serio_raw* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %52

21:                                               ; preds = %13
  %22 = load %struct.serio_raw*, %struct.serio_raw** %5, align 8
  %23 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %52

29:                                               ; preds = %21
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.serio_raw_list* @kzalloc(i32 16, i32 %30)
  store %struct.serio_raw_list* %31, %struct.serio_raw_list** %6, align 8
  %32 = icmp ne %struct.serio_raw_list* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %52

36:                                               ; preds = %29
  %37 = load %struct.serio_raw*, %struct.serio_raw** %5, align 8
  %38 = load %struct.serio_raw_list*, %struct.serio_raw_list** %6, align 8
  %39 = getelementptr inbounds %struct.serio_raw_list, %struct.serio_raw_list* %38, i32 0, i32 1
  store %struct.serio_raw* %37, %struct.serio_raw** %39, align 8
  %40 = load %struct.serio_raw_list*, %struct.serio_raw_list** %6, align 8
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 0
  store %struct.serio_raw_list* %40, %struct.serio_raw_list** %42, align 8
  %43 = load %struct.serio_raw*, %struct.serio_raw** %5, align 8
  %44 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.serio_raw_list*, %struct.serio_raw_list** %6, align 8
  %48 = getelementptr inbounds %struct.serio_raw_list, %struct.serio_raw_list* %47, i32 0, i32 0
  %49 = load %struct.serio_raw*, %struct.serio_raw** %5, align 8
  %50 = getelementptr inbounds %struct.serio_raw, %struct.serio_raw* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  br label %52

52:                                               ; preds = %36, %33, %26, %18
  %53 = call i32 @mutex_unlock(i32* @serio_raw_mutex)
  br label %54

54:                                               ; preds = %52, %12
  %55 = call i32 (...) @unlock_kernel()
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.serio_raw* @serio_raw_locate(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.serio_raw_list* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
