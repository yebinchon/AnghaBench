; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_port_fops_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_port_fops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.cdev* }
%struct.cdev = type { i32 }
%struct.file = type { %struct.port* }
%struct.port = type { i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VIRTIO_CONSOLE_PORT_OPEN = common dso_local global i32 0, align 4
@remove_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @port_fops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_fops_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca %struct.port*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.cdev*, %struct.cdev** %10, align 8
  store %struct.cdev* %11, %struct.cdev** %6, align 8
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.port* @find_port_by_devt(i32 %14)
  store %struct.port* %15, %struct.port** %7, align 8
  %16 = load %struct.port*, %struct.port** %7, align 8
  %17 = icmp ne %struct.port* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %73

21:                                               ; preds = %2
  %22 = load %struct.port*, %struct.port** %7, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  store %struct.port* %22, %struct.port** %24, align 8
  %25 = load %struct.port*, %struct.port** %7, align 8
  %26 = call i64 @is_console_port(%struct.port* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %67

31:                                               ; preds = %21
  %32 = load %struct.port*, %struct.port** %7, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 3
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.port*, %struct.port** %7, align 8
  %36 = getelementptr inbounds %struct.port, %struct.port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.port*, %struct.port** %7, align 8
  %41 = getelementptr inbounds %struct.port, %struct.port* %40, i32 0, i32 3
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %67

45:                                               ; preds = %31
  %46 = load %struct.port*, %struct.port** %7, align 8
  %47 = getelementptr inbounds %struct.port, %struct.port* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.port*, %struct.port** %7, align 8
  %49 = getelementptr inbounds %struct.port, %struct.port* %48, i32 0, i32 3
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load %struct.port*, %struct.port** %7, align 8
  %52 = getelementptr inbounds %struct.port, %struct.port* %51, i32 0, i32 2
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load %struct.port*, %struct.port** %7, align 8
  %55 = call i32 @reclaim_consumed_buffers(%struct.port* %54)
  %56 = load %struct.port*, %struct.port** %7, align 8
  %57 = getelementptr inbounds %struct.port, %struct.port* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = call i32 @nonseekable_open(%struct.inode* %59, %struct.file* %60)
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  %64 = load %struct.port*, %struct.port** %63, align 8
  %65 = load i32, i32* @VIRTIO_CONSOLE_PORT_OPEN, align 4
  %66 = call i32 @send_control_msg(%struct.port* %64, i32 %65, i32 1)
  store i32 0, i32* %3, align 4
  br label %73

67:                                               ; preds = %39, %28
  %68 = load %struct.port*, %struct.port** %7, align 8
  %69 = getelementptr inbounds %struct.port, %struct.port* %68, i32 0, i32 1
  %70 = load i32, i32* @remove_port, align 4
  %71 = call i32 @kref_put(i32* %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %45, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.port* @find_port_by_devt(i32) #1

declare dso_local i64 @is_console_port(%struct.port*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @reclaim_consumed_buffers(%struct.port*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @send_control_msg(%struct.port*, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
