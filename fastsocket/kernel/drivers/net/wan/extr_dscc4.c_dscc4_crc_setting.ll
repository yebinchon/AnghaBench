; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_crc_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_crc_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dscc4_dev_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.thingie = type { i32, i32, i32 }

@PARITY_CRC16_PR0_CCITT = common dso_local global i32 0, align 4
@PARITY_CRC16_PR1_CCITT = common dso_local global i32 0, align 4
@PARITY_CRC32_PR0_CCITT = common dso_local global i32 0, align 4
@PARITY_CRC32_PR1_CCITT = common dso_local global i32 0, align 4
@CrcMask = common dso_local global i32 0, align 4
@CCR1 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* @dscc4_crc_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dscc4_crc_setting(%struct.dscc4_dev_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dscc4_dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca [4 x %struct.thingie], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dscc4_dev_priv* %0, %struct.dscc4_dev_priv** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds [4 x %struct.thingie], [4 x %struct.thingie]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.thingie, %struct.thingie* %8, i32 0, i32 0
  %10 = load i32, i32* @PARITY_CRC16_PR0_CCITT, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.thingie, %struct.thingie* %8, i32 0, i32 1
  store i32 16, i32* %11, align 4
  %12 = getelementptr inbounds %struct.thingie, %struct.thingie* %8, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.thingie, %struct.thingie* %8, i64 1
  %14 = getelementptr inbounds %struct.thingie, %struct.thingie* %13, i32 0, i32 0
  %15 = load i32, i32* @PARITY_CRC16_PR1_CCITT, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.thingie, %struct.thingie* %13, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.thingie, %struct.thingie* %13, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.thingie, %struct.thingie* %13, i64 1
  %19 = getelementptr inbounds %struct.thingie, %struct.thingie* %18, i32 0, i32 0
  %20 = load i32, i32* @PARITY_CRC32_PR0_CCITT, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.thingie, %struct.thingie* %18, i32 0, i32 1
  store i32 17, i32* %21, align 4
  %22 = getelementptr inbounds %struct.thingie, %struct.thingie* %18, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.thingie, %struct.thingie* %18, i64 1
  %24 = getelementptr inbounds %struct.thingie, %struct.thingie* %23, i32 0, i32 0
  %25 = load i32, i32* @PARITY_CRC32_PR1_CCITT, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.thingie, %struct.thingie* %23, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.thingie, %struct.thingie* %23, i32 0, i32 2
  store i32 0, i32* %27, align 4
  store i32 0, i32* %7, align 4
  %28 = getelementptr inbounds [4 x %struct.thingie], [4 x %struct.thingie]* %5, i64 0, i64 0
  %29 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %30 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dscc4_match(%struct.thingie* %28, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %2
  %36 = load i32, i32* @CrcMask, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x %struct.thingie], [4 x %struct.thingie]* %5, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.thingie, %struct.thingie* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* @CCR1, align 4
  %45 = call i32 @scc_patchl(i32 %36, i32 %41, %struct.dscc4_dev_priv* %42, %struct.net_device* %43, i32 %44)
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %35
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @dscc4_match(%struct.thingie*, i32) #1

declare dso_local i32 @scc_patchl(i32, i32, %struct.dscc4_dev_priv*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
