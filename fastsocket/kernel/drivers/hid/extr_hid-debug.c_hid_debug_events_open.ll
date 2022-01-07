; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_debug_events_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-debug.c_hid_debug_events_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.file = type { %struct.hid_debug_list* }
%struct.hid_debug_list = type { %struct.hid_device*, i32, i32, i8* }
%struct.hid_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_DEBUG_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hid_debug_events_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_debug_events_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_debug_list*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 24, i32 %7)
  %9 = bitcast i8* %8 to %struct.hid_debug_list*
  store %struct.hid_debug_list* %9, %struct.hid_debug_list** %6, align 8
  %10 = icmp ne %struct.hid_debug_list* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i32, i32* @HID_DEBUG_BUFSIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 1, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 %18, i32 %19)
  %21 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %22 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = icmp ne i8* %20, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %28 = call i32 @kfree(%struct.hid_debug_list* %27)
  br label %49

29:                                               ; preds = %14
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.hid_device*
  %34 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %35 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %34, i32 0, i32 0
  store %struct.hid_device* %33, %struct.hid_device** %35, align 8
  %36 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  store %struct.hid_debug_list* %36, %struct.hid_debug_list** %38, align 8
  %39 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %40 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %39, i32 0, i32 2
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %43 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %42, i32 0, i32 1
  %44 = load %struct.hid_debug_list*, %struct.hid_debug_list** %6, align 8
  %45 = getelementptr inbounds %struct.hid_debug_list, %struct.hid_debug_list* %44, i32 0, i32 0
  %46 = load %struct.hid_device*, %struct.hid_device** %45, align 8
  %47 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %46, i32 0, i32 0
  %48 = call i32 @list_add_tail(i32* %43, i32* %47)
  br label %49

49:                                               ; preds = %29, %24, %11
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.hid_debug_list*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
