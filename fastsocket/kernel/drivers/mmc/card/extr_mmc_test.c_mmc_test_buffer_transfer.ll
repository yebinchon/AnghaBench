; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_buffer_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_mmc_test.c_mmc_test_buffer_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_request = type { i32, %struct.mmc_request*, %struct.mmc_request*, %struct.mmc_request* }
%struct.mmc_command = type { i32, %struct.mmc_command*, %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_data = type { i32, %struct.mmc_data*, %struct.mmc_data*, %struct.mmc_data* }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i32*, i32, i32, i32)* @mmc_test_buffer_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_buffer_transfer(%struct.mmc_test_card* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_test_card*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mmc_request, align 8
  %14 = alloca %struct.mmc_command, align 8
  %15 = alloca %struct.mmc_command, align 8
  %16 = alloca %struct.mmc_data, align 8
  %17 = alloca %struct.scatterlist, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = call i32 @memset(%struct.mmc_request* %13, i32 0, i32 32)
  %19 = bitcast %struct.mmc_command* %14 to %struct.mmc_request*
  %20 = call i32 @memset(%struct.mmc_request* %19, i32 0, i32 32)
  %21 = bitcast %struct.mmc_data* %16 to %struct.mmc_request*
  %22 = call i32 @memset(%struct.mmc_request* %21, i32 0, i32 32)
  %23 = bitcast %struct.mmc_command* %15 to %struct.mmc_request*
  %24 = call i32 @memset(%struct.mmc_request* %23, i32 0, i32 32)
  %25 = bitcast %struct.mmc_command* %14 to %struct.mmc_request*
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %13, i32 0, i32 3
  store %struct.mmc_request* %25, %struct.mmc_request** %26, align 8
  %27 = bitcast %struct.mmc_data* %16 to %struct.mmc_request*
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %13, i32 0, i32 2
  store %struct.mmc_request* %27, %struct.mmc_request** %28, align 8
  %29 = bitcast %struct.mmc_command* %15 to %struct.mmc_request*
  %30 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %13, i32 0, i32 1
  store %struct.mmc_request* %29, %struct.mmc_request** %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @sg_init_one(%struct.scatterlist* %17, i32* %31, i32 %32)
  %34 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @mmc_test_prepare_mrq(%struct.mmc_test_card* %34, %struct.mmc_request* %13, %struct.scatterlist* %17, i32 1, i32 %35, i32 1, i32 %36, i32 %37)
  %39 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %40 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mmc_wait_for_req(i32 %43, %struct.mmc_request* %13)
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %5
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %6, align 4
  br label %66

51:                                               ; preds = %5
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %6, align 4
  br label %66

58:                                               ; preds = %51
  %59 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %60 = call i32 @mmc_test_wait_busy(%struct.mmc_test_card* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %66

65:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %63, %55, %48
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @mmc_test_prepare_mrq(%struct.mmc_test_card*, %struct.mmc_request*, %struct.scatterlist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #1

declare dso_local i32 @mmc_test_wait_busy(%struct.mmc_test_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
