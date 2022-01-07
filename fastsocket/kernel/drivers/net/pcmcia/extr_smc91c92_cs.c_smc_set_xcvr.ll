; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_set_xcvr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_set_xcvr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.smc_private = type { i32, i64, i64, i32 }

@BANK_SELECT = common dso_local global i64 0, align 8
@CFG_AUI_SELECT = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i64 0, align 8
@MANFID_OSITECH = common dso_local global i64 0, align 8
@PRODID_OSITECH_SEVEN = common dso_local global i64 0, align 8
@OSI_AUI_PWR = common dso_local global i32 0, align 4
@OSITECH_AUI_PWR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @smc_set_xcvr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_set_xcvr(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.smc_private* @netdev_priv(%struct.net_device* %8)
  store %struct.smc_private* %9, %struct.smc_private** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @BANK_SELECT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inw(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = call i32 @SMC_SELECT_BANK(i32 1)
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %60

21:                                               ; preds = %2
  %22 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %23 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CFG_AUI_SELECT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* @CONFIG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outw(i32 %26, i64 %30)
  %32 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %33 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MANFID_OSITECH, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %21
  %38 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %39 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PRODID_OSITECH_SEVEN, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load i32, i32* @OSI_AUI_PWR, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, 16
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @set_bits(i32 %44, i64 %49)
  br label %51

51:                                               ; preds = %43, %37, %21
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 2
  %58 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %59 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  br label %98

60:                                               ; preds = %2
  %61 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %62 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* @CONFIG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @outw(i32 %63, i64 %67)
  %69 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %70 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MANFID_OSITECH, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %60
  %75 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %76 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PRODID_OSITECH_SEVEN, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load i32, i32* @OSI_AUI_PWR, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %6, align 4
  %84 = sub i32 %83, 16
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @mask_bits(i32 %82, i64 %87)
  br label %89

89:                                               ; preds = %80, %74, %60
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 18, i32 16385
  %96 = load %struct.smc_private*, %struct.smc_private** %5, align 8
  %97 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %89, %51
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @SMC_SELECT_BANK(i32 %99)
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @set_bits(i32, i64) #1

declare dso_local i32 @mask_bits(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
