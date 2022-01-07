; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci_slot = type { i32, i32, i32, %struct.atmel_mci_slot*, %struct.mmc_host* }
%struct.mmc_host = type { i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.atmel_mci = type { i32, i32, i32, %struct.atmel_mci*, %struct.mmc_host* }

@.str = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@atmci_regs_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@atmci_req_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"pending_events\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"completed_events\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to initialize debugfs for slot\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_mci_slot*)* @atmci_init_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_init_debugfs(%struct.atmel_mci_slot* %0) #0 {
  %2 = alloca %struct.atmel_mci_slot*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.atmel_mci*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.atmel_mci_slot* %0, %struct.atmel_mci_slot** %2, align 8
  %7 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %2, align 8
  %8 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %7, i32 0, i32 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  store %struct.mmc_host* %9, %struct.mmc_host** %3, align 8
  %10 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %2, align 8
  %11 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %10, i32 0, i32 3
  %12 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %11, align 8
  %13 = bitcast %struct.atmel_mci_slot* %12 to %struct.atmel_mci*
  store %struct.atmel_mci* %13, %struct.atmel_mci** %4, align 8
  %14 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %14, i32 0, i32 1
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %5, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = icmp ne %struct.dentry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %74

20:                                               ; preds = %1
  %21 = load i32, i32* @S_IRUSR, align 4
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %24 = bitcast %struct.atmel_mci* %23 to %struct.atmel_mci_slot*
  %25 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.dentry* %22, %struct.atmel_mci_slot* %24, i32* @atmci_regs_fops)
  store %struct.dentry* %25, %struct.dentry** %6, align 8
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = call i64 @IS_ERR(%struct.dentry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %74

30:                                               ; preds = %20
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = icmp ne %struct.dentry* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %70

34:                                               ; preds = %30
  %35 = load i32, i32* @S_IRUSR, align 4
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %2, align 8
  %38 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %35, %struct.dentry* %36, %struct.atmel_mci_slot* %37, i32* @atmci_req_fops)
  store %struct.dentry* %38, %struct.dentry** %6, align 8
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = icmp ne %struct.dentry* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %70

42:                                               ; preds = %34
  %43 = load i32, i32* @S_IRUSR, align 4
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  %45 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %46 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %45, i32 0, i32 2
  %47 = call %struct.dentry* @debugfs_create_u32(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %43, %struct.dentry* %44, i32* %46)
  store %struct.dentry* %47, %struct.dentry** %6, align 8
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = icmp ne %struct.dentry* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %70

51:                                               ; preds = %42
  %52 = load i32, i32* @S_IRUSR, align 4
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %55 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %54, i32 0, i32 1
  %56 = call %struct.dentry* @debugfs_create_x32(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %52, %struct.dentry* %53, i32* %55)
  store %struct.dentry* %56, %struct.dentry** %6, align 8
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = icmp ne %struct.dentry* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %70

60:                                               ; preds = %51
  %61 = load i32, i32* @S_IRUSR, align 4
  %62 = load %struct.dentry*, %struct.dentry** %5, align 8
  %63 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %64 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %63, i32 0, i32 0
  %65 = call %struct.dentry* @debugfs_create_x32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %61, %struct.dentry* %62, i32* %64)
  store %struct.dentry* %65, %struct.dentry** %6, align 8
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = icmp ne %struct.dentry* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %70

69:                                               ; preds = %60
  br label %74

70:                                               ; preds = %68, %59, %50, %41, %33
  %71 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %72 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %69, %29, %19
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.atmel_mci_slot*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_x32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
