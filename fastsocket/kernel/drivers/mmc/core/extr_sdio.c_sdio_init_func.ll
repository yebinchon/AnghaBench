; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_sdio_init_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_sdio_init_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.sdio_func** }
%struct.sdio_func = type { i32 }

@SDIO_MAX_FUNCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32)* @sdio_init_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_init_func(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdio_func*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SDIO_MAX_FUNCS, align 4
  %10 = icmp ugt i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %14 = call %struct.sdio_func* @sdio_alloc_func(%struct.mmc_card* %13)
  store %struct.sdio_func* %14, %struct.sdio_func** %7, align 8
  %15 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %16 = call i64 @IS_ERR(%struct.sdio_func* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.sdio_func* %19)
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %26 = call i32 @sdio_read_fbr(%struct.sdio_func* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %45

30:                                               ; preds = %21
  %31 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %32 = call i32 @sdio_read_func_cis(%struct.sdio_func* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %45

36:                                               ; preds = %30
  %37 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %38 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %38, i32 0, i32 0
  %40 = load %struct.sdio_func**, %struct.sdio_func*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sub i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sdio_func*, %struct.sdio_func** %40, i64 %43
  store %struct.sdio_func* %37, %struct.sdio_func** %44, align 8
  store i32 0, i32* %3, align 4
  br label %49

45:                                               ; preds = %35, %29
  %46 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %47 = call i32 @sdio_remove_func(%struct.sdio_func* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %36, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sdio_func* @sdio_alloc_func(%struct.mmc_card*) #1

declare dso_local i64 @IS_ERR(%struct.sdio_func*) #1

declare dso_local i32 @PTR_ERR(%struct.sdio_func*) #1

declare dso_local i32 @sdio_read_fbr(%struct.sdio_func*) #1

declare dso_local i32 @sdio_read_func_cis(%struct.sdio_func*) #1

declare dso_local i32 @sdio_remove_func(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
