; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_check_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_irq.c_sn_check_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sn_irq_info = type { i64, i32, i32, i64 }
%struct.pcidev_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.pcibus_info = type { i32 }

@PCIIO_ASIC_TYPE_PIC = common dso_local global i64 0, align 8
@pda = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sn_irq_info*)* @sn_check_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn_check_intr(i32 %0, %struct.sn_irq_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn_irq_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcidev_info*, align 8
  %7 = alloca %struct.pcibus_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sn_irq_info* %1, %struct.sn_irq_info** %4, align 8
  %8 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %9 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCIIO_ASIC_TYPE_PIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %72

14:                                               ; preds = %2
  %15 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %16 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.pcidev_info*
  store %struct.pcidev_info* %18, %struct.pcidev_info** %6, align 8
  %19 = load %struct.pcidev_info*, %struct.pcidev_info** %6, align 8
  %20 = icmp ne %struct.pcidev_info* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %72

22:                                               ; preds = %14
  %23 = load %struct.pcidev_info*, %struct.pcidev_info** %6, align 8
  %24 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.pcibus_info*
  store %struct.pcibus_info* %28, %struct.pcibus_info** %7, align 8
  %29 = load %struct.pcibus_info*, %struct.pcibus_info** %7, align 8
  %30 = call i32 @pcireg_intr_status_get(%struct.pcibus_info* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @irq_to_vector(i32 %31)
  %33 = call i32 @ia64_get_irr(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %68, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pda, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @test_bit(i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %5, align 4
  %45 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %46 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %51 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %42
  %56 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %57 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %65 = call i32 @sn_call_force_intr_provider(%struct.sn_irq_info* %64)
  br label %66

66:                                               ; preds = %55, %42
  br label %67

67:                                               ; preds = %66, %35
  br label %68

68:                                               ; preds = %67, %22
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.sn_irq_info*, %struct.sn_irq_info** %4, align 8
  %71 = getelementptr inbounds %struct.sn_irq_info, %struct.sn_irq_info* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %21, %13
  ret void
}

declare dso_local i32 @pcireg_intr_status_get(%struct.pcibus_info*) #1

declare dso_local i32 @ia64_get_irr(i32) #1

declare dso_local i32 @irq_to_vector(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @sn_call_force_intr_provider(%struct.sn_irq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
