; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_dc21285.c_dc21285_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_dc21285.c_dc21285_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@CSR_PCICMD = common dso_local global i32* null, align 8
@PCICMD_ABORT = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @dc21285_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc21285_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @dc21285_base_address(%struct.pci_bus* %14, i32 %15)
  store i64 %16, i64* %12, align 8
  store i32 -1, i32* %13, align 4
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %33 [
    i32 1, label %21
    i32 2, label %25
    i32 4, label %29
  ]

21:                                               ; preds = %19
  %22 = load i64, i64* %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 asm "ldrb\09$0, [$1, $2]", "=r,r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %22, i32 %23) #2, !srcloc !2
  store i32 %24, i32* %13, align 4
  br label %33

25:                                               ; preds = %19
  %26 = load i64, i64* %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 asm "ldrh\09$0, [$1, $2]", "=r,r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %26, i32 %27) #2, !srcloc !3
  store i32 %28, i32* %13, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 asm "ldr\09$0, [$1, $2]", "=r,r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %30, i32 %31) #2, !srcloc !4
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %19, %29, %25, %21
  br label %34

34:                                               ; preds = %33, %5
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** @CSR_PCICMD, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @PCICMD_ABORT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @PCICMD_ABORT, align 4
  %46 = or i32 65535, %45
  %47 = and i32 %44, %46
  %48 = load i32*, i32** @CSR_PCICMD, align 8
  store i32 %47, i32* %48, align 4
  store i32 -1, i32* %6, align 4
  br label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %43
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i64 @dc21285_base_address(%struct.pci_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 584}
!3 = !{i32 681}
!4 = !{i32 778}
