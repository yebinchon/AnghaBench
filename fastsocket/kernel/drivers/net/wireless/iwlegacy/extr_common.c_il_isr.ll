; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@CSR_INT = common dso_local global i32 0, align 4
@CSR_FH_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Ignore interrupt, inta == 0, inta_fh == 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"HARDWARE GONE?? INTA == 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ISR inta 0x%08x, enabled 0x%08x, fh 0x%08x\0A\00", align 1
@CSR_INT_BIT_SCD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@S_INT_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.il_priv*
  store %struct.il_priv* %12, %struct.il_priv** %6, align 8
  %13 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %14 = icmp ne %struct.il_priv* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %23 = load i32, i32* @CSR_INT_MASK, align 4
  %24 = call i32 @_il_rd(%struct.il_priv* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %26 = load i32, i32* @CSR_INT_MASK, align 4
  %27 = call i32 @_il_wr(%struct.il_priv* %25, i32 %26, i32 0)
  %28 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %29 = load i32, i32* @CSR_INT, align 4
  %30 = call i32 @_il_rd(%struct.il_priv* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %32 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %33 = call i32 @_il_rd(%struct.il_priv* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @D_ISR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %81

41:                                               ; preds = %36, %17
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, -16
  %47 = icmp eq i32 %46, -1515870816
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @IL_WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %75

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i8*, ...) @D_ISR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @CSR_INT_BIT_SCD, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %62, %51
  %66 = phi i1 [ true, %51 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %72 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %71, i32 0, i32 2
  %73 = call i32 @tasklet_schedule(i32* %72)
  br label %74

74:                                               ; preds = %70, %65
  br label %75

75:                                               ; preds = %74, %48
  %76 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %77 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %3, align 4
  br label %96

81:                                               ; preds = %39
  %82 = load i32, i32* @S_INT_ENABLED, align 4
  %83 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 1
  %85 = call i64 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %89 = call i32 @il_enable_interrupts(%struct.il_priv* %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 0
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* @IRQ_NONE, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %75, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @D_ISR(i8*, ...) #1

declare dso_local i32 @IL_WARN(i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_enable_interrupts(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
