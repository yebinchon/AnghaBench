; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_mac_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_mac_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, i32, %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@XGMAC0_1_BASE_ADDR = common dso_local global i32 0, align 4
@XGMAC0_0_BASE_ADDR = common dso_local global i32 0, align 4
@A_XGM_SERDES_CTRL = common dso_local global i64 0, align 8
@A_XGM_PORT_CFG = common dso_local global i64 0, align 8
@F_ENRGMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmac*, %struct.adapter*, i32)* @mac_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_prep(%struct.cmac* %0, %struct.adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.cmac*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %4, align 8
  store %struct.adapter* %1, %struct.adapter** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.adapter*, %struct.adapter** %5, align 8
  %9 = load %struct.cmac*, %struct.cmac** %4, align 8
  %10 = getelementptr inbounds %struct.cmac, %struct.cmac* %9, i32 0, i32 2
  store %struct.adapter* %8, %struct.adapter** %10, align 8
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pci_read_config_word(i32 %13, i32 2, i32* %7)
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 55
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %17, %3
  %28 = load i32, i32* @XGMAC0_1_BASE_ADDR, align 4
  %29 = load i32, i32* @XGMAC0_0_BASE_ADDR, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.cmac*, %struct.cmac** %4, align 8
  %34 = getelementptr inbounds %struct.cmac, %struct.cmac* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cmac*, %struct.cmac** %4, align 8
  %36 = getelementptr inbounds %struct.cmac, %struct.cmac* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.adapter*, %struct.adapter** %5, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %27
  %43 = load %struct.adapter*, %struct.adapter** %5, align 8
  %44 = call i64 @uses_xaui(%struct.adapter* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load %struct.adapter*, %struct.adapter** %5, align 8
  %48 = load i64, i64* @A_XGM_SERDES_CTRL, align 8
  %49 = load %struct.cmac*, %struct.cmac** %4, align 8
  %50 = getelementptr inbounds %struct.cmac, %struct.cmac* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = load %struct.adapter*, %struct.adapter** %5, align 8
  %55 = call i64 @is_10G(%struct.adapter* %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 42998788, i32 36707332
  %59 = call i32 @t3_write_reg(%struct.adapter* %47, i64 %53, i32 %58)
  %60 = load %struct.adapter*, %struct.adapter** %5, align 8
  %61 = load i64, i64* @A_XGM_PORT_CFG, align 8
  %62 = load %struct.cmac*, %struct.cmac** %4, align 8
  %63 = getelementptr inbounds %struct.cmac, %struct.cmac* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %61, %65
  %67 = load i32, i32* @F_ENRGMII, align 4
  %68 = call i32 @t3_set_reg_field(%struct.adapter* %60, i64 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %46, %42, %27
  ret void
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i64 @uses_xaui(%struct.adapter*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i64 @is_10G(%struct.adapter*) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
