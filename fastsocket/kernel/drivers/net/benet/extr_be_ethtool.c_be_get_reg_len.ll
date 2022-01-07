; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_reg_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_reg_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32 }

@MAX_PRIVILEGES = common dso_local global i32 0, align 4
@LANCER_FW_DUMP_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @be_get_reg_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_reg_len(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.be_adapter* %7, %struct.be_adapter** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %9 = load i32, i32* @MAX_PRIVILEGES, align 4
  %10 = call i32 @check_privilege(%struct.be_adapter* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = call i64 @be_physfn(%struct.be_adapter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %19 = call i64 @lancer_chip(%struct.be_adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %23 = load i32, i32* @LANCER_FW_DUMP_FILE, align 4
  %24 = call i32 @lancer_cmd_get_file_len(%struct.be_adapter* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %27 = call i32 @be_cmd_get_reg_len(%struct.be_adapter* %26, i32* %5)
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_privilege(%struct.be_adapter*, i32) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @lancer_cmd_get_file_len(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_cmd_get_reg_len(%struct.be_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
