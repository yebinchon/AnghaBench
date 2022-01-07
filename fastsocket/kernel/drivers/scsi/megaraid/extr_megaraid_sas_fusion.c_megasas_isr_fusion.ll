; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_isr_fusion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_isr_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_irq_context = type { i32, %struct.megasas_instance* }
%struct.megasas_instance = type { i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@MEGASAS_FUSION_IN_RESET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MFI_STATE_MASK = common dso_local global i32 0, align 4
@MFI_STATE_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @megasas_isr_fusion(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.megasas_irq_context*, align 8
  %7 = alloca %struct.megasas_instance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.megasas_irq_context*
  store %struct.megasas_irq_context* %11, %struct.megasas_irq_context** %6, align 8
  %12 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %6, align 8
  %13 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %12, i32 0, i32 1
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %13, align 8
  store %struct.megasas_instance* %14, %struct.megasas_instance** %7, align 8
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %96

21:                                               ; preds = %2
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %23 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %28 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %31(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %96

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32, i32* @MEGASAS_FUSION_IN_RESET, align 4
  %43 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %44 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %43, i32 0, i32 3
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %49 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %54 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %52(i32 %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %96

58:                                               ; preds = %41
  %59 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %60 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %6, align 8
  %61 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @complete_cmd_fusion(%struct.megasas_instance* %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %94, label %65

65:                                               ; preds = %58
  %66 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %67 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %72 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %70(i32 %73)
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %76 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (i32)*, i32 (i32)** %78, align 8
  %80 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %81 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 %79(i32 %82)
  %84 = load i32, i32* @MFI_STATE_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @MFI_STATE_FAULT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %65
  %90 = load %struct.megasas_instance*, %struct.megasas_instance** %7, align 8
  %91 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %90, i32 0, i32 0
  %92 = call i32 @schedule_work(i32* %91)
  br label %93

93:                                               ; preds = %89, %65
  br label %94

94:                                               ; preds = %93, %58
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %47, %38, %19
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @complete_cmd_fusion(%struct.megasas_instance*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
