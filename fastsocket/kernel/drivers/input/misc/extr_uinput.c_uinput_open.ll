; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.uinput_device* }
%struct.uinput_device = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UIST_NEW_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @uinput_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.uinput_device*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.uinput_device* @kzalloc(i32 20, i32 %7)
  store %struct.uinput_device* %8, %struct.uinput_device** %6, align 8
  %9 = load %struct.uinput_device*, %struct.uinput_device** %6, align 8
  %10 = icmp ne %struct.uinput_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = call i32 (...) @lock_kernel()
  %16 = load %struct.uinput_device*, %struct.uinput_device** %6, align 8
  %17 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %16, i32 0, i32 4
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.uinput_device*, %struct.uinput_device** %6, align 8
  %20 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %19, i32 0, i32 3
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.uinput_device*, %struct.uinput_device** %6, align 8
  %23 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %22, i32 0, i32 2
  %24 = call i32 @init_waitqueue_head(i32* %23)
  %25 = load %struct.uinput_device*, %struct.uinput_device** %6, align 8
  %26 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %25, i32 0, i32 1
  %27 = call i32 @init_waitqueue_head(i32* %26)
  %28 = load i32, i32* @UIST_NEW_DEVICE, align 4
  %29 = load %struct.uinput_device*, %struct.uinput_device** %6, align 8
  %30 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.uinput_device*, %struct.uinput_device** %6, align 8
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  store %struct.uinput_device* %31, %struct.uinput_device** %33, align 8
  %34 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %14, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.uinput_device* @kzalloc(i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
