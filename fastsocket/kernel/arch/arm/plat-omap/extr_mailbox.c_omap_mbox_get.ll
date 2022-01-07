; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_omap_mbox_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c_omap_mbox_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { i32 }

@mboxes_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_mbox* @omap_mbox_get(i8* %0) #0 {
  %2 = alloca %struct.omap_mbox*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.omap_mbox*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = call i32 @read_lock(i32* @mboxes_lock)
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.omap_mbox** @find_mboxes(i8* %7)
  %9 = load %struct.omap_mbox*, %struct.omap_mbox** %8, align 8
  store %struct.omap_mbox* %9, %struct.omap_mbox** %4, align 8
  %10 = load %struct.omap_mbox*, %struct.omap_mbox** %4, align 8
  %11 = icmp eq %struct.omap_mbox* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = call i32 @read_unlock(i32* @mboxes_lock)
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.omap_mbox* @ERR_PTR(i32 %15)
  store %struct.omap_mbox* %16, %struct.omap_mbox** %2, align 8
  br label %29

17:                                               ; preds = %1
  %18 = call i32 @read_unlock(i32* @mboxes_lock)
  %19 = load %struct.omap_mbox*, %struct.omap_mbox** %4, align 8
  %20 = call i32 @omap_mbox_init(%struct.omap_mbox* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.omap_mbox* @ERR_PTR(i32 %25)
  store %struct.omap_mbox* %26, %struct.omap_mbox** %2, align 8
  br label %29

27:                                               ; preds = %17
  %28 = load %struct.omap_mbox*, %struct.omap_mbox** %4, align 8
  store %struct.omap_mbox* %28, %struct.omap_mbox** %2, align 8
  br label %29

29:                                               ; preds = %27, %23, %12
  %30 = load %struct.omap_mbox*, %struct.omap_mbox** %2, align 8
  ret %struct.omap_mbox* %30
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.omap_mbox** @find_mboxes(i8*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local %struct.omap_mbox* @ERR_PTR(i32) #1

declare dso_local i32 @omap_mbox_init(%struct.omap_mbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
