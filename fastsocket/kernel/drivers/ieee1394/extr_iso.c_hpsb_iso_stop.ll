; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hpsb_iso*, i32, i32)* }

@HPSB_ISO_DRIVER_STARTED = common dso_local global i32 0, align 4
@HPSB_ISO_XMIT = common dso_local global i64 0, align 8
@XMIT_STOP = common dso_local global i32 0, align 4
@RECV_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_iso_stop(%struct.hpsb_iso* %0) #0 {
  %2 = alloca %struct.hpsb_iso*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %2, align 8
  %3 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %4 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @HPSB_ISO_DRIVER_STARTED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %12 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.hpsb_iso*, i32, i32)*, i32 (%struct.hpsb_iso*, i32, i32)** %16, align 8
  %18 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %19 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %20 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HPSB_ISO_XMIT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %10
  %25 = load i32, i32* @XMIT_STOP, align 4
  br label %28

26:                                               ; preds = %10
  %27 = load i32, i32* @RECV_STOP, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 %17(%struct.hpsb_iso* %18, i32 %29, i32 0)
  %31 = load i32, i32* @HPSB_ISO_DRIVER_STARTED, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %34 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %28, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
