; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_msix_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_msix_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.ixgbe_hw, %struct.pci_dev* }
%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@IXGBE_MBVFICR_VFREQ_MASK = common dso_local global i32 0, align 4
@IXGBE_PF_CONTROL_MSG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Last Request of type %2.2x to PF Nacked\0A\00", align 1
@IXGBE_VFMAILBOX_PFSTS = common dso_local global i32 0, align 4
@IXGBE_VFMAILBOX_PFACK = common dso_local global i32 0, align 4
@IXGBE_VTEIMS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ixgbevf_msix_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_msix_other(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ixgbevf_adapter*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ixgbevf_adapter*
  store %struct.ixgbevf_adapter* %11, %struct.ixgbevf_adapter** %5, align 8
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 3
  store %struct.ixgbe_hw* %16, %struct.ixgbe_hw** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32 (%struct.ixgbe_hw.2*)*, i32 (%struct.ixgbe_hw.2*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.2*
  %27 = call i32 %24(%struct.ixgbe_hw.2* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %34, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %37 = bitcast %struct.ixgbe_hw* %36 to %struct.ixgbe_hw.1*
  %38 = call i32 %35(%struct.ixgbe_hw.1* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %81, label %40

40:                                               ; preds = %30
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.0*
  %48 = call i32 %45(%struct.ixgbe_hw.0* %47, i32* %8, i32 1)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @IXGBE_MBVFICR_VFREQ_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @IXGBE_PF_CONTROL_MSG, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %40
  %55 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %55, i32 0, i32 2
  %57 = load i64, i64* @jiffies, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32 @round_jiffies(i64 %58)
  %60 = call i32 @mod_timer(i32* %56, i32 %59)
  %61 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %54, %40
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 255
  %73 = call i32 @dev_info(i32* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i32, i32* @IXGBE_VFMAILBOX_PFSTS, align 4
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %74, %30
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* @IXGBE_VFMAILBOX_PFACK, align 4
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %81
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %93 = load i32, i32* @IXGBE_VTEIMS, align 4
  %94 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %95 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %92, i32 %93, i32 %96)
  %98 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %98
}

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
