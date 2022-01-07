; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_hosts.c_hpsb_remove_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_hosts.c_hpsb_remove_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, i32, i32, i32*, i32 }

@dummy_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_remove_host(%struct.hpsb_host* %0) #0 {
  %2 = alloca %struct.hpsb_host*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %2, align 8
  %3 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %4 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %6 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %5, i32 0, i32 4
  %7 = call i32 @cancel_delayed_work(i32* %6)
  %8 = call i32 (...) @flush_scheduled_work()
  %9 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %10 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %9, i32 0, i32 3
  store i32* @dummy_driver, i32** %10, align 8
  %11 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %12 = call i32 @highlevel_remove_host(%struct.hpsb_host* %11)
  %13 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %14 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %13, i32 0, i32 2
  %15 = call i32 @device_unregister(i32* %14)
  %16 = load %struct.hpsb_host*, %struct.hpsb_host** %2, align 8
  %17 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %16, i32 0, i32 1
  %18 = call i32 @device_unregister(i32* %17)
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @highlevel_remove_host(%struct.hpsb_host*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
