; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_dvb_urb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_dvb_urb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_dvb_adapter = type { i32, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32 }

@DVB_SBUF_NUM = common dso_local global i32 0, align 4
@DVB_URB_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dvb_urb_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pd_dvb_adapter*)* @dvb_urb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_urb_init(%struct.pd_dvb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pd_dvb_adapter*, align 8
  store %struct.pd_dvb_adapter* %0, %struct.pd_dvb_adapter** %3, align 8
  %4 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %4, i32 0, i32 2
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* @DVB_SBUF_NUM, align 4
  %16 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DVB_URB_BUF_SIZE, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i32, i32* @dvb_urb_irq, align 4
  %27 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %28 = call i32 @alloc_bulk_urbs_generic(i64* %14, i32 %15, i32 %20, i32 %23, i32 %24, i32 %25, i32 %26, %struct.pd_dvb_adapter* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %11, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @alloc_bulk_urbs_generic(i64*, i32, i32, i32, i32, i32, i32, %struct.pd_dvb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
