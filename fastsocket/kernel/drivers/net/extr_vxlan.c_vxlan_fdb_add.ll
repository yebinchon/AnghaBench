; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.vxlan_dev = type { i32 }

@NUD_PERMANENT = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RTM_NEWNEIGH with invalid state %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32)* @vxlan_fdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_add(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndmsg*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vxlan_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %18)
  store %struct.vxlan_dev* %19, %struct.vxlan_dev** %12, align 8
  %20 = load %struct.ndmsg*, %struct.ndmsg** %7, align 8
  %21 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NUD_PERMANENT, align 4
  %24 = load i32, i32* @NUD_REACHABLE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %5
  %29 = load %struct.ndmsg*, %struct.ndmsg** %7, align 8
  %30 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %74

35:                                               ; preds = %5
  %36 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %37 = load i64, i64* @NDA_DST, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp eq %struct.nlattr* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %74

44:                                               ; preds = %35
  %45 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %46 = load %struct.vxlan_dev*, %struct.vxlan_dev** %12, align 8
  %47 = call i32 @vxlan_fdb_parse(%struct.nlattr** %45, %struct.vxlan_dev* %46, i32* %13, i32* %14, i32* %15, i32* %16)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %6, align 4
  br label %74

52:                                               ; preds = %44
  %53 = load %struct.vxlan_dev*, %struct.vxlan_dev** %12, align 8
  %54 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.vxlan_dev*, %struct.vxlan_dev** %12, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.ndmsg*, %struct.ndmsg** %7, align 8
  %60 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.ndmsg*, %struct.ndmsg** %7, align 8
  %67 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @vxlan_fdb_create(%struct.vxlan_dev* %56, i8* %57, i32 %58, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.vxlan_dev*, %struct.vxlan_dev** %12, align 8
  %71 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock_bh(i32* %71)
  %73 = load i32, i32* %17, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %52, %50, %41, %28
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @vxlan_fdb_parse(%struct.nlattr**, %struct.vxlan_dev*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @vxlan_fdb_create(%struct.vxlan_dev*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
