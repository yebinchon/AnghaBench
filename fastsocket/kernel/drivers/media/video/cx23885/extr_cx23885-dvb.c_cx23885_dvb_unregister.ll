; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-dvb.c_cx23885_dvb_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-dvb.c_cx23885_dvb_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_tsport = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.videobuf_dvb_frontend = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_dvb_unregister(%struct.cx23885_tsport* %0) #0 {
  %2 = alloca %struct.cx23885_tsport*, align 8
  %3 = alloca %struct.videobuf_dvb_frontend*, align 8
  store %struct.cx23885_tsport* %0, %struct.cx23885_tsport** %2, align 8
  %4 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %5 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %4, i32 0, i32 1
  %6 = call %struct.videobuf_dvb_frontend* @videobuf_dvb_get_frontend(i32* %5, i32 1)
  store %struct.videobuf_dvb_frontend* %6, %struct.videobuf_dvb_frontend** %3, align 8
  %7 = load %struct.videobuf_dvb_frontend*, %struct.videobuf_dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.videobuf_dvb_frontend, %struct.videobuf_dvb_frontend* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %14 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %13, i32 0, i32 1
  %15 = call i32 @videobuf_dvb_unregister_bus(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %18 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %25 [
    i32 128, label %22
  ]

22:                                               ; preds = %16
  %23 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %2, align 8
  %24 = call i32 @netup_ci_exit(%struct.cx23885_tsport* %23)
  br label %25

25:                                               ; preds = %16, %22
  ret i32 0
}

declare dso_local %struct.videobuf_dvb_frontend* @videobuf_dvb_get_frontend(i32*, i32) #1

declare dso_local i32 @videobuf_dvb_unregister_bus(i32*) #1

declare dso_local i32 @netup_ci_exit(%struct.cx23885_tsport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
