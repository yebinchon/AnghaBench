; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_sriov_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_sriov_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnx2x = type { i64, i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"bnx2x_sriov_configure called with %d, BNX2X_NR_VIRTFN(bp) was %d\0A\00", align 1
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"VF num configuration via sysfs not supported while PF is down\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"truncating requested number of VFs (%d) down to maximum allowed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_sriov_configure(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i32 @pci_get_drvdata(%struct.pci_dev* %7)
  %9 = call %struct.bnx2x* @netdev_priv(i32 %8)
  store %struct.bnx2x* %9, %struct.bnx2x** %6, align 8
  %10 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %13 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %12)
  %14 = call i32 @DP(i32 %10, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %27 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %26)
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %32 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %31)
  %33 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %35 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %39 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_disable_sriov(%struct.pci_dev* %43)
  store i32 0, i32* %3, align 4
  br label %48

45:                                               ; preds = %36
  %46 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %47 = call i32 @bnx2x_enable_sriov(%struct.bnx2x* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %42, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @BNX2X_NR_VIRTFN(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @bnx2x_enable_sriov(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
