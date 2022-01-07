; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_msi-octeon.c_arch_teardown_msi_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_msi-octeon.c_arch_teardown_msi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_IRQ_MSI_BIT0 = common dso_local global i32 0, align 4
@OCTEON_IRQ_MSI_BIT63 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"arch_teardown_msi_irq: Attempted to teardown illegal MSI interrupt (%d)\00", align 1
@msi_multiple_irq_bitmask = common dso_local global i64 0, align 8
@msi_free_irq_bitmask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"arch_teardown_msi_irq: Attempted to teardown MSI interrupt (%d) not in use\00", align 1
@msi_free_irq_bitmask_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_teardown_msi_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @OCTEON_IRQ_MSI_BIT0, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @OCTEON_IRQ_MSI_BIT63, align 4
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @panic(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i32, i32* @OCTEON_IRQ_MSI_BIT0, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sub i32 %17, %16
  store i32 %18, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %35, %15
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %20, %21
  %23 = icmp ult i32 %22, 64
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i64, i64* @msi_multiple_irq_bitmask, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = add i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  %31 = and i64 %25, %30
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %24, %19
  %34 = phi i1 [ false, %19 ], [ %32, %24 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %19

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %4, align 4
  %46 = shl i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @msi_free_irq_bitmask, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @panic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %38
  %56 = call i32 @spin_lock(i32* @msi_free_irq_bitmask_lock)
  %57 = load i32, i32* %4, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* @msi_free_irq_bitmask, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* @msi_free_irq_bitmask, align 4
  %61 = load i32, i32* %4, align 4
  %62 = xor i32 %61, -1
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @msi_multiple_irq_bitmask, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* @msi_multiple_irq_bitmask, align 8
  %66 = call i32 @spin_unlock(i32* @msi_free_irq_bitmask_lock)
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
