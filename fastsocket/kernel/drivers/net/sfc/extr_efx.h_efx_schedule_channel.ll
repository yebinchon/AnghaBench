; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.h_efx_schedule_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.h_efx_schedule_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"channel %d scheduling NAPI poll on CPU%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*)* @efx_schedule_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_schedule_channel(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %3 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %4 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load i32, i32* @intr, align 4
  %7 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %8 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %13 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (...) @raw_smp_processor_id()
  %16 = call i32 @netif_vdbg(%struct.TYPE_2__* %5, i32 %6, i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %18 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %20 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %19, i32 0, i32 1
  %21 = call i32 @napi_schedule(i32* %20)
  ret void
}

declare dso_local i32 @netif_vdbg(%struct.TYPE_2__*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
