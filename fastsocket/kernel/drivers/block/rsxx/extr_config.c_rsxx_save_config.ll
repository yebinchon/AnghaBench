; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_config.c_rsxx_save_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_config.c_rsxx_save_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }
%struct.rsxx_card_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@RSXX_CFG_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Cannot save config with invalid version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CREG_ADD_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*)* @rsxx_save_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_save_config(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca %struct.rsxx_card_cfg, align 8
  %5 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  %6 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %7 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %6, i32 0, i32 0
  %8 = call i32 @memcpy(%struct.rsxx_card_cfg* %4, i32* %7, i32 16)
  %9 = getelementptr inbounds %struct.rsxx_card_cfg, %struct.rsxx_card_cfg* %4, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RSXX_CFG_VERSION, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %19 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %18)
  %20 = getelementptr inbounds %struct.rsxx_card_cfg, %struct.rsxx_card_cfg* %4, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %42

26:                                               ; preds = %1
  %27 = call i32 @config_data_cpu_to_le(%struct.rsxx_card_cfg* %4)
  %28 = call i32 @config_data_crc32(%struct.rsxx_card_cfg* %4)
  %29 = getelementptr inbounds %struct.rsxx_card_cfg, %struct.rsxx_card_cfg* %4, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = call i32 @config_data_swab(%struct.rsxx_card_cfg* %4)
  %32 = getelementptr inbounds %struct.rsxx_card_cfg, %struct.rsxx_card_cfg* %4, i32 0, i32 0
  %33 = call i32 @config_hdr_cpu_to_be(%struct.TYPE_2__* %32)
  %34 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %35 = load i32, i32* @CREG_ADD_CONFIG, align 4
  %36 = call i32 @rsxx_creg_write(%struct.rsxx_cardinfo* %34, i32 %35, i32 16, %struct.rsxx_card_cfg* %4, i32 1)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @memcpy(%struct.rsxx_card_cfg*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @config_data_cpu_to_le(%struct.rsxx_card_cfg*) #1

declare dso_local i32 @config_data_crc32(%struct.rsxx_card_cfg*) #1

declare dso_local i32 @config_data_swab(%struct.rsxx_card_cfg*) #1

declare dso_local i32 @config_hdr_cpu_to_be(%struct.TYPE_2__*) #1

declare dso_local i32 @rsxx_creg_write(%struct.rsxx_cardinfo*, i32, i32, %struct.rsxx_card_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
