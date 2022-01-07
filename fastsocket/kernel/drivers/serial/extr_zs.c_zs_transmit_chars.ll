; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { %struct.zs_scc* }
%struct.zs_scc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zs_port*)* @zs_transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_transmit_chars(%struct.zs_port* %0) #0 {
  %2 = alloca %struct.zs_port*, align 8
  %3 = alloca %struct.zs_scc*, align 8
  store %struct.zs_port* %0, %struct.zs_port** %2, align 8
  %4 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %5 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %4, i32 0, i32 0
  %6 = load %struct.zs_scc*, %struct.zs_scc** %5, align 8
  store %struct.zs_scc* %6, %struct.zs_scc** %3, align 8
  %7 = load %struct.zs_scc*, %struct.zs_scc** %3, align 8
  %8 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %11 = call i32 @zs_raw_transmit_chars(%struct.zs_port* %10)
  %12 = load %struct.zs_scc*, %struct.zs_scc** %3, align 8
  %13 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock(i32* %13)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @zs_raw_transmit_chars(%struct.zs_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
