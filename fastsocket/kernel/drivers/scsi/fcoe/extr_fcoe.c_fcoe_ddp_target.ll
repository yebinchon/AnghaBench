; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_ddp_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe.c_fcoe_ddp_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.scatterlist = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, %struct.scatterlist*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, i32, %struct.scatterlist*, i32)* @fcoe_ddp_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_ddp_target(%struct.fc_lport* %0, i32 %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %12 = call %struct.net_device* @fcoe_netdev(%struct.fc_lport* %11)
  store %struct.net_device* %12, %struct.net_device** %10, align 8
  %13 = load %struct.net_device*, %struct.net_device** %10, align 8
  %14 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.net_device*, i32, %struct.scatterlist*, i32)*, i32 (%struct.net_device*, i32, %struct.scatterlist*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.net_device*, i32, %struct.scatterlist*, i32)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.net_device*, i32, %struct.scatterlist*, i32)*, i32 (%struct.net_device*, i32, %struct.scatterlist*, i32)** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 %22(%struct.net_device* %23, i32 %24, %struct.scatterlist* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %29

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.net_device* @fcoe_netdev(%struct.fc_lport*) #1

declare dso_local %struct.TYPE_2__* @netdev_extended(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
