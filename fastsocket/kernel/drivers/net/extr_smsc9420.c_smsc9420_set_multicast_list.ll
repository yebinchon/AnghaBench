; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { %struct.dev_mc_list*, i32 }
%struct.smsc9420_pdata = type { i32 }

@MAC_CR = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Promiscuous Mode Enabled\00", align 1
@MAC_CR_PRMS_ = common dso_local global i32 0, align 4
@MAC_CR_MCPAS_ = common dso_local global i32 0, align 4
@MAC_CR_HPFILT_ = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Receive all Multicast Enabled\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Multicast filter enabled\00", align 1
@HASHH = common dso_local global i32 0, align 4
@HASHL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Receive own packets only.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smsc9420_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %10)
  store %struct.smsc9420_pdata* %11, %struct.smsc9420_pdata** %3, align 8
  %12 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %13 = load i32, i32* @MAC_CR, align 4
  %14 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load i32, i32* @HW, align 4
  %23 = call i32 @smsc_dbg(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @MAC_CR_PRMS_, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @MAC_CR_MCPAS_, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @MAC_CR_HPFILT_, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %136

35:                                               ; preds = %1
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load i32, i32* @HW, align 4
  %44 = call i32 @smsc_dbg(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @MAC_CR_PRMS_, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @MAC_CR_MCPAS_, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @MAC_CR_HPFILT_, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %135

56:                                               ; preds = %35
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %113

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 2
  %64 = load %struct.dev_mc_list*, %struct.dev_mc_list** %63, align 8
  store %struct.dev_mc_list* %64, %struct.dev_mc_list** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %65 = load i32, i32* @HW, align 4
  %66 = call i32 @smsc_dbg(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %89, %61
  %68 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %69 = icmp ne %struct.dev_mc_list* %68, null
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %72 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @smsc9420_hash(i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 31
  %77 = shl i32 1, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %70
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %89

85:                                               ; preds = %70
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %91 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %90, i32 0, i32 0
  %92 = load %struct.dev_mc_list*, %struct.dev_mc_list** %91, align 8
  store %struct.dev_mc_list* %92, %struct.dev_mc_list** %5, align 8
  br label %67

93:                                               ; preds = %67
  %94 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %95 = load i32, i32* @HASHH, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %94, i32 %95, i32 %96)
  %98 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %99 = load i32, i32* @HASHL, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %98, i32 %99, i32 %100)
  %102 = load i32, i32* @MAC_CR_PRMS_, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* @MAC_CR_MCPAS_, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* @MAC_CR_HPFILT_, align 4
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  br label %134

113:                                              ; preds = %56
  %114 = load i32, i32* @HW, align 4
  %115 = call i32 @smsc_dbg(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %117 = load i32, i32* @HASHH, align 4
  %118 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %116, i32 %117, i32 0)
  %119 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %120 = load i32, i32* @HASHL, align 4
  %121 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %119, i32 %120, i32 0)
  %122 = load i32, i32* @MAC_CR_PRMS_, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %4, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* @MAC_CR_MCPAS_, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %4, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* @MAC_CR_HPFILT_, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %4, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %113, %93
  br label %135

135:                                              ; preds = %134, %42
  br label %136

136:                                              ; preds = %135, %21
  %137 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %138 = load i32, i32* @MAC_CR, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %137, i32 %138, i32 %139)
  %141 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %142 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %141)
  ret void
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc_dbg(i32, i8*) #1

declare dso_local i32 @smsc9420_hash(i32) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
