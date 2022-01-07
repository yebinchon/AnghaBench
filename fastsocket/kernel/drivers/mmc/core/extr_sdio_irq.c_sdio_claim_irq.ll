; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_irq.c_sdio_claim_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_irq.c_sdio_claim_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"SDIO: Enabling IRQ for %s...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"SDIO: IRQ for %s already in use.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SDIO_CCCR_IENx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_claim_irq(%struct.sdio_func* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %9 = icmp ne %struct.sdio_func* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %14 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %21 = call i32 @sdio_func_id(%struct.sdio_func* %20)
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %29 = call i32 @sdio_func_id(%struct.sdio_func* %28)
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %81

33:                                               ; preds = %2
  %34 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %35 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %38 = call i32 @mmc_io_rw_direct(i32 %36, i32 0, i32 0, i32 %37, i8 zeroext 0, i8* %7)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %81

43:                                               ; preds = %33
  %44 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %45 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %7, align 1
  %52 = load i8, i8* %7, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, 1
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %7, align 1
  %56 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %57 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SDIO_CCCR_IENx, align 4
  %60 = load i8, i8* %7, align 1
  %61 = call i32 @mmc_io_rw_direct(i32 %58, i32 1, i32 0, i32 %59, i8 zeroext %60, i8* null)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %81

66:                                               ; preds = %43
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %69 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %71 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @sdio_card_irq_get(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %78 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %76, %66
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %64, %41, %27
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @mmc_io_rw_direct(i32, i32, i32, i32, i8 zeroext, i8*) #1

declare dso_local i32 @sdio_card_irq_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
