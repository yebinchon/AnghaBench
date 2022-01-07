; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reset_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@INTRS_HRRQ_VALID = common dso_local global i32 0, align 4
@DOORBELL_IOA_RESET_ALERT = common dso_local global i32 0, align 4
@PMCRAID_ERROR_INTERRUPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"IOA requires hard reset\0A\00", align 1
@INTRS_IOA_UNIT_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*)* @pmcraid_reset_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_reset_type(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %6 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %7 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ioread32(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %12 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ioread32(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %17 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ioread32(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @INTRS_HRRQ_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DOORBELL_IOA_RESET_ALERT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PMCRAID_ERROR_INTERRUPTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %25, %1
  %36 = call i32 @pmcraid_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %38 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @INTRS_IOA_UNIT_CHECK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %46 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @pmcraid_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
