; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_bist_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_bist_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { i64, %struct.TYPE_4__, %struct.pmcraid_instance* }
%struct.TYPE_4__ = type { i64, i64, void (i64)* }
%struct.pmcraid_instance = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"BIST not complete, waiting another 2 secs\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"BIST is complete, proceeding with reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_bist_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_bist_done(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %7 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %7, i32 0, i32 2
  %9 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %8, align 8
  store %struct.pmcraid_instance* %9, %struct.pmcraid_instance** %3, align 8
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %11 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PCI_COMMAND, align 4
  %14 = call i32 @pci_read_config_word(i32 %12, i32 %13, i32* %6)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = call i32 @pmcraid_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @jiffies, align 8
  %31 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %32 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %36 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %39 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %41 = ptrtoint %struct.pmcraid_cmd* %40 to i64
  %42 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store void (i64)* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_bist_done to void (i64)*), void (i64)** %47, align 8
  %48 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %49 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %48, i32 0, i32 1
  %50 = call i32 @add_timer(%struct.TYPE_4__* %49)
  br label %71

51:                                               ; preds = %23, %18
  %52 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %53 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = call i32 @pmcraid_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %56 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_lock_irqsave(i32 %59, i64 %60)
  %62 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %63 = call i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd* %62)
  %64 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %65 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32 %68, i64 %69)
  br label %71

71:                                               ; preds = %51, %28
  ret void
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pmcraid_info(i8*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pmcraid_ioa_reset(%struct.pmcraid_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
