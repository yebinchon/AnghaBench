; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_ethtool_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_ethtool_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.net_device = type { i32 }

@bnx2x_ethtool_ops = common dso_local global i32 0, align 4
@bnx2x_ethtool_ops_ext = common dso_local global i32 0, align 4
@bnx2x_vf_ethtool_ops = common dso_local global i32 0, align 4
@bnx2x_vf_ethtool_ops_ext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_ethtool_ops(%struct.bnx2x* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = call i64 @IS_PF(%struct.bnx2x* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %9, i32* @bnx2x_ethtool_ops)
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @set_ethtool_ops_ext(%struct.net_device* %11, i32* @bnx2x_ethtool_ops_ext)
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %14, i32* @bnx2x_vf_ethtool_ops)
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @set_ethtool_ops_ext(%struct.net_device* %16, i32* @bnx2x_vf_ethtool_ops_ext)
  br label %18

18:                                               ; preds = %13, %8
  ret void
}

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @set_ethtool_ops_ext(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
