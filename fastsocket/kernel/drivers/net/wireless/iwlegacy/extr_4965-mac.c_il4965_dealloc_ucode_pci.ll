; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_dealloc_ucode_pci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_dealloc_ucode_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_dealloc_ucode_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_dealloc_ucode_pci(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %4 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 6
  %8 = call i32 @il_free_fw_desc(i32 %5, i32* %7)
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 5
  %14 = call i32 @il_free_fw_desc(i32 %11, i32* %13)
  %15 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 4
  %20 = call i32 @il_free_fw_desc(i32 %17, i32* %19)
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 3
  %26 = call i32 @il_free_fw_desc(i32 %23, i32* %25)
  %27 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %28 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 2
  %32 = call i32 @il_free_fw_desc(i32 %29, i32* %31)
  %33 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 0
  %38 = call i32 @il_free_fw_desc(i32 %35, i32* %37)
  ret void
}

declare dso_local i32 @il_free_fw_desc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
