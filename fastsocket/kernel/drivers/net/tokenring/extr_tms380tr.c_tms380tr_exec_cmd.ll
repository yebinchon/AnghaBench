; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_local = type { i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16)* @tms380tr_exec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tms380tr_exec_cmd(%struct.net_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.net_local* @netdev_priv(%struct.net_device* %6)
  store %struct.net_local* %7, %struct.net_local** %5, align 8
  %8 = load i16, i16* %4, align 2
  %9 = zext i16 %8 to i32
  %10 = load %struct.net_local*, %struct.net_local** %5, align 8
  %11 = getelementptr inbounds %struct.net_local, %struct.net_local* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = or i32 %13, %9
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %11, align 2
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @tms380tr_chk_outstanding_cmds(%struct.net_device* %16)
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tms380tr_chk_outstanding_cmds(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
