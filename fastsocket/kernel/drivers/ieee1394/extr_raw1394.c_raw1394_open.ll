; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_raw1394_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_raw1394_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.file_info* }
%struct.file_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RAW1394_NOTIFY_ON = common dso_local global i64 0, align 8
@opened = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @raw1394_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw1394_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.file_info* @kzalloc(i32 40, i32 %7)
  store %struct.file_info* %8, %struct.file_info** %6, align 8
  %9 = load %struct.file_info*, %struct.file_info** %6, align 8
  %10 = icmp ne %struct.file_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i64, i64* @RAW1394_NOTIFY_ON, align 8
  %16 = load %struct.file_info*, %struct.file_info** %6, align 8
  %17 = getelementptr inbounds %struct.file_info, %struct.file_info* %16, i32 0, i32 8
  store i64 %15, i64* %17, align 8
  %18 = load %struct.file_info*, %struct.file_info** %6, align 8
  %19 = getelementptr inbounds %struct.file_info, %struct.file_info* %18, i32 0, i32 7
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.file_info*, %struct.file_info** %6, align 8
  %22 = getelementptr inbounds %struct.file_info, %struct.file_info* %21, i32 0, i32 6
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load i32, i32* @opened, align 4
  %25 = load %struct.file_info*, %struct.file_info** %6, align 8
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.file_info*, %struct.file_info** %6, align 8
  %28 = getelementptr inbounds %struct.file_info, %struct.file_info* %27, i32 0, i32 4
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.file_info*, %struct.file_info** %6, align 8
  %31 = getelementptr inbounds %struct.file_info, %struct.file_info* %30, i32 0, i32 3
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.file_info*, %struct.file_info** %6, align 8
  %34 = getelementptr inbounds %struct.file_info, %struct.file_info* %33, i32 0, i32 2
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.file_info*, %struct.file_info** %6, align 8
  %37 = getelementptr inbounds %struct.file_info, %struct.file_info* %36, i32 0, i32 1
  %38 = call i32 @init_waitqueue_head(i32* %37)
  %39 = load %struct.file_info*, %struct.file_info** %6, align 8
  %40 = getelementptr inbounds %struct.file_info, %struct.file_info* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.file_info*, %struct.file_info** %6, align 8
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  store %struct.file_info* %42, %struct.file_info** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %14, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.file_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
