; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_unregister_hcams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_unregister_hcams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.pmcraid_instance* }
%struct.pmcraid_instance = type { i32, i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IOA_STATE_IN_RESET_ALERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_unregister_hcams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_unregister_hcams(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %4 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %4, i32 0, i32 0
  %6 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %5, align 8
  store %struct.pmcraid_instance* %6, %struct.pmcraid_instance** %3, align 8
  %7 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %8 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @atomic_set(i32* %9, i32 1)
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %12 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @atomic_set(i32* %13, i32 1)
  %15 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %16 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %21 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %1
  %25 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %26 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24, %19
  %30 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %31 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %33 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @IOA_STATE_IN_RESET_ALERT, align 4
  %35 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %36 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %38 = call i32 @pmcraid_reset_alert(%struct.pmcraid_cmd* %37)
  br label %42

39:                                               ; preds = %24
  %40 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %41 = call i32 @pmcraid_cancel_ldn(%struct.pmcraid_cmd* %40)
  br label %42

42:                                               ; preds = %39, %29
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pmcraid_reset_alert(%struct.pmcraid_cmd*) #1

declare dso_local i32 @pmcraid_cancel_ldn(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
