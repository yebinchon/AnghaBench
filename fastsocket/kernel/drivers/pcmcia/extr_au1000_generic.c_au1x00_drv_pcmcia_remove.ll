; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_generic.c_au1x00_drv_pcmcia_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_generic.c_au1x00_drv_pcmcia_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.skt_dev_info = type { i32 }
%struct.au1000_pcmcia_socket = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.au1000_pcmcia_socket*)* }

@pcmcia_sockets_lock = common dso_local global i32 0, align 4
@dead_socket = common dso_local global i32 0, align 4
@mips_io_port_base = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au1x00_drv_pcmcia_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.skt_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au1000_pcmcia_socket*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.skt_dev_info* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.skt_dev_info* %7, %struct.skt_dev_info** %3, align 8
  %8 = call i32 @mutex_lock(i32* @pcmcia_sockets_lock)
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call i32 @platform_set_drvdata(%struct.platform_device* %9, i32* null)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %46, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.skt_dev_info*, %struct.skt_dev_info** %3, align 8
  %14 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.au1000_pcmcia_socket* @PCMCIA_SOCKET(i32 %18)
  store %struct.au1000_pcmcia_socket* %19, %struct.au1000_pcmcia_socket** %5, align 8
  %20 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %5, align 8
  %21 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %20, i32 0, i32 3
  %22 = call i32 @del_timer_sync(i32* %21)
  %23 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %5, align 8
  %24 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %23, i32 0, i32 2
  %25 = call i32 @pcmcia_unregister_socket(i32* %24)
  %26 = call i32 (...) @flush_scheduled_work()
  %27 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %5, align 8
  %28 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.au1000_pcmcia_socket*)*, i32 (%struct.au1000_pcmcia_socket*)** %30, align 8
  %32 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %5, align 8
  %33 = call i32 %31(%struct.au1000_pcmcia_socket* %32)
  %34 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %5, align 8
  %35 = call i32 @au1x00_pcmcia_config_skt(%struct.au1000_pcmcia_socket* %34, i32* @dead_socket)
  %36 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %5, align 8
  %37 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @mips_io_port_base, align 8
  %40 = trunc i64 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = call i32 @iounmap(i32* %42)
  %44 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %5, align 8
  %45 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %17
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load %struct.skt_dev_info*, %struct.skt_dev_info** %3, align 8
  %51 = call i32 @kfree(%struct.skt_dev_info* %50)
  %52 = call i32 @mutex_unlock(i32* @pcmcia_sockets_lock)
  ret i32 0
}

declare dso_local %struct.skt_dev_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

declare dso_local %struct.au1000_pcmcia_socket* @PCMCIA_SOCKET(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pcmcia_unregister_socket(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @au1x00_pcmcia_config_skt(%struct.au1000_pcmcia_socket*, i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(%struct.skt_dev_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
