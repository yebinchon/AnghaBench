; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_do_iso_xmit_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_do_iso_xmit_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hpsb_iso*, i32, i32)* }

@XMIT_START = common dso_local global i32 0, align 4
@HPSB_ISO_DRIVER_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_iso*, i32)* @do_iso_xmit_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_iso_xmit_start(%struct.hpsb_iso* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsb_iso*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %8 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.hpsb_iso*, i32, i32)*, i32 (%struct.hpsb_iso*, i32, i32)** %12, align 8
  %14 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %15 = load i32, i32* @XMIT_START, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 %13(%struct.hpsb_iso* %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @HPSB_ISO_DRIVER_STARTED, align 4
  %24 = load %struct.hpsb_iso*, %struct.hpsb_iso** %4, align 8
  %25 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
