; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_remove_nic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_remove_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.falcon_nic_data*, i32 }
%struct.falcon_nic_data = type { i32* }
%struct.falcon_board = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*)* }

@RESET_TYPE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_remove_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_remove_nic(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca %struct.falcon_board*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 0
  %8 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %7, align 8
  store %struct.falcon_nic_data* %8, %struct.falcon_nic_data** %3, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = call %struct.falcon_board* @falcon_board(%struct.efx_nic* %9)
  store %struct.falcon_board* %10, %struct.falcon_board** %4, align 8
  %11 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %12 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %14, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %17 = call i32 %15(%struct.efx_nic* %16)
  %18 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %19 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %18, i32 0, i32 0
  %20 = call i32 @i2c_del_adapter(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.falcon_board*, %struct.falcon_board** %4, align 8
  %24 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %23, i32 0, i32 0
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  %26 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %27 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 1
  %29 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %26, i32* %28)
  %30 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %31 = load i32, i32* @RESET_TYPE_ALL, align 4
  %32 = call i32 @__falcon_reset_hw(%struct.efx_nic* %30, i32 %31)
  %33 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %34 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %39 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @pci_dev_put(i32* %40)
  %42 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %43 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %46 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %45, i32 0, i32 0
  %47 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %46, align 8
  %48 = call i32 @kfree(%struct.falcon_nic_data* %47)
  %49 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 0
  store %struct.falcon_nic_data* null, %struct.falcon_nic_data** %50, align 8
  ret void
}

declare dso_local %struct.falcon_board* @falcon_board(%struct.efx_nic*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @__falcon_reset_hw(%struct.efx_nic*, i32) #1

declare dso_local i32 @pci_dev_put(i32*) #1

declare dso_local i32 @kfree(%struct.falcon_nic_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
