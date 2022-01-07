; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_eeprom_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_eeprom_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32 }

@MAX_PRIVILEGES = common dso_local global i32 0, align 4
@LANCER_VPD_PF_FILE = common dso_local global i32 0, align 4
@LANCER_VPD_VF_FILE = common dso_local global i32 0, align 4
@BE_READ_SEEPROM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @be_get_eeprom_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_eeprom_len(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.be_adapter* %6, %struct.be_adapter** %4, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %8 = load i32, i32* @MAX_PRIVILEGES, align 4
  %9 = call i32 @check_privilege(%struct.be_adapter* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %14 = call i64 @lancer_chip(%struct.be_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %18 = call i64 @be_physfn(%struct.be_adapter* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %22 = load i32, i32* @LANCER_VPD_PF_FILE, align 4
  %23 = call i32 @lancer_cmd_get_file_len(%struct.be_adapter* %21, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %16
  %25 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %26 = load i32, i32* @LANCER_VPD_VF_FILE, align 4
  %27 = call i32 @lancer_cmd_get_file_len(%struct.be_adapter* %25, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %12
  %29 = load i32, i32* @BE_READ_SEEPROM_LEN, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %24, %20, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_privilege(%struct.be_adapter*, i32) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @lancer_cmd_get_file_len(%struct.be_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
