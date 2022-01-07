; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_joydev.c_joydev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_joydev.c_joydev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.joydev = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.joydev_client* }
%struct.joydev_client = type { %struct.joydev*, i32 }

@JOYDEV_MINOR_BASE = common dso_local global i32 0, align 4
@JOYDEV_MINORS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@joydev_table_mutex = common dso_local global i32 0, align 4
@joydev_table = common dso_local global %struct.joydev** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @joydev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @joydev_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.joydev_client*, align 8
  %7 = alloca %struct.joydev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  %12 = load i32, i32* @JOYDEV_MINOR_BASE, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @JOYDEV_MINORS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = call i32 @mutex_lock_interruptible(i32* @joydev_table_mutex)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %83

26:                                               ; preds = %20
  %27 = load %struct.joydev**, %struct.joydev*** @joydev_table, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.joydev*, %struct.joydev** %27, i64 %29
  %31 = load %struct.joydev*, %struct.joydev** %30, align 8
  store %struct.joydev* %31, %struct.joydev** %7, align 8
  %32 = load %struct.joydev*, %struct.joydev** %7, align 8
  %33 = icmp ne %struct.joydev* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.joydev*, %struct.joydev** %7, align 8
  %36 = getelementptr inbounds %struct.joydev, %struct.joydev* %35, i32 0, i32 0
  %37 = call i32 @get_device(i32* %36)
  br label %38

38:                                               ; preds = %34, %26
  %39 = call i32 @mutex_unlock(i32* @joydev_table_mutex)
  %40 = load %struct.joydev*, %struct.joydev** %7, align 8
  %41 = icmp ne %struct.joydev* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %83

45:                                               ; preds = %38
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.joydev_client* @kzalloc(i32 16, i32 %46)
  store %struct.joydev_client* %47, %struct.joydev_client** %6, align 8
  %48 = load %struct.joydev_client*, %struct.joydev_client** %6, align 8
  %49 = icmp ne %struct.joydev_client* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %78

53:                                               ; preds = %45
  %54 = load %struct.joydev_client*, %struct.joydev_client** %6, align 8
  %55 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %54, i32 0, i32 1
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.joydev*, %struct.joydev** %7, align 8
  %58 = load %struct.joydev_client*, %struct.joydev_client** %6, align 8
  %59 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %58, i32 0, i32 0
  store %struct.joydev* %57, %struct.joydev** %59, align 8
  %60 = load %struct.joydev*, %struct.joydev** %7, align 8
  %61 = load %struct.joydev_client*, %struct.joydev_client** %6, align 8
  %62 = call i32 @joydev_attach_client(%struct.joydev* %60, %struct.joydev_client* %61)
  %63 = load %struct.joydev*, %struct.joydev** %7, align 8
  %64 = call i32 @joydev_open_device(%struct.joydev* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %72

68:                                               ; preds = %53
  %69 = load %struct.joydev_client*, %struct.joydev_client** %6, align 8
  %70 = load %struct.file*, %struct.file** %5, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  store %struct.joydev_client* %69, %struct.joydev_client** %71, align 8
  store i32 0, i32* %3, align 4
  br label %83

72:                                               ; preds = %67
  %73 = load %struct.joydev*, %struct.joydev** %7, align 8
  %74 = load %struct.joydev_client*, %struct.joydev_client** %6, align 8
  %75 = call i32 @joydev_detach_client(%struct.joydev* %73, %struct.joydev_client* %74)
  %76 = load %struct.joydev_client*, %struct.joydev_client** %6, align 8
  %77 = call i32 @kfree(%struct.joydev_client* %76)
  br label %78

78:                                               ; preds = %72, %50
  %79 = load %struct.joydev*, %struct.joydev** %7, align 8
  %80 = getelementptr inbounds %struct.joydev, %struct.joydev* %79, i32 0, i32 0
  %81 = call i32 @put_device(i32* %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %68, %42, %24, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.joydev_client* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @joydev_attach_client(%struct.joydev*, %struct.joydev_client*) #1

declare dso_local i32 @joydev_open_device(%struct.joydev*) #1

declare dso_local i32 @joydev_detach_client(%struct.joydev*, %struct.joydev_client*) #1

declare dso_local i32 @kfree(%struct.joydev_client*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
