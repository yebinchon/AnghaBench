; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_do_md_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_do_md_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @do_md_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_md_run(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %4 = load %struct.mddev*, %struct.mddev** %2, align 8
  %5 = call i32 @md_run(%struct.mddev* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  %10 = load %struct.mddev*, %struct.mddev** %2, align 8
  %11 = call i32 @bitmap_load(%struct.mddev* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.mddev*, %struct.mddev** %2, align 8
  %16 = call i32 @bitmap_destroy(%struct.mddev* %15)
  br label %46

17:                                               ; preds = %9
  %18 = load %struct.mddev*, %struct.mddev** %2, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @md_wakeup_thread(i32 %20)
  %22 = load %struct.mddev*, %struct.mddev** %2, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @md_wakeup_thread(i32 %24)
  %26 = load %struct.mddev*, %struct.mddev** %2, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mddev*, %struct.mddev** %2, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_capacity(i32 %28, i32 %31)
  %33 = load %struct.mddev*, %struct.mddev** %2, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @revalidate_disk(i32 %35)
  %37 = load %struct.mddev*, %struct.mddev** %2, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.mddev*, %struct.mddev** %2, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_2__* @disk_to_dev(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* @KOBJ_CHANGE, align 4
  %45 = call i32 @kobject_uevent(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %17, %14, %8
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @md_run(%struct.mddev*) #1

declare dso_local i32 @bitmap_load(%struct.mddev*) #1

declare dso_local i32 @bitmap_destroy(%struct.mddev*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @revalidate_disk(i32) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @disk_to_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
