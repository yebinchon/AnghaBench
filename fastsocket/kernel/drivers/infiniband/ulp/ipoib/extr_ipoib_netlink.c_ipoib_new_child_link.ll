; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_netlink.c_ipoib_new_child_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_netlink.c_ipoib_new_child_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32 }

@IFLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IPOIB_FLAG_SUBINTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"child creation disallowed for child devices\0A\00", align 1
@IFLA_IPOIB_PKEY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"no pkey specified, using parent pkey\0A\00", align 1
@IPOIB_RTNL_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**)* @ipoib_new_child_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_new_child_link(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ipoib_dev_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %13 = load i64, i64* @IFLA_LINK, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %96

20:                                               ; preds = %3
  %21 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %22 = load i64, i64* @IFLA_LINK, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i32 @nla_get_u32(%struct.nlattr* %24)
  %26 = call %struct.net_device* @__dev_get_by_index(i32* @init_net, i32 %25)
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %96

32:                                               ; preds = %20
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %33)
  store %struct.ipoib_dev_priv* %34, %struct.ipoib_dev_priv** %9, align 8
  %35 = load i32, i32* @IPOIB_FLAG_SUBINTERFACE, align 4
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 1
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %42 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %96

45:                                               ; preds = %32
  %46 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %47 = icmp ne %struct.nlattr** %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %50 = load i64, i64* @IFLA_IPOIB_PKEY, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %56 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %58 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  br label %66

60:                                               ; preds = %48
  %61 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %62 = load i64, i64* @IFLA_IPOIB_PKEY, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i32 @nla_get_u16(%struct.nlattr* %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 32768
  br i1 %71, label %72, label %75

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %96

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, 32768
  store i32 %77, i32* %10, align 4
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @IPOIB_RTNL_CHILD, align 4
  %83 = call i32 @__ipoib_vlan_add(%struct.ipoib_dev_priv* %78, %struct.ipoib_dev_priv* %80, i32 %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %75
  %87 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %88 = icmp ne %struct.nlattr** %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %92 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %93 = call i32 @ipoib_changelink(%struct.net_device* %90, %struct.nlattr** %91, %struct.nlattr** %92)
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %89, %86, %75
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %72, %40, %29, %17
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.net_device* @__dev_get_by_index(i32*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @__ipoib_vlan_add(%struct.ipoib_dev_priv*, %struct.ipoib_dev_priv*, i32, i32) #1

declare dso_local i32 @ipoib_changelink(%struct.net_device*, %struct.nlattr**, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
