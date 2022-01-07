; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DVB_NET_DEVICES_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvb_net_release(%struct.dvb_net* %0) #0 {
  %2 = alloca %struct.dvb_net*, align 8
  %3 = alloca i32, align 4
  store %struct.dvb_net* %0, %struct.dvb_net** %2, align 8
  %4 = load %struct.dvb_net*, %struct.dvb_net** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.dvb_net*, %struct.dvb_net** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.dvb_net*, %struct.dvb_net** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dvb_net*, %struct.dvb_net** %2, align 8
  %19 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @wait_event(i32 %17, i32 %24)
  br label %26

26:                                               ; preds = %12, %1
  %27 = load %struct.dvb_net*, %struct.dvb_net** %2, align 8
  %28 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @dvb_unregister_device(%struct.TYPE_2__* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %49, %26
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @DVB_NET_DEVICES_MAX, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.dvb_net*, %struct.dvb_net** %2, align 8
  %37 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.dvb_net*, %struct.dvb_net** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @dvb_net_remove_if(%struct.dvb_net* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %44
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %31

52:                                               ; preds = %31
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @dvb_unregister_device(%struct.TYPE_2__*) #1

declare dso_local i32 @dvb_net_remove_if(%struct.dvb_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
