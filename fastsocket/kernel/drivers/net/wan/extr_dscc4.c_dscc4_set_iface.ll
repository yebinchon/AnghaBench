; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_set_iface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_set_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dscc4_dev_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.anon = type { i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* }

@dscc4_encoding_setting = common dso_local global i32* null, align 8
@dscc4_clock_setting = common dso_local global i32* null, align 8
@dscc4_loopback_setting = common dso_local global i32* null, align 8
@dscc4_crc_setting = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* @dscc4_set_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dscc4_set_iface(%struct.dscc4_dev_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dscc4_dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.anon*, align 8
  %6 = alloca [5 x %struct.anon], align 16
  %7 = alloca i32, align 4
  store %struct.dscc4_dev_priv* %0, %struct.dscc4_dev_priv** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i32*, i32** @dscc4_encoding_setting, align 8
  %11 = bitcast i32* %10 to i32 (%struct.dscc4_dev_priv*, %struct.net_device*)*
  store i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* %11, i32 (%struct.dscc4_dev_priv*, %struct.net_device*)** %9, align 8
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %8, i64 1
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i32*, i32** @dscc4_clock_setting, align 8
  %15 = bitcast i32* %14 to i32 (%struct.dscc4_dev_priv*, %struct.net_device*)*
  store i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* %15, i32 (%struct.dscc4_dev_priv*, %struct.net_device*)** %13, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %12, i64 1
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load i32*, i32** @dscc4_loopback_setting, align 8
  %19 = bitcast i32* %18 to i32 (%struct.dscc4_dev_priv*, %struct.net_device*)*
  store i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* %19, i32 (%struct.dscc4_dev_priv*, %struct.net_device*)** %17, align 8
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %16, i64 1
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %22 = load i32*, i32** @dscc4_crc_setting, align 8
  %23 = bitcast i32* %22 to i32 (%struct.dscc4_dev_priv*, %struct.net_device*)*
  store i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* %23, i32 (%struct.dscc4_dev_priv*, %struct.net_device*)** %21, align 8
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %20, i64 1
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  store i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* null, i32 (%struct.dscc4_dev_priv*, %struct.net_device*)** %25, align 8
  store i32 0, i32* %7, align 4
  %26 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %6, i64 0, i64 0
  store %struct.anon* %26, %struct.anon** %5, align 8
  br label %27

27:                                               ; preds = %42, %2
  %28 = load %struct.anon*, %struct.anon** %5, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  %30 = load i32 (%struct.dscc4_dev_priv*, %struct.net_device*)*, i32 (%struct.dscc4_dev_priv*, %struct.net_device*)** %29, align 8
  %31 = icmp ne i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.anon*, %struct.anon** %5, align 8
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 0
  %35 = load i32 (%struct.dscc4_dev_priv*, %struct.net_device*)*, i32 (%struct.dscc4_dev_priv*, %struct.net_device*)** %34, align 8
  %36 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 %35(%struct.dscc4_dev_priv* %36, %struct.net_device* %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.anon*, %struct.anon** %5, align 8
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 1
  store %struct.anon* %44, %struct.anon** %5, align 8
  br label %27

45:                                               ; preds = %40, %27
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
