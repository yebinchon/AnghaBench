; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_cis.c_sdio_free_common_cis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_cis.c_sdio_free_common_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.sdio_func_tuple* }
%struct.sdio_func_tuple = type { %struct.sdio_func_tuple* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdio_free_common_cis(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca %struct.sdio_func_tuple*, align 8
  %4 = alloca %struct.sdio_func_tuple*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 0
  %7 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %6, align 8
  store %struct.sdio_func_tuple* %7, %struct.sdio_func_tuple** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %3, align 8
  %10 = icmp ne %struct.sdio_func_tuple* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %3, align 8
  store %struct.sdio_func_tuple* %12, %struct.sdio_func_tuple** %4, align 8
  %13 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %3, align 8
  %14 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %13, i32 0, i32 0
  %15 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %14, align 8
  store %struct.sdio_func_tuple* %15, %struct.sdio_func_tuple** %3, align 8
  %16 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %4, align 8
  %17 = call i32 @kfree(%struct.sdio_func_tuple* %16)
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 0
  store %struct.sdio_func_tuple* null, %struct.sdio_func_tuple** %20, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.sdio_func_tuple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
