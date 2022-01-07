; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_drv_pcmcia_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_common_drv_pcmcia_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skt_dev_info = type { i32, %struct.soc_pcmcia_socket* }
%struct.soc_pcmcia_socket = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.soc_pcmcia_socket*)* }

@soc_pcmcia_sockets_lock = common dso_local global i32 0, align 4
@dead_socket = common dso_local global i32 0, align 4
@soc_pcmcia_sockets = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soc_common_drv_pcmcia_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.skt_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_pcmcia_socket*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.skt_dev_info* @dev_get_drvdata(%struct.device* %6)
  store %struct.skt_dev_info* %7, %struct.skt_dev_info** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call i32 @dev_set_drvdata(%struct.device* %8, i32* null)
  %10 = call i32 @mutex_lock(i32* @soc_pcmcia_sockets_lock)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %61, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.skt_dev_info*, %struct.skt_dev_info** %3, align 8
  %14 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %11
  %18 = load %struct.skt_dev_info*, %struct.skt_dev_info** %3, align 8
  %19 = getelementptr inbounds %struct.skt_dev_info, %struct.skt_dev_info* %18, i32 0, i32 1
  %20 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %20, i64 %22
  store %struct.soc_pcmcia_socket* %23, %struct.soc_pcmcia_socket** %5, align 8
  %24 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %25 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %24, i32 0, i32 8
  %26 = call i32 @del_timer_sync(i32* %25)
  %27 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %28 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %27, i32 0, i32 7
  %29 = call i32 @pcmcia_unregister_socket(i32* %28)
  %30 = call i32 (...) @flush_scheduled_work()
  %31 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %32 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %31, i32 0, i32 6
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)** %34, align 8
  %36 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %37 = call i32 %35(%struct.soc_pcmcia_socket* %36)
  %38 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %39 = call i32 @soc_common_pcmcia_config_skt(%struct.soc_pcmcia_socket* %38, i32* @dead_socket)
  %40 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %41 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %40, i32 0, i32 5
  %42 = call i32 @list_del(i32* %41)
  %43 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %44 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @iounmap(i32* %45)
  %47 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %48 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %47, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %50 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %49, i32 0, i32 3
  %51 = call i32 @release_resource(i32* %50)
  %52 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %53 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %52, i32 0, i32 2
  %54 = call i32 @release_resource(i32* %53)
  %55 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %56 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %55, i32 0, i32 1
  %57 = call i32 @release_resource(i32* %56)
  %58 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %5, align 8
  %59 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %58, i32 0, i32 0
  %60 = call i32 @release_resource(i32* %59)
  br label %61

61:                                               ; preds = %17
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %11

64:                                               ; preds = %11
  %65 = call i64 @list_empty(i32* @soc_pcmcia_sockets)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 (...) @soc_pcmcia_cpufreq_unregister()
  br label %69

69:                                               ; preds = %67, %64
  %70 = call i32 @mutex_unlock(i32* @soc_pcmcia_sockets_lock)
  %71 = load %struct.skt_dev_info*, %struct.skt_dev_info** %3, align 8
  %72 = call i32 @kfree(%struct.skt_dev_info* %71)
  ret i32 0
}

declare dso_local %struct.skt_dev_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pcmcia_unregister_socket(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @soc_common_pcmcia_config_skt(%struct.soc_pcmcia_socket*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @soc_pcmcia_cpufreq_unregister(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.skt_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
