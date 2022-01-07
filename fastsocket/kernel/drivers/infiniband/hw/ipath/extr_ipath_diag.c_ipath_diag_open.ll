; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_diag.c_ipath_diag_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_diag.c_ipath_diag_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IPATH_DIAG_MINOR_BASE = common dso_local global i32 0, align 4
@ipath_mutex = common dso_local global i32 0, align 4
@ipath_diag_inuse = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IPATH_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@diag_set_link = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ipath_diag_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_diag_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipath_devdata*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = load i32, i32* @IPATH_DIAG_MINOR_BASE, align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = call i32 @mutex_lock(i32* @ipath_mutex)
  %13 = load i32, i32* @ipath_diag_inuse, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.ipath_devdata* @ipath_lookup(i32 %19)
  store %struct.ipath_devdata* %20, %struct.ipath_devdata** %6, align 8
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %22 = icmp eq %struct.ipath_devdata* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IPATH_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %23, %18
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 0
  store %struct.ipath_devdata* %39, %struct.ipath_devdata** %41, align 8
  store i32 -2, i32* @ipath_diag_inuse, align 4
  store i64 0, i64* @diag_set_link, align 8
  store i32 0, i32* %7, align 4
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %43 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @ipath_expose_reset(i32* %45)
  br label %47

47:                                               ; preds = %38, %35, %15
  %48 = call i32 @mutex_unlock(i32* @ipath_mutex)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ipath_devdata* @ipath_lookup(i32) #1

declare dso_local i32 @ipath_expose_reset(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
