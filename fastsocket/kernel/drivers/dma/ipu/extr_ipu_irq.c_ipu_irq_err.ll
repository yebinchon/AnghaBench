; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_irq_bank = type { i32, i32 }
%struct.irq_desc = type { i32 }
%struct.ipu = type { i32 }
%struct.ipu_irq_map = type { i32 }

@IPU_IRQ_NR_FN_BANKS = common dso_local global i32 0, align 4
@IPU_IRQ_NR_BANKS = common dso_local global i32 0, align 4
@irq_bank = common dso_local global %struct.ipu_irq_bank* null, align 8
@bank_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"IPU: Interrupt on unmapped source %u bank %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @ipu_irq_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_irq_err(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.ipu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipu_irq_bank*, align 8
  %10 = alloca %struct.ipu_irq_map*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ipu* @get_irq_data(i32 %11)
  store %struct.ipu* %12, %struct.ipu** %5, align 8
  %13 = load i32, i32* @IPU_IRQ_NR_FN_BANKS, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %74, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @IPU_IRQ_NR_BANKS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %77

18:                                               ; preds = %14
  %19 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** @irq_bank, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %19, i64 %21
  store %struct.ipu_irq_bank* %22, %struct.ipu_irq_bank** %9, align 8
  %23 = call i32 @spin_lock(i32* @bank_lock)
  %24 = load %struct.ipu*, %struct.ipu** %5, align 8
  %25 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %9, align 8
  %26 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ipu_read_reg(%struct.ipu* %24, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.ipu*, %struct.ipu** %5, align 8
  %30 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %9, align 8
  %31 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ipu_read_reg(%struct.ipu* %29, i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = call i32 @spin_unlock(i32* @bank_lock)
  br label %37

37:                                               ; preds = %70, %66, %18
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @ffs(i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 1, %45
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %6, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = call i32 @spin_lock(i32* @bank_lock)
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 32, %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  %55 = call %struct.ipu_irq_map* @src2map(i32 %54)
  store %struct.ipu_irq_map* %55, %struct.ipu_irq_map** %10, align 8
  %56 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %10, align 8
  %57 = icmp ne %struct.ipu_irq_map* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %10, align 8
  %60 = getelementptr inbounds %struct.ipu_irq_map, %struct.ipu_irq_map* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %41
  %63 = call i32 @spin_unlock(i32* @bank_lock)
  %64 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %10, align 8
  %65 = icmp ne %struct.ipu_irq_map* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  br label %37

70:                                               ; preds = %62
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @generic_handle_irq(i32 %71)
  br label %37

73:                                               ; preds = %37
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %14

77:                                               ; preds = %14
  ret void
}

declare dso_local %struct.ipu* @get_irq_data(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ipu_read_reg(%struct.ipu*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local %struct.ipu_irq_map* @src2map(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
