; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_wka_port_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_wka_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_wka_port = type { i32, i32, i32, i32, i32, %struct.zfcp_adapter*, i32 }
%struct.zfcp_adapter = type { i32 }

@ZFCP_WKA_PORT_OFFLINE = common dso_local global i32 0, align 4
@zfcp_fc_wka_port_offline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_wka_port*, i32, %struct.zfcp_adapter*)* @zfcp_fc_wka_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_wka_port_init(%struct.zfcp_wka_port* %0, i32 %1, %struct.zfcp_adapter* %2) #0 {
  %4 = alloca %struct.zfcp_wka_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_wka_port* %0, %struct.zfcp_wka_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.zfcp_adapter* %2, %struct.zfcp_adapter** %6, align 8
  %7 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %4, align 8
  %8 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %7, i32 0, i32 6
  %9 = call i32 @init_waitqueue_head(i32* %8)
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %6, align 8
  %11 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %11, i32 0, i32 5
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %4, align 8
  %15 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @ZFCP_WKA_PORT_OFFLINE, align 4
  %17 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %4, align 8
  %18 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %4, align 8
  %20 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %19, i32 0, i32 2
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %4, align 8
  %23 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %22, i32 0, i32 1
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %4, align 8
  %26 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %25, i32 0, i32 0
  %27 = load i32, i32* @zfcp_fc_wka_port_offline, align 4
  %28 = call i32 @INIT_DELAYED_WORK(i32* %26, i32 %27)
  ret void
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
