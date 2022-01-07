; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_btcx-risc.c_btcx_riscmem_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_btcx-risc.c_btcx_riscmem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.btcx_riscmem = type { i64, i32*, i32 }

@debug = common dso_local global i64 0, align 8
@memcnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"btcx: riscmem free [%d] dma=%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btcx_riscmem_free(%struct.pci_dev* %0, %struct.btcx_riscmem* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.btcx_riscmem*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %4, align 8
  %5 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %6 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* null, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %35

10:                                               ; preds = %2
  %11 = load i64, i64* @debug, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, i32* @memcnt, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @memcnt, align 4
  %16 = load i32, i32* @memcnt, align 4
  %17 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %18 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19)
  br label %21

21:                                               ; preds = %13, %10
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %24 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %27 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %30 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @pci_free_consistent(%struct.pci_dev* %22, i32 %25, i32* %28, i64 %31)
  %33 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %4, align 8
  %34 = call i32 @memset(%struct.btcx_riscmem* %33, i32 0, i32 24)
  br label %35

35:                                               ; preds = %21, %9
  ret void
}

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32*, i64) #1

declare dso_local i32 @memset(%struct.btcx_riscmem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
