; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_reset_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.hpsb_host*, i32, i32)* }

@RESET_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_reset_bus(%struct.hpsb_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %7 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %12 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.hpsb_host*, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32)** %14, align 8
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %17 = load i32, i32* @RESET_BUS, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 %15(%struct.hpsb_host* %16, i32 %17, i32 %18)
  store i32 0, i32* %3, align 4
  br label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
