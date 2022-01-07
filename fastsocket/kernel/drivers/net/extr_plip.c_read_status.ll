; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.parport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8 (%struct.parport*)* }
%struct.net_local = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.parport* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.net_device*)* @read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @read_status(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.parport*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @netdev_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.net_local*
  %7 = getelementptr inbounds %struct.net_local, %struct.net_local* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.parport*, %struct.parport** %9, align 8
  store %struct.parport* %10, %struct.parport** %3, align 8
  %11 = load %struct.parport*, %struct.parport** %3, align 8
  %12 = getelementptr inbounds %struct.parport, %struct.parport* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8 (%struct.parport*)*, i8 (%struct.parport*)** %14, align 8
  %16 = load %struct.parport*, %struct.parport** %3, align 8
  %17 = call zeroext i8 %15(%struct.parport* %16)
  ret i8 %17
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
