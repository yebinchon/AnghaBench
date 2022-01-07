; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx_set_bd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx_set_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_tx_buffer_desc = type { i32, i32, i32, i32 }

@TXD_LEN_SHIFT = common dso_local global i32 0, align 4
@TXD_MSS_SHIFT = common dso_local global i32 0, align 4
@TXD_VLAN_TAG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3_tx_buffer_desc*, i64, i32, i32, i32, i32)* @tg3_tx_set_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_tx_set_bd(%struct.tg3_tx_buffer_desc* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.tg3_tx_buffer_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tg3_tx_buffer_desc* %0, %struct.tg3_tx_buffer_desc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i64, i64* %8, align 8
  %14 = trunc i64 %13 to i32
  %15 = ashr i32 %14, 32
  %16 = load %struct.tg3_tx_buffer_desc*, %struct.tg3_tx_buffer_desc** %7, align 8
  %17 = getelementptr inbounds %struct.tg3_tx_buffer_desc, %struct.tg3_tx_buffer_desc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.tg3_tx_buffer_desc*, %struct.tg3_tx_buffer_desc** %7, align 8
  %21 = getelementptr inbounds %struct.tg3_tx_buffer_desc, %struct.tg3_tx_buffer_desc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @TXD_LEN_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 65535
  %27 = or i32 %24, %26
  %28 = load %struct.tg3_tx_buffer_desc*, %struct.tg3_tx_buffer_desc** %7, align 8
  %29 = getelementptr inbounds %struct.tg3_tx_buffer_desc, %struct.tg3_tx_buffer_desc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @TXD_MSS_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @TXD_VLAN_TAG_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  %37 = load %struct.tg3_tx_buffer_desc*, %struct.tg3_tx_buffer_desc** %7, align 8
  %38 = getelementptr inbounds %struct.tg3_tx_buffer_desc, %struct.tg3_tx_buffer_desc* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
