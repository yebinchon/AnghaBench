; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c___mbox_msg_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mailbox.c___mbox_msg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mbox = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i8*)* }
%struct.TYPE_3__ = type { i64 }

@OMAP_MBOX_TYPE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_mbox*, i32, i8*)* @__mbox_msg_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mbox_msg_send(%struct.omap_mbox* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_mbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_mbox* %0, %struct.omap_mbox** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1000, i32* %9, align 4
  br label %10

10:                                               ; preds = %28, %3
  %11 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %12 = call i64 @mbox_fifo_full(%struct.omap_mbox* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %16 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OMAP_MBOX_TYPE2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %60

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %60

28:                                               ; preds = %23
  %29 = call i32 @udelay(i32 1)
  br label %10

30:                                               ; preds = %10
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %35 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (i8*)*, i32 (i8*)** %37, align 8
  %39 = icmp ne i32 (i8*)* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %42 = getelementptr inbounds %struct.omap_mbox, %struct.omap_mbox* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (i8*)*, i32 (i8*)** %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 %45(i8* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %58

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %33, %30
  %53 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %54 = call i32 @mbox_seq_toggle(%struct.omap_mbox* %53, i32* %6)
  %55 = load %struct.omap_mbox*, %struct.omap_mbox** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @mbox_fifo_write(%struct.omap_mbox* %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %50
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %27, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @mbox_fifo_full(%struct.omap_mbox*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mbox_seq_toggle(%struct.omap_mbox*, i32*) #1

declare dso_local i32 @mbox_fifo_write(%struct.omap_mbox*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
