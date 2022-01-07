; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_simple_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_simple_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.mmc_request = type { %struct.mmc_request*, %struct.mmc_request*, %struct.mmc_request* }
%struct.mmc_command = type { %struct.mmc_command*, %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_data = type { %struct.mmc_data*, %struct.mmc_data*, %struct.mmc_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, %struct.scatterlist*, i32, i32, i32, i32, i32)* @mmc_test_simple_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_simple_transfer(%struct.mmc_test_card* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mmc_test_card*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mmc_request, align 8
  %16 = alloca %struct.mmc_command, align 8
  %17 = alloca %struct.mmc_command, align 8
  %18 = alloca %struct.mmc_data, align 8
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = call i32 @memset(%struct.mmc_request* %15, i32 0, i32 24)
  %20 = bitcast %struct.mmc_command* %16 to %struct.mmc_request*
  %21 = call i32 @memset(%struct.mmc_request* %20, i32 0, i32 24)
  %22 = bitcast %struct.mmc_data* %18 to %struct.mmc_request*
  %23 = call i32 @memset(%struct.mmc_request* %22, i32 0, i32 24)
  %24 = bitcast %struct.mmc_command* %17 to %struct.mmc_request*
  %25 = call i32 @memset(%struct.mmc_request* %24, i32 0, i32 24)
  %26 = bitcast %struct.mmc_command* %16 to %struct.mmc_request*
  %27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 2
  store %struct.mmc_request* %26, %struct.mmc_request** %27, align 8
  %28 = bitcast %struct.mmc_data* %18 to %struct.mmc_request*
  %29 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 1
  store %struct.mmc_request* %28, %struct.mmc_request** %29, align 8
  %30 = bitcast %struct.mmc_command* %17 to %struct.mmc_request*
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 0
  store %struct.mmc_request* %30, %struct.mmc_request** %31, align 8
  %32 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @mmc_test_prepare_mrq(%struct.mmc_test_card* %32, %struct.mmc_request* %15, %struct.scatterlist* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %41 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mmc_wait_for_req(i32 %44, %struct.mmc_request* %15)
  %46 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %47 = call i32 @mmc_test_wait_busy(%struct.mmc_test_card* %46)
  %48 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %49 = call i32 @mmc_test_check_result(%struct.mmc_test_card* %48, %struct.mmc_request* %15)
  ret i32 %49
}

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i32 @mmc_test_prepare_mrq(%struct.mmc_test_card*, %struct.mmc_request*, %struct.scatterlist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #1

declare dso_local i32 @mmc_test_wait_busy(%struct.mmc_test_card*) #1

declare dso_local i32 @mmc_test_check_result(%struct.mmc_test_card*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
