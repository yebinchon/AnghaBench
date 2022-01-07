; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_write_isac_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_write_isac_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { %struct.fritz_adapter* }
%struct.fritz_adapter = type { i32, i64 }

@AVM_IDX_ISAC_FIFO = common dso_local global i32 0, align 4
@AVM_INDEX = common dso_local global i64 0, align 8
@AVM_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*, i8*, i32)* @fcpci_write_isac_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcpci_write_isac_fifo(%struct.isac* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.isac*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fritz_adapter*, align 8
  %8 = alloca i64, align 8
  store %struct.isac* %0, %struct.isac** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.isac*, %struct.isac** %4, align 8
  %10 = getelementptr inbounds %struct.isac, %struct.isac* %9, i32 0, i32 0
  %11 = load %struct.fritz_adapter*, %struct.fritz_adapter** %10, align 8
  store %struct.fritz_adapter* %11, %struct.fritz_adapter** %7, align 8
  %12 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @AVM_IDX_ISAC_FIFO, align 4
  %17 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AVM_INDEX, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outb(i32 %16, i64 %21)
  %23 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AVM_DATA, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @outsb(i64 %27, i8* %28, i32 %29)
  %31 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %32 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outsb(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
