; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.mousedev_client* }
%struct.mousedev_client = type { i32, i32, %struct.mousedev*, i32 }

@MOUSEDEV_MINOR_BASE = common dso_local global i32 0, align 4
@MOUSEDEV_MINORS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mousedev_table_mutex = common dso_local global i32 0, align 4
@mousedev_table = common dso_local global %struct.mousedev** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xres = common dso_local global i32 0, align 4
@yres = common dso_local global i32 0, align 4
@MISC_MAJOR = common dso_local global i64 0, align 8
@MOUSEDEV_MIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mousedev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mousedev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mousedev_client*, align 8
  %7 = alloca %struct.mousedev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  %12 = load i32, i32* @MOUSEDEV_MINOR_BASE, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MOUSEDEV_MINORS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %96

20:                                               ; preds = %2
  %21 = call i32 (...) @lock_kernel()
  %22 = call i32 @mutex_lock_interruptible(i32* @mousedev_table_mutex)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 (...) @unlock_kernel()
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %96

28:                                               ; preds = %20
  %29 = load %struct.mousedev**, %struct.mousedev*** @mousedev_table, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mousedev*, %struct.mousedev** %29, i64 %31
  %33 = load %struct.mousedev*, %struct.mousedev** %32, align 8
  store %struct.mousedev* %33, %struct.mousedev** %7, align 8
  %34 = load %struct.mousedev*, %struct.mousedev** %7, align 8
  %35 = icmp ne %struct.mousedev* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.mousedev*, %struct.mousedev** %7, align 8
  %38 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %37, i32 0, i32 0
  %39 = call i32 @get_device(i32* %38)
  br label %40

40:                                               ; preds = %36, %28
  %41 = call i32 @mutex_unlock(i32* @mousedev_table_mutex)
  %42 = load %struct.mousedev*, %struct.mousedev** %7, align 8
  %43 = icmp ne %struct.mousedev* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = call i32 (...) @unlock_kernel()
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %96

48:                                               ; preds = %40
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.mousedev_client* @kzalloc(i32 24, i32 %49)
  store %struct.mousedev_client* %50, %struct.mousedev_client** %6, align 8
  %51 = load %struct.mousedev_client*, %struct.mousedev_client** %6, align 8
  %52 = icmp ne %struct.mousedev_client* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %90

56:                                               ; preds = %48
  %57 = load %struct.mousedev_client*, %struct.mousedev_client** %6, align 8
  %58 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %57, i32 0, i32 3
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load i32, i32* @xres, align 4
  %61 = sdiv i32 %60, 2
  %62 = load %struct.mousedev_client*, %struct.mousedev_client** %6, align 8
  %63 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @yres, align 4
  %65 = sdiv i32 %64, 2
  %66 = load %struct.mousedev_client*, %struct.mousedev_client** %6, align 8
  %67 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mousedev*, %struct.mousedev** %7, align 8
  %69 = load %struct.mousedev_client*, %struct.mousedev_client** %6, align 8
  %70 = getelementptr inbounds %struct.mousedev_client, %struct.mousedev_client* %69, i32 0, i32 2
  store %struct.mousedev* %68, %struct.mousedev** %70, align 8
  %71 = load %struct.mousedev*, %struct.mousedev** %7, align 8
  %72 = load %struct.mousedev_client*, %struct.mousedev_client** %6, align 8
  %73 = call i32 @mousedev_attach_client(%struct.mousedev* %71, %struct.mousedev_client* %72)
  %74 = load %struct.mousedev*, %struct.mousedev** %7, align 8
  %75 = call i32 @mousedev_open_device(%struct.mousedev* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %56
  br label %84

79:                                               ; preds = %56
  %80 = load %struct.mousedev_client*, %struct.mousedev_client** %6, align 8
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  store %struct.mousedev_client* %80, %struct.mousedev_client** %82, align 8
  %83 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %96

84:                                               ; preds = %78
  %85 = load %struct.mousedev*, %struct.mousedev** %7, align 8
  %86 = load %struct.mousedev_client*, %struct.mousedev_client** %6, align 8
  %87 = call i32 @mousedev_detach_client(%struct.mousedev* %85, %struct.mousedev_client* %86)
  %88 = load %struct.mousedev_client*, %struct.mousedev_client** %6, align 8
  %89 = call i32 @kfree(%struct.mousedev_client* %88)
  br label %90

90:                                               ; preds = %84, %53
  %91 = load %struct.mousedev*, %struct.mousedev** %7, align 8
  %92 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %91, i32 0, i32 0
  %93 = call i32 @put_device(i32* %92)
  %94 = call i32 (...) @unlock_kernel()
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %79, %44, %25, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.mousedev_client* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mousedev_attach_client(%struct.mousedev*, %struct.mousedev_client*) #1

declare dso_local i32 @mousedev_open_device(%struct.mousedev*) #1

declare dso_local i32 @mousedev_detach_client(%struct.mousedev*, %struct.mousedev_client*) #1

declare dso_local i32 @kfree(%struct.mousedev_client*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
