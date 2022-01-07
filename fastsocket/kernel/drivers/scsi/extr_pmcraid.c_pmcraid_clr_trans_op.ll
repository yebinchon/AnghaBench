; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_clr_trans_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_clr_trans_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { %struct.TYPE_4__*, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@INTRS_TRANSITION_TO_OPERATIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*)* @pmcraid_clr_trans_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_clr_trans_op(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  %3 = alloca i64, align 8
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %4 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %5 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @INTRS_TRANSITION_TO_OPERATIONAL, align 4
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %11 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iowrite32(i32 %9, i32 %13)
  %15 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %16 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ioread32(i32 %18)
  %20 = load i32, i32* @INTRS_TRANSITION_TO_OPERATIONAL, align 4
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iowrite32(i32 %20, i32 %24)
  %26 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %27 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ioread32(i32 %29)
  br label %31

31:                                               ; preds = %8, %1
  %32 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %33 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %38 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = call i32 @del_timer(i32* %40)
  %42 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %43 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_lock_irqsave(i32 %46, i64 %47)
  %49 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %50 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %52, align 8
  %54 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %55 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 %53(%struct.TYPE_6__* %56)
  %58 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %59 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
