; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_tx_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_tx_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TDES1_CONTROL_IC = common dso_local global i32 0, align 4
@TDES1_CONTROL_LS = common dso_local global i32 0, align 4
@TDES1_CONTROL_FS = common dso_local global i32 0, align 4
@TDES1_CONTROL_TER = common dso_local global i32 0, align 4
@TDES0_CONTROL_OWN = common dso_local global i32 0, align 4
@TDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, i32, i64)* @adm8211_tx_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8211_tx_raw(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.adm8211_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.adm8211_priv*, %struct.adm8211_priv** %15, align 8
  store %struct.adm8211_priv* %16, %struct.adm8211_priv** %9, align 8
  %17 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %18 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %27 = call i32 @pci_map_single(i32 %19, i32 %22, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %29 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %28, i32 0, i32 3
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %33 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %36 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %34, %37
  %39 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %40 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 2
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %4
  %45 = load i32, i32* @TDES1_CONTROL_IC, align 4
  %46 = load i32, i32* @TDES1_CONTROL_LS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TDES1_CONTROL_FS, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %13, align 4
  br label %54

50:                                               ; preds = %4
  %51 = load i32, i32* @TDES1_CONTROL_LS, align 4
  %52 = load i32, i32* @TDES1_CONTROL_FS, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %56 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %59 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub i32 %57, %60
  %62 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %63 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 2
  %66 = icmp eq i32 %61, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %69 = call i32 @ieee80211_stop_queue(%struct.ieee80211_hw* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %54
  %71 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %72 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %75 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = urem i32 %73, %76
  store i32 %77, i32* %12, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %80 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %79, i32 0, i32 5
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store %struct.sk_buff* %78, %struct.sk_buff** %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %88 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %87, i32 0, i32 5
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %96 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %95, i32 0, i32 5
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i64 %94, i64* %101, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i8* @cpu_to_le32(i32 %102)
  %104 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %105 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %104, i32 0, i32 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i8* %103, i8** %110, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %113 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = icmp eq i32 %111, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %70
  %118 = load i32, i32* @TDES1_CONTROL_TER, align 4
  %119 = load i32, i32* %13, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %117, %70
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %122, %125
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %129 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %128, i32 0, i32 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i8* %127, i8** %134, align 8
  %135 = load i32, i32* @TDES0_CONTROL_OWN, align 4
  %136 = load i32, i32* %7, align 4
  %137 = shl i32 %136, 20
  %138 = or i32 %135, %137
  %139 = or i32 %138, 8
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i8* @cpu_to_le32(i32 %140)
  %142 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %143 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %142, i32 0, i32 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i8* %141, i8** %148, align 8
  %149 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %150 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = load %struct.adm8211_priv*, %struct.adm8211_priv** %9, align 8
  %154 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %153, i32 0, i32 3
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  %157 = load i32, i32* @TDR, align 4
  %158 = call i32 @ADM8211_CSR_WRITE(i32 %157, i32 0)
  ret void
}

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_stop_queue(%struct.ieee80211_hw*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
