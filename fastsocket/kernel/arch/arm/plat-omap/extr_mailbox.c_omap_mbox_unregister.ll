; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_omap_mbox_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_omap_mbox_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { %struct.omap_mbox*, i32 }

@mboxes_lock = common dso_local global i32 0, align 4
@mboxes = common dso_local global %struct.omap_mbox* null, align 8
@dev_attr_mbox = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_mbox_unregister(%struct.omap_mbox* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_mbox*, align 8
  %4 = alloca %struct.omap_mbox**, align 8
  store %struct.omap_mbox* %0, %struct.omap_mbox** %3, align 8
  %5 = call i32 @write_lock(i32* @mboxes_lock)
  store %struct.omap_mbox** @mboxes, %struct.omap_mbox*** %4, align 8
  br label %6

6:                                                ; preds = %31, %1
  %7 = load %struct.omap_mbox**, %struct.omap_mbox*** %4, align 8
  %8 = load %struct.omap_mbox*, %struct.omap_mbox** %7, align 8
  %9 = icmp ne %struct.omap_mbox* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %12 = load %struct.omap_mbox**, %struct.omap_mbox*** %4, align 8
  %13 = load %struct.omap_mbox*, %struct.omap_mbox** %12, align 8
  %14 = icmp eq %struct.omap_mbox* %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %17 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %16, i32 0, i32 0
  %18 = load %struct.omap_mbox*, %struct.omap_mbox** %17, align 8
  %19 = load %struct.omap_mbox**, %struct.omap_mbox*** %4, align 8
  store %struct.omap_mbox* %18, %struct.omap_mbox** %19, align 8
  %20 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %21 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %20, i32 0, i32 0
  store %struct.omap_mbox* null, %struct.omap_mbox** %21, align 8
  %22 = call i32 @write_unlock(i32* @mboxes_lock)
  %23 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %24 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_remove_file(i32 %25, i32* @dev_attr_mbox)
  %27 = load %struct.omap_mbox*, %struct.omap_mbox** %3, align 8
  %28 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_unregister(i32 %29)
  store i32 0, i32* %2, align 4
  br label %39

31:                                               ; preds = %10
  %32 = load %struct.omap_mbox**, %struct.omap_mbox*** %4, align 8
  %33 = load %struct.omap_mbox*, %struct.omap_mbox** %32, align 8
  %34 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %33, i32 0, i32 0
  store %struct.omap_mbox** %34, %struct.omap_mbox*** %4, align 8
  br label %6

35:                                               ; preds = %6
  %36 = call i32 @write_unlock(i32* @mboxes_lock)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
