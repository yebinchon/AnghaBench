; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_msgqueue.c_msgqueue_getmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_msgqueue.c_msgqueue_getmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%struct.TYPE_3__ = type { %struct.msgqueue_entry* }
%struct.msgqueue_entry = type { %struct.message, %struct.msgqueue_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.message* @msgqueue_getmsg(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msgqueue_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %7, align 8
  store %struct.msgqueue_entry* %8, %struct.msgqueue_entry** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %5, align 8
  %11 = icmp ne %struct.msgqueue_entry* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %5, align 8
  %20 = getelementptr inbounds %struct.msgqueue_entry, %struct.msgqueue_entry* %19, i32 0, i32 1
  %21 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %20, align 8
  store %struct.msgqueue_entry* %21, %struct.msgqueue_entry** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  br label %9

24:                                               ; preds = %15
  %25 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %5, align 8
  %26 = icmp ne %struct.msgqueue_entry* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %5, align 8
  %29 = getelementptr inbounds %struct.msgqueue_entry, %struct.msgqueue_entry* %28, i32 0, i32 0
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi %struct.message* [ %29, %27 ], [ null, %30 ]
  ret %struct.message* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
