; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_ht_opmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_ht_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_erp = type { i32, i32 }

@IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_PROTECTION = common dso_local global i32 0, align 4
@MM20_PROT_CFG = common dso_local global i32 0, align 4
@MM20_PROT_CFG_PROTECT_RATE = common dso_local global i32 0, align 4
@MM20_PROT_CFG_PROTECT_CTRL = common dso_local global i32 0, align 4
@MM40_PROT_CFG = common dso_local global i32 0, align 4
@MM40_PROT_CFG_PROTECT_RATE = common dso_local global i32 0, align 4
@MM40_PROT_CFG_PROTECT_CTRL = common dso_local global i32 0, align 4
@GF20_PROT_CFG = common dso_local global i32 0, align 4
@GF20_PROT_CFG_PROTECT_RATE = common dso_local global i32 0, align 4
@GF20_PROT_CFG_PROTECT_CTRL = common dso_local global i32 0, align 4
@GF40_PROT_CFG = common dso_local global i32 0, align 4
@GF40_PROT_CFG_PROTECT_RATE = common dso_local global i32 0, align 4
@GF40_PROT_CFG_PROTECT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_erp*)* @rt2800_config_ht_opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_ht_opmode(%struct.rt2x00_dev* %0, %struct.rt2x00lib_erp* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2x00lib_erp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rt2x00lib_erp* %1, %struct.rt2x00lib_erp** %4, align 8
  %16 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %4, align 8
  %17 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %4, align 8
  %26 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_HT_OP_MODE_PROTECTION, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  store i32 16388, i32* %13, align 4
  store i32 16388, i32* %11, align 4
  store i32 16516, i32* %14, align 4
  store i32 16516, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %40 [
    i32 130, label %31
    i32 131, label %32
    i32 128, label %33
    i32 129, label %33
  ]

31:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %40

32:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 2, i32* %10, align 4
  store i32 2, i32* %8, align 4
  br label %40

33:                                               ; preds = %2, %2
  store i32 2, i32* %10, align 4
  store i32 2, i32* %9, align 4
  store i32 2, i32* %8, align 4
  store i32 2, i32* %7, align 4
  %34 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %4, align 8
  %35 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 3, i32* %12, align 4
  store i32 3, i32* %11, align 4
  store i32 3, i32* %14, align 4
  store i32 3, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %33
  br label %40

40:                                               ; preds = %2, %39, %32, %31
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 2, i32* %10, align 4
  store i32 2, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = load i32, i32* @MM20_PROT_CFG, align 4
  %47 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %45, i32 %46, i32* %15)
  %48 = load i32, i32* @MM20_PROT_CFG_PROTECT_RATE, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @rt2x00_set_field32(i32* %15, i32 %48, i32 %49)
  %51 = load i32, i32* @MM20_PROT_CFG_PROTECT_CTRL, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @rt2x00_set_field32(i32* %15, i32 %51, i32 %52)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = load i32, i32* @MM20_PROT_CFG, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %54, i32 %55, i32 %56)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = load i32, i32* @MM40_PROT_CFG, align 4
  %60 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %58, i32 %59, i32* %15)
  %61 = load i32, i32* @MM40_PROT_CFG_PROTECT_RATE, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @rt2x00_set_field32(i32* %15, i32 %61, i32 %62)
  %64 = load i32, i32* @MM40_PROT_CFG_PROTECT_CTRL, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @rt2x00_set_field32(i32* %15, i32 %64, i32 %65)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %68 = load i32, i32* @MM40_PROT_CFG, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %67, i32 %68, i32 %69)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = load i32, i32* @GF20_PROT_CFG, align 4
  %73 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %71, i32 %72, i32* %15)
  %74 = load i32, i32* @GF20_PROT_CFG_PROTECT_RATE, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @rt2x00_set_field32(i32* %15, i32 %74, i32 %75)
  %77 = load i32, i32* @GF20_PROT_CFG_PROTECT_CTRL, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @rt2x00_set_field32(i32* %15, i32 %77, i32 %78)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %81 = load i32, i32* @GF20_PROT_CFG, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %80, i32 %81, i32 %82)
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %85 = load i32, i32* @GF40_PROT_CFG, align 4
  %86 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %84, i32 %85, i32* %15)
  %87 = load i32, i32* @GF40_PROT_CFG_PROTECT_RATE, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @rt2x00_set_field32(i32* %15, i32 %87, i32 %88)
  %90 = load i32, i32* @GF40_PROT_CFG_PROTECT_CTRL, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @rt2x00_set_field32(i32* %15, i32 %90, i32 %91)
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %94 = load i32, i32* @GF40_PROT_CFG, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
