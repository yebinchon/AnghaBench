; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_breathe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_breathe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.request_queue*, %struct.cdrom_info* }
%struct.request_queue = type { i32 }
%struct.cdrom_info = type { i64 }
%struct.request = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ATAPI_WAIT_WRITE_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.request*)* @ide_cd_breathe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cd_breathe(%struct.TYPE_3__* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.cdrom_info*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.cdrom_info*, %struct.cdrom_info** %10, align 8
  store %struct.cdrom_info* %11, %struct.cdrom_info** %6, align 8
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @ATAPI_WAIT_WRITE_BUSY, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %21 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.request*, %struct.request** %5, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.cdrom_info*, %struct.cdrom_info** %6, align 8
  %27 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @time_after(i64 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.request_queue*, %struct.request_queue** %34, align 8
  store %struct.request_queue* %35, %struct.request_queue** %7, align 8
  %36 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %37 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_lock_irqsave(i32 %38, i64 %39)
  %41 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %42 = call i32 @blk_plug_device(%struct.request_queue* %41)
  %43 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32 %45, i64 %46)
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %32, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @blk_plug_device(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
