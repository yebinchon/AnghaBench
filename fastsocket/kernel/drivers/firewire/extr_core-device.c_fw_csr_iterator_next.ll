; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_fw_csr_iterator_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_fw_csr_iterator_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_csr_iterator = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_csr_iterator_next(%struct.fw_csr_iterator* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.fw_csr_iterator*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.fw_csr_iterator* %0, %struct.fw_csr_iterator** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.fw_csr_iterator*, %struct.fw_csr_iterator** %4, align 8
  %8 = getelementptr inbounds %struct.fw_csr_iterator, %struct.fw_csr_iterator* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 24
  %12 = load i32*, i32** %5, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.fw_csr_iterator*, %struct.fw_csr_iterator** %4, align 8
  %14 = getelementptr inbounds %struct.fw_csr_iterator, %struct.fw_csr_iterator* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 16777215
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.fw_csr_iterator*, %struct.fw_csr_iterator** %4, align 8
  %20 = getelementptr inbounds %struct.fw_csr_iterator, %struct.fw_csr_iterator* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %20, align 8
  %23 = load %struct.fw_csr_iterator*, %struct.fw_csr_iterator** %4, align 8
  %24 = getelementptr inbounds %struct.fw_csr_iterator, %struct.fw_csr_iterator* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = icmp ult i32* %21, %27
  %29 = zext i1 %28 to i32
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
