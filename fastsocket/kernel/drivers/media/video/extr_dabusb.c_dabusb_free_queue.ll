; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_free_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@.str = private unnamed_addr constant [18 x i8] c"dabusb_free_queue\00", align 1
@buff_t = common dso_local global i32 0, align 4
@buff_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*)* @dabusb_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dabusb_free_queue(%struct.list_head* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  %6 = call i32 @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.list_head*, %struct.list_head** %2, align 8
  %8 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0
  %9 = load %struct.list_head*, %struct.list_head** %8, align 8
  store %struct.list_head* %9, %struct.list_head** %4, align 8
  br label %10

10:                                               ; preds = %14, %1
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8
  %12 = load %struct.list_head*, %struct.list_head** %2, align 8
  %13 = icmp ne %struct.list_head* %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.list_head*, %struct.list_head** %4, align 8
  %16 = load i32, i32* @buff_t, align 4
  %17 = load i32, i32* @buff_list, align 4
  %18 = call %struct.TYPE_6__* @list_entry(%struct.list_head* %15, i32 %16, i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @kfree(%struct.TYPE_6__* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i32 @usb_free_urb(%struct.TYPE_7__* %27)
  %29 = load %struct.list_head*, %struct.list_head** %4, align 8
  %30 = getelementptr inbounds %struct.list_head, %struct.list_head* %29, i32 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %30, align 8
  store %struct.list_head* %31, %struct.list_head** %3, align 8
  %32 = load %struct.list_head*, %struct.list_head** %4, align 8
  %33 = call i32 @list_del(%struct.list_head* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = call i32 @kfree(%struct.TYPE_6__* %34)
  %36 = load %struct.list_head*, %struct.list_head** %3, align 8
  store %struct.list_head* %36, %struct.list_head** %4, align 8
  br label %10

37:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local %struct.TYPE_6__* @list_entry(%struct.list_head*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_7__*) #1

declare dso_local i32 @list_del(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
