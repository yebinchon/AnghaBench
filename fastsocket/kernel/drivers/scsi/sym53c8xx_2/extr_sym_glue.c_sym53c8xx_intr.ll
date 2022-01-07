; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_data = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sym53c8xx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym53c8xx_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.sym_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %6, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %12 = call %struct.sym_data* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.sym_data* %12, %struct.sym_data** %7, align 8
  %13 = load %struct.sym_data*, %struct.sym_data** %7, align 8
  %14 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @pci_channel_offline(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load i32, i32* @DEBUG_FLAGS, align 4
  %22 = load i32, i32* @DEBUG_TINY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @printf_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @spin_lock(i32 %30)
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %33 = call i32 @sym_interrupt(%struct.Scsi_Host* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spin_unlock(i32 %36)
  %38 = load i32, i32* @DEBUG_FLAGS, align 4
  %39 = load i32, i32* @DEBUG_TINY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = call i32 @printf_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.sym_data* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @printf_debug(i8*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @sym_interrupt(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
