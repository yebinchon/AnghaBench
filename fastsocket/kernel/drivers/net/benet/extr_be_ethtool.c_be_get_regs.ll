; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.be_adapter = type { i32 }

@LANCER_FW_DUMP_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @be_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.be_adapter* %9, %struct.be_adapter** %7, align 8
  %10 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %11 = call i64 @be_physfn(%struct.be_adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i8* %14, i32 0, i32 %17)
  %19 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %20 = call i64 @lancer_chip(%struct.be_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %24 = load i32, i32* @LANCER_FW_DUMP_FILE, align 4
  %25 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @lancer_cmd_read_file(%struct.be_adapter* %23, i32 %24, i32 %27, i8* %28)
  br label %37

30:                                               ; preds = %13
  %31 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %32 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @be_cmd_get_regs(%struct.be_adapter* %31, i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %30, %22
  br label %38

38:                                               ; preds = %37, %3
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @lancer_cmd_read_file(%struct.be_adapter*, i32, i32, i8*) #1

declare dso_local i32 @be_cmd_get_regs(%struct.be_adapter*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
