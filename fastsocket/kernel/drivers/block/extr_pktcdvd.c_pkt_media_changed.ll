; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_media_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_media_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.TYPE_4__*, %struct.pktcdvd_device* }
%struct.TYPE_4__ = type { {}* }
%struct.pktcdvd_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gendisk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @pkt_media_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_media_changed(%struct.gendisk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.pktcdvd_device*, align 8
  %5 = alloca %struct.gendisk*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 1
  %8 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  store %struct.pktcdvd_device* %8, %struct.pktcdvd_device** %4, align 8
  %9 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %10 = icmp ne %struct.pktcdvd_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %14 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %36

18:                                               ; preds = %12
  %19 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %20 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.gendisk*, %struct.gendisk** %22, align 8
  store %struct.gendisk* %23, %struct.gendisk** %5, align 8
  %24 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %25 = icmp ne %struct.gendisk* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %36

27:                                               ; preds = %18
  %28 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %29 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.gendisk*)**
  %33 = load i32 (%struct.gendisk*)*, i32 (%struct.gendisk*)** %32, align 8
  %34 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %35 = call i32 %33(%struct.gendisk* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %26, %17, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
