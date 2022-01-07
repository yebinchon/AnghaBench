; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_pci_config_mkaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_pci_config_mkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pci_pbm_info*, i8, i32, i32)* @schizo_pci_config_mkaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @schizo_pci_config_mkaddr(%struct.pci_pbm_info* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %11 = icmp ne %struct.pci_pbm_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %30

13:                                               ; preds = %4
  %14 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %15 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i64
  %19 = sub nsw i64 %18, %16
  %20 = trunc i64 %19 to i8
  store i8 %20, i8* %7, align 1
  %21 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %22 = call i32 @SCHIZO_CONFIG_BASE(%struct.pci_pbm_info* %21)
  %23 = load i8, i8* %7, align 1
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @SCHIZO_CONFIG_ENCODE(i8 zeroext %23, i32 %24, i32 %25)
  %27 = or i32 %22, %26
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %13, %12
  %31 = load i8*, i8** %5, align 8
  ret i8* %31
}

declare dso_local i32 @SCHIZO_CONFIG_BASE(%struct.pci_pbm_info*) #1

declare dso_local i32 @SCHIZO_CONFIG_ENCODE(i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
