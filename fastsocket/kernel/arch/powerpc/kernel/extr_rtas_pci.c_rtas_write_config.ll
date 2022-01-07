; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_pci.c_rtas_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_pci.c_rtas_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@ibm_write_pci_config = common dso_local global i32 0, align 4
@write_pci_config = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtas_write_config(%struct.pci_dn* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %14 = icmp ne %struct.pci_dn* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %16, i32* %5, align 4
  br label %65

17:                                               ; preds = %4
  %18 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @config_access_valid(%struct.pci_dn* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %23, i32* %5, align 4
  br label %65

24:                                               ; preds = %17
  %25 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %26 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %29 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @rtas_config_addr(i32 %27, i32 %30, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  %34 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %24
  %41 = load i32, i32* @ibm_write_pci_config, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @BUID_HI(i64 %43)
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @BUID_LO(i64 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i32, i32, i32, i32*, i64, i32, i32, ...) @rtas_call(i32 %41, i32 5, i32 1, i32* null, i64 %42, i32 %44, i32 %46, i32 %47, i32 %49)
  store i32 %50, i32* %12, align 4
  br label %58

51:                                               ; preds = %24
  %52 = load i32, i32* @write_pci_config, align 4
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32, i32, i32, i32*, i64, i32, i32, ...) @rtas_call(i32 %52, i32 3, i32 1, i32* null, i64 %53, i32 %54, i32 %56)
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %51, %40
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %61, %22, %15
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @config_access_valid(%struct.pci_dn*, i32) #1

declare dso_local i64 @rtas_config_addr(i32, i32, i32) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i64, i32, i32, ...) #1

declare dso_local i32 @BUID_HI(i64) #1

declare dso_local i32 @BUID_LO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
