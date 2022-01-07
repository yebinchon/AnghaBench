; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_irq.c_sdio_release_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_irq.c_sdio_release_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"SDIO: Disabling IRQ for %s...\0A\00", align 1
@SDIO_CCCR_IENx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_release_irq(%struct.sdio_func* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.sdio_func* %0, %struct.sdio_func** %3, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %7 = icmp ne %struct.sdio_func* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %19 = call i32 @sdio_func_id(%struct.sdio_func* %18)
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %22 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %27 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %29 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sdio_card_irq_put(i32 %30)
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %34 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %37 = call i32 @mmc_io_rw_direct(i32 %35, i32 0, i32 0, i32 %36, i8 zeroext 0, i8* %5)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %69

42:                                               ; preds = %32
  %43 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %44 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %5, align 1
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 254
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  store i8 0, i8* %5, align 1
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %59 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %62 = load i8, i8* %5, align 1
  %63 = call i32 @mmc_io_rw_direct(i32 %60, i32 1, i32 0, i32 %61, i8 zeroext %62, i8* null)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %66, %40
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @sdio_card_irq_put(i32) #1

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
