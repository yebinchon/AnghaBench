; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i32, i32, i64 }

@TG3_TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tg3_napi*)* @tg3_tx_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tg3_tx_avail(%struct.tg3_napi* %0) #0 {
  %2 = alloca %struct.tg3_napi*, align 8
  store %struct.tg3_napi* %0, %struct.tg3_napi** %2, align 8
  %3 = call i32 (...) @barrier()
  %4 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %5 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %8 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %11 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  %14 = load i32, i32* @TG3_TX_RING_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %6, %17
  ret i64 %18
}

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
