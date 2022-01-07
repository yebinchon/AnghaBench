; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic.c_mpic_host_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic.c_mpic_host_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_host = type { %struct.mpic* }
%struct.mpic = type { i64, i64*, i32, i64, %struct.irq_chip, %struct.irq_chip, %struct.irq_chip, i64 }
%struct.irq_chip = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"mpic: map virq %d, hwirq 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"mpic: mapping to irq chip @%p\0A\00", align 1
@handle_fasteoi_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@MPIC_PRIMARY = common dso_local global i32 0, align 4
@handle_percpu_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_host*, i32, i64)* @mpic_host_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpic_host_map(%struct.irq_host* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mpic*, align 8
  %9 = alloca %struct.irq_chip*, align 8
  store %struct.irq_host* %0, %struct.irq_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.irq_host*, %struct.irq_host** %5, align 8
  %11 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %10, i32 0, i32 0
  %12 = load %struct.mpic*, %struct.mpic** %11, align 8
  store %struct.mpic* %12, %struct.mpic** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.mpic*, %struct.mpic** %8, align 8
  %18 = getelementptr inbounds %struct.mpic, %struct.mpic* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %66

24:                                               ; preds = %3
  %25 = load %struct.mpic*, %struct.mpic** %8, align 8
  %26 = getelementptr inbounds %struct.mpic, %struct.mpic* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.mpic*, %struct.mpic** %8, align 8
  %32 = getelementptr inbounds %struct.mpic, %struct.mpic* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @test_bit(i64 %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %66

39:                                               ; preds = %29, %24
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.mpic*, %struct.mpic** %8, align 8
  %42 = getelementptr inbounds %struct.mpic, %struct.mpic* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %66

48:                                               ; preds = %39
  %49 = load %struct.mpic*, %struct.mpic** %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @mpic_msi_reserve_hwirq(%struct.mpic* %49, i64 %50)
  %52 = load %struct.mpic*, %struct.mpic** %8, align 8
  %53 = getelementptr inbounds %struct.mpic, %struct.mpic* %52, i32 0, i32 5
  store %struct.irq_chip* %53, %struct.irq_chip** %9, align 8
  %54 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %55 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.irq_chip* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.mpic*, %struct.mpic** %8, align 8
  %58 = call i32 @set_irq_chip_data(i32 %56, %struct.mpic* %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %61 = load i32, i32* @handle_fasteoi_irq, align 4
  %62 = call i32 @set_irq_chip_and_handler(i32 %59, %struct.irq_chip* %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %65 = call i32 @set_irq_type(i32 %63, i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %48, %45, %36, %21
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i64 @test_bit(i64, i64) #1

declare dso_local i32 @mpic_msi_reserve_hwirq(%struct.mpic*, i64) #1

declare dso_local i32 @set_irq_chip_data(i32, %struct.mpic*) #1

declare dso_local i32 @set_irq_chip_and_handler(i32, %struct.irq_chip*, i32) #1

declare dso_local i32 @set_irq_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
