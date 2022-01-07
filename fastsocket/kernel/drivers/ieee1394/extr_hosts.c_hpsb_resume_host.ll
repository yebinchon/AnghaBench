; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_hosts.c_hpsb_resume_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_hosts.c_hpsb_resume_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.hpsb_host*, i32, i32)*, i32 (%struct.hpsb_host*, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RESET_BUS = common dso_local global i32 0, align 4
@SHORT_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_resume_host(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %3 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %4 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = load i32 (%struct.hpsb_host*, i32)*, i32 (%struct.hpsb_host*, i32)** %6, align 8
  %8 = icmp ne i32 (%struct.hpsb_host*, i32)* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %11 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32 (%struct.hpsb_host*, i32)*, i32 (%struct.hpsb_host*, i32)** %13, align 8
  %15 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %17 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %14(%struct.hpsb_host* %15, i32 %21)
  br label %23

23:                                               ; preds = %9, %1
  %24 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %25 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hpsb_host*, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32)** %27, align 8
  %29 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %30 = load i32, i32* @RESET_BUS, align 4
  %31 = load i32, i32* @SHORT_RESET, align 4
  %32 = call i32 %28(%struct.hpsb_host* %29, i32 %30, i32 %31)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
