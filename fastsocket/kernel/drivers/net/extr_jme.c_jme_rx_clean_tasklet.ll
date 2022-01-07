; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_rx_clean_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_rx_clean_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.dynpcc_info }
%struct.dynpcc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @jme_rx_clean_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_rx_clean_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca %struct.dynpcc_info*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.jme_adapter*
  store %struct.jme_adapter* %6, %struct.jme_adapter** %3, align 8
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %7, i32 0, i32 1
  store %struct.dynpcc_info* %8, %struct.dynpcc_info** %4, align 8
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @jme_process_receive(%struct.jme_adapter* %9, i32 %12)
  %14 = load %struct.dynpcc_info*, %struct.dynpcc_info** %4, align 8
  %15 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  ret void
}

declare dso_local i32 @jme_process_receive(%struct.jme_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
