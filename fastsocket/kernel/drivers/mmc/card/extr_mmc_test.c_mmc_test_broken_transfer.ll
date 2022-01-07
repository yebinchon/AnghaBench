; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_broken_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_broken_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_request = type { %struct.mmc_request*, %struct.mmc_request*, %struct.mmc_request* }
%struct.mmc_command = type { %struct.mmc_command*, %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_data = type { %struct.mmc_data*, %struct.mmc_data*, %struct.mmc_data* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i32, i32, i32)* @mmc_test_broken_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_broken_transfer(%struct.mmc_test_card* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mmc_test_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_request, align 8
  %10 = alloca %struct.mmc_command, align 8
  %11 = alloca %struct.mmc_command, align 8
  %12 = alloca %struct.mmc_data, align 8
  %13 = alloca %struct.scatterlist, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = call i32 @memset(%struct.mmc_request* %9, i32 0, i32 24)
  %15 = bitcast %struct.mmc_command* %10 to %struct.mmc_request*
  %16 = call i32 @memset(%struct.mmc_request* %15, i32 0, i32 24)
  %17 = bitcast %struct.mmc_data* %12 to %struct.mmc_request*
  %18 = call i32 @memset(%struct.mmc_request* %17, i32 0, i32 24)
  %19 = bitcast %struct.mmc_command* %11 to %struct.mmc_request*
  %20 = call i32 @memset(%struct.mmc_request* %19, i32 0, i32 24)
  %21 = bitcast %struct.mmc_command* %10 to %struct.mmc_request*
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 2
  store %struct.mmc_request* %21, %struct.mmc_request** %22, align 8
  %23 = bitcast %struct.mmc_data* %12 to %struct.mmc_request*
  %24 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 1
  store %struct.mmc_request* %23, %struct.mmc_request** %24, align 8
  %25 = bitcast %struct.mmc_command* %11 to %struct.mmc_request*
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  store %struct.mmc_request* %25, %struct.mmc_request** %26, align 8
  %27 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul i32 %30, %31
  %33 = call i32 @sg_init_one(%struct.scatterlist* %13, i32 %29, i32 %32)
  %34 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @mmc_test_prepare_mrq(%struct.mmc_test_card* %34, %struct.mmc_request* %9, %struct.scatterlist* %13, i32 1, i32 0, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @mmc_test_prepare_broken_mrq(%struct.mmc_test_card* %39, %struct.mmc_request* %9, i32 %40)
  %42 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %43 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mmc_wait_for_req(i32 %46, %struct.mmc_request* %9)
  %48 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %49 = call i32 @mmc_test_wait_busy(%struct.mmc_test_card* %48)
  %50 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %51 = call i32 @mmc_test_check_broken_result(%struct.mmc_test_card* %50, %struct.mmc_request* %9)
  ret i32 %51
}

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @mmc_test_prepare_mrq(%struct.mmc_test_card*, %struct.mmc_request*, %struct.scatterlist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_test_prepare_broken_mrq(%struct.mmc_test_card*, %struct.mmc_request*, i32) #1

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #1

declare dso_local i32 @mmc_test_wait_busy(%struct.mmc_test_card*) #1

declare dso_local i32 @mmc_test_check_broken_result(%struct.mmc_test_card*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
