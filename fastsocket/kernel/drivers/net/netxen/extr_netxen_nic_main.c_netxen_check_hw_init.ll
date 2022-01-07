; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_check_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_check_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NETXEN_BDINFO_MAGIC = common dso_local global i32 0, align 4
@NETXEN_ROMUSB_GLB_SW_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NETXEN_ROMUSB_GLB_PEGTUNE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, i32)* @netxen_check_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_check_hw_init(%struct.netxen_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netxen_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1431655765
  br i1 %9, label %10, label %77

10:                                               ; preds = %2
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %12 = call i32 @NETXEN_CAM_RAM(i32 508)
  %13 = load i32, i32* @NETXEN_BDINFO_MAGIC, align 4
  %14 = call i32 @NXWR32(%struct.netxen_adapter* %11, i32 %12, i32 %13)
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @NX_IS_REVISION_P2(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %78

22:                                               ; preds = %10
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %24 = call i32 @NETXEN_PCIE_REG(i32 4)
  %25 = call i32 @NXRD32(%struct.netxen_adapter* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %33 = call i32 @NETXEN_PCIE_REG(i32 4)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @NXWR32(%struct.netxen_adapter* %32, i32 %33, i32 %34)
  %36 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %37 = call i32 @NETXEN_PCIE_REG(i32 4)
  %38 = call i32 @NXRD32(%struct.netxen_adapter* %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %22
  %40 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %41 = load i32, i32* @NETXEN_ROMUSB_GLB_SW_RESET, align 4
  %42 = call i32 @NXRD32(%struct.netxen_adapter* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 8388623
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %47 = call i32 @NETXEN_CAM_RAM(i32 508)
  %48 = call i32 @NXWR32(%struct.netxen_adapter* %46, i32 %47, i32 0)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %78

51:                                               ; preds = %39
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %53 = load i32, i32* @NETXEN_ROMUSB_GLB_PEGTUNE_DONE, align 4
  %54 = call i32 @NXRD32(%struct.netxen_adapter* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %56 = load i32, i32* @NETXEN_ROMUSB_GLB_PEGTUNE_DONE, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, 1
  %59 = call i32 @NXWR32(%struct.netxen_adapter* %55, i32 %56, i32 %58)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %72, %51
  %61 = call i32 @msleep(i32 1)
  %62 = load %struct.netxen_adapter*, %struct.netxen_adapter** %4, align 8
  %63 = call i32 @NETXEN_CAM_RAM(i32 508)
  %64 = call i32 @NXRD32(%struct.netxen_adapter* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = icmp sgt i32 %66, 5000
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @NETXEN_BDINFO_MAGIC, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %60, label %76

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76, %2
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %68, %45, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @NETXEN_CAM_RAM(i32) #1

declare dso_local i32 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NETXEN_PCIE_REG(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
