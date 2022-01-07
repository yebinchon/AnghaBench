; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_comminit.c_aac_queue_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_comminit.c_aac_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }
%struct.aac_queue = type { i32, %struct.TYPE_2__, i32, i32*, i32, i32, i32, %struct.aac_dev*, i64 }
%struct.TYPE_2__ = type { i8**, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, %struct.aac_queue*, i32*, i32)* @aac_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_queue_init(%struct.aac_dev* %0, %struct.aac_queue* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.aac_dev*, align 8
  %6 = alloca %struct.aac_queue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %5, align 8
  store %struct.aac_queue* %1, %struct.aac_queue** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %10 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %9, i32 0, i32 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %12 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %13 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %12, i32 0, i32 7
  store %struct.aac_dev* %11, %struct.aac_dev** %13, align 8
  %14 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %15 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %14, i32 0, i32 6
  %16 = call i32 @init_waitqueue_head(i32* %15)
  %17 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %18 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %17, i32 0, i32 5
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %21 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %20, i32 0, i32 4
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %24 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %23, i32 0, i32 2
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %27 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %26, i32 0, i32 2
  %28 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %29 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to i8**
  %32 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %33 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8** %31, i8*** %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = bitcast i32* %36 to i8**
  %38 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %39 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8** %37, i8*** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %44 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  store i8* %42, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %50 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  store i8* %48, i8** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.aac_queue*, %struct.aac_queue** %6, align 8
  %55 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  ret void
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
