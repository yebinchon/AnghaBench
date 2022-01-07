; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hiddev.c_hiddev_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hiddev.c_hiddev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.hiddev_list* }
%struct.hiddev_list = type { %struct.hiddev_list*, i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hiddev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiddev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.hiddev_list*, align 8
  %6 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.hiddev_list*, %struct.hiddev_list** %8, align 8
  store %struct.hiddev_list* %9, %struct.hiddev_list** %5, align 8
  %10 = load %struct.hiddev_list*, %struct.hiddev_list** %5, align 8
  %11 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %10, i32 0, i32 0
  %12 = load %struct.hiddev_list*, %struct.hiddev_list** %11, align 8
  %13 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %12, i32 0, i32 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.hiddev_list*, %struct.hiddev_list** %5, align 8
  %17 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %16, i32 0, i32 5
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.hiddev_list*, %struct.hiddev_list** %5, align 8
  %20 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %19, i32 0, i32 0
  %21 = load %struct.hiddev_list*, %struct.hiddev_list** %20, align 8
  %22 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %21, i32 0, i32 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.hiddev_list*, %struct.hiddev_list** %5, align 8
  %26 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %25, i32 0, i32 0
  %27 = load %struct.hiddev_list*, %struct.hiddev_list** %26, align 8
  %28 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %2
  %33 = load %struct.hiddev_list*, %struct.hiddev_list** %5, align 8
  %34 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %33, i32 0, i32 0
  %35 = load %struct.hiddev_list*, %struct.hiddev_list** %34, align 8
  %36 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.hiddev_list*, %struct.hiddev_list** %5, align 8
  %41 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %40, i32 0, i32 0
  %42 = load %struct.hiddev_list*, %struct.hiddev_list** %41, align 8
  %43 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @usbhid_close(i32 %44)
  %46 = load %struct.hiddev_list*, %struct.hiddev_list** %5, align 8
  %47 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %46, i32 0, i32 0
  %48 = load %struct.hiddev_list*, %struct.hiddev_list** %47, align 8
  %49 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usbhid_put_power(i32 %50)
  br label %57

52:                                               ; preds = %32
  %53 = load %struct.hiddev_list*, %struct.hiddev_list** %5, align 8
  %54 = getelementptr inbounds %struct.hiddev_list, %struct.hiddev_list* %53, i32 0, i32 0
  %55 = load %struct.hiddev_list*, %struct.hiddev_list** %54, align 8
  %56 = call i32 @kfree(%struct.hiddev_list* %55)
  br label %57

57:                                               ; preds = %52, %39
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.hiddev_list*, %struct.hiddev_list** %5, align 8
  %60 = call i32 @kfree(%struct.hiddev_list* %59)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usbhid_close(i32) #1

declare dso_local i32 @usbhid_put_power(i32) #1

declare dso_local i32 @kfree(%struct.hiddev_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
