; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_isr_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_isr_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_isr_param = type { i32, %struct.pmcraid_instance* }
%struct.pmcraid_instance = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DOORBELL_INTR_MSIX_CLR = common dso_local global i32 0, align 4
@PMCRAID_ERROR_INTERRUPTS = common dso_local global i32 0, align 4
@INTRS_IOA_UNIT_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ISR: error interrupts: %x \09\09\09\09\09initiating reset\0A\00", align 1
@INTRS_TRANSITION_TO_OPERATIONAL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pmcraid_isr_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcraid_isr_msix(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pmcraid_isr_param*, align 8
  %6 = alloca %struct.pmcraid_instance*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.pmcraid_isr_param*
  store %struct.pmcraid_isr_param* %11, %struct.pmcraid_isr_param** %5, align 8
  %12 = load %struct.pmcraid_isr_param*, %struct.pmcraid_isr_param** %5, align 8
  %13 = getelementptr inbounds %struct.pmcraid_isr_param, %struct.pmcraid_isr_param* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.pmcraid_isr_param*, %struct.pmcraid_isr_param** %5, align 8
  %16 = getelementptr inbounds %struct.pmcraid_isr_param, %struct.pmcraid_isr_param* %15, i32 0, i32 1
  %17 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %16, align 8
  store %struct.pmcraid_instance* %17, %struct.pmcraid_instance** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %87, label %20

20:                                               ; preds = %2
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %22 = call i32 @pmcraid_read_interrupts(%struct.pmcraid_instance* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %20
  %26 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %27 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ioread32(i32 %29)
  %31 = load i32, i32* @DOORBELL_INTR_MSIX_CLR, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %86

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @PMCRAID_ERROR_INTERRUPTS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @INTRS_IOA_UNIT_CHECK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %46 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @pmcraid_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %51 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_lock_irqsave(i32 %54, i64 %55)
  %57 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %58 = call i32 @pmcraid_initiate_reset(%struct.pmcraid_instance* %57)
  %59 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %60 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %47, %34
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @INTRS_TRANSITION_TO_OPERATIONAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %73 = call i32 @pmcraid_clr_trans_op(%struct.pmcraid_instance* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* @DOORBELL_INTR_MSIX_CLR, align 4
  %76 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %77 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @iowrite32(i32 %75, i32 %79)
  %81 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %82 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ioread32(i32 %84)
  br label %86

86:                                               ; preds = %74, %25, %20
  br label %87

87:                                               ; preds = %86, %2
  %88 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  %89 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @tasklet_schedule(i32* %93)
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %95
}

declare dso_local i32 @pmcraid_read_interrupts(%struct.pmcraid_instance*) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @pmcraid_err(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pmcraid_initiate_reset(%struct.pmcraid_instance*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @pmcraid_clr_trans_op(%struct.pmcraid_instance*) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
