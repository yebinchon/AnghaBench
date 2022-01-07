; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_join_wide_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_join_wide_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ex_phy* }
%struct.ex_phy = type { i32, i64, i32, i32 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@PHY_DEVICE_DISCOVERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32)* @sas_ex_join_wide_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_ex_join_wide_port(%struct.domain_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.domain_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ex_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ex_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %10 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.ex_phy*, %struct.ex_phy** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %12, i64 %14
  store %struct.ex_phy* %15, %struct.ex_phy** %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %67, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %19 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %16
  %24 = load %struct.domain_device*, %struct.domain_device** %4, align 8
  %25 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.ex_phy*, %struct.ex_phy** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %27, i64 %29
  store %struct.ex_phy* %30, %struct.ex_phy** %8, align 8
  %31 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %32 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %33 = icmp eq %struct.ex_phy* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %67

35:                                               ; preds = %23
  %36 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %37 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %40 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %43 = call i32 @memcmp(i32 %38, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %35
  %46 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %47 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %52 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %55 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sas_port_add_phy(i64 %53, i32 %56)
  %58 = load %struct.ex_phy*, %struct.ex_phy** %8, align 8
  %59 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %62 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @PHY_DEVICE_DISCOVERED, align 4
  %64 = load %struct.ex_phy*, %struct.ex_phy** %6, align 8
  %65 = getelementptr inbounds %struct.ex_phy, %struct.ex_phy* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 1, i32* %3, align 4
  br label %71

66:                                               ; preds = %45, %35
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %16

70:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @sas_port_add_phy(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
