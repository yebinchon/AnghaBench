; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__*, %struct.mmc_data* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32 }
%struct.atmel_mci_slot = type { i32, i32, %struct.atmel_mci* }
%struct.atmel_mci = type { i32 }

@ATMCI_CARD_PRESENT = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @atmci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.atmel_mci_slot*, align 8
  %6 = alloca %struct.atmel_mci*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host* %8)
  store %struct.atmel_mci_slot* %9, %struct.atmel_mci_slot** %5, align 8
  %10 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %11 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %10, i32 0, i32 2
  %12 = load %struct.atmel_mci*, %struct.atmel_mci** %11, align 8
  store %struct.atmel_mci* %12, %struct.atmel_mci** %6, align 8
  %13 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %14 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i32, i32* @ATMCI_CARD_PRESENT, align 4
  %18 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %19 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEDIUM, align 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %31 = call i32 @mmc_request_done(%struct.mmc_host* %29, %struct.mmc_request* %30)
  br label %64

32:                                               ; preds = %2
  %33 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %33, i32 0, i32 1
  %35 = load %struct.mmc_data*, %struct.mmc_data** %34, align 8
  store %struct.mmc_data* %35, %struct.mmc_data** %7, align 8
  %36 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %37 = icmp ne %struct.mmc_data* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  %52 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %57 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %58 = call i32 @mmc_request_done(%struct.mmc_host* %56, %struct.mmc_request* %57)
  br label %59

59:                                               ; preds = %49, %43, %38, %32
  %60 = load %struct.atmel_mci*, %struct.atmel_mci** %6, align 8
  %61 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %62 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %63 = call i32 @atmci_queue_request(%struct.atmel_mci* %60, %struct.atmel_mci_slot* %61, %struct.mmc_request* %62)
  br label %64

64:                                               ; preds = %59, %22
  ret void
}

declare dso_local %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @atmci_queue_request(%struct.atmel_mci*, %struct.atmel_mci_slot*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
