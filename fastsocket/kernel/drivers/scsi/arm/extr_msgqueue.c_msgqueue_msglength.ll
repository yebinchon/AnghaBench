; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_msgqueue.c_msgqueue_msglength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_msgqueue.c_msgqueue_msglength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.msgqueue_entry* }
%struct.msgqueue_entry = type { %struct.TYPE_4__, %struct.msgqueue_entry* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msgqueue_msglength(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.msgqueue_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %6, align 8
  store %struct.msgqueue_entry* %7, %struct.msgqueue_entry** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %9, align 8
  store %struct.msgqueue_entry* %10, %struct.msgqueue_entry** %3, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %3, align 8
  %13 = icmp ne %struct.msgqueue_entry* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %3, align 8
  %16 = getelementptr inbounds %struct.msgqueue_entry, %struct.msgqueue_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %3, align 8
  %25 = getelementptr inbounds %struct.msgqueue_entry, %struct.msgqueue_entry* %24, i32 0, i32 1
  %26 = load %struct.msgqueue_entry*, %struct.msgqueue_entry** %25, align 8
  store %struct.msgqueue_entry* %26, %struct.msgqueue_entry** %3, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
