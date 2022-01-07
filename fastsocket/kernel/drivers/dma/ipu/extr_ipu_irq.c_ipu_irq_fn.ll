; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_irq.c_ipu_irq_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_irq_bank = type { i32, i32 }
%struct.irq_desc = type { i32 }
%struct.ipu = type { i32 }
%struct.ipu_irq_map = type { i32 }

@IPU_IRQ_NR_FN_BANKS = common dso_local global i32 0, align 4
@irq_bank = common dso_local global %struct.ipu_irq_bank* null, align 8
@bank_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"IPU: Interrupt on unmapped source %u bank %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @ipu_irq_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_irq_fn(i32 %0, %struct.irq_desc* %1) #0 {
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
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %73, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @IPU_IRQ_NR_FN_BANKS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %13
  %18 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** @irq_bank, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %18, i64 %20
  store %struct.ipu_irq_bank* %21, %struct.ipu_irq_bank** %9, align 8
  %22 = call i32 @spin_lock(i32* @bank_lock)
  %23 = load %struct.ipu*, %struct.ipu** %5, align 8
  %24 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %9, align 8
  %25 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ipu_read_reg(%struct.ipu* %23, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.ipu*, %struct.ipu** %5, align 8
  %29 = load %struct.ipu_irq_bank*, %struct.ipu_irq_bank** %9, align 8
  %30 = getelementptr inbounds %struct.ipu_irq_bank, %struct.ipu_irq_bank* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ipu_read_reg(%struct.ipu* %28, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = call i32 @spin_unlock(i32* @bank_lock)
  br label %36

36:                                               ; preds = %69, %65, %17
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @ffs(i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = xor i64 %45, -1
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = call i32 @spin_lock(i32* @bank_lock)
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 32, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = call %struct.ipu_irq_map* @src2map(i32 %53)
  store %struct.ipu_irq_map* %54, %struct.ipu_irq_map** %10, align 8
  %55 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %10, align 8
  %56 = icmp ne %struct.ipu_irq_map* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %10, align 8
  %59 = getelementptr inbounds %struct.ipu_irq_map, %struct.ipu_irq_map* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %40
  %62 = call i32 @spin_unlock(i32* @bank_lock)
  %63 = load %struct.ipu_irq_map*, %struct.ipu_irq_map** %10, align 8
  %64 = icmp ne %struct.ipu_irq_map* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %36

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @generic_handle_irq(i32 %70)
  br label %36

72:                                               ; preds = %36
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %13

76:                                               ; preds = %13
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
