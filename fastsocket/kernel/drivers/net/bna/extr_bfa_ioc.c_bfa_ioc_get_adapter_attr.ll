; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_get_adapter_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_get_adapter_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.bfi_ioc_attr* }
%struct.bfi_ioc_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_adapter_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, %struct.bfa_adapter_attr*)* @bfa_ioc_get_adapter_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_get_adapter_attr(%struct.bfa_ioc* %0, %struct.bfa_adapter_attr* %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca %struct.bfa_adapter_attr*, align 8
  %5 = alloca %struct.bfi_ioc_attr*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store %struct.bfa_adapter_attr* %1, %struct.bfa_adapter_attr** %4, align 8
  %6 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %6, i32 0, i32 0
  %8 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %7, align 8
  store %struct.bfi_ioc_attr* %8, %struct.bfi_ioc_attr** %5, align 8
  %9 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %10 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %10, i32 0, i32 18
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_ioc_get_adapter_serial_num(%struct.bfa_ioc* %9, i32 %12)
  %14 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %15 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %16 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %15, i32 0, i32 17
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_ioc_get_adapter_fw_ver(%struct.bfa_ioc* %14, i32 %17)
  %19 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %20 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %21 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bfa_ioc_get_adapter_optrom_ver(%struct.bfa_ioc* %19, i32 %22)
  %24 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %25 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %26 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bfa_ioc_get_adapter_manufacturer(%struct.bfa_ioc* %24, i32 %27)
  %29 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %30 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %29, i32 0, i32 14
  %31 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  %32 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %31, i32 0, i32 6
  %33 = call i32 @memcpy(i32* %30, i32* %32, i32 4)
  %34 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %35 = call i32 @bfa_ioc_get_nports(%struct.bfa_ioc* %34)
  %36 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %39 = call i32 @bfa_ioc_speed_sup(%struct.bfa_ioc* %38)
  %40 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %41 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %43 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %44 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bfa_ioc_get_adapter_model(%struct.bfa_ioc* %42, i32 %45)
  %47 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %48 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %49 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bfa_ioc_get_adapter_model(%struct.bfa_ioc* %47, i32 %50)
  %52 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  %53 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %56 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  %58 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bfa_mfg_is_mezz(i32 %59)
  %61 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %62 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  %64 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @BFI_ADAPTER_IS_SPECIAL(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %2
  %69 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %70 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %74

71:                                               ; preds = %2
  %72 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %73 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %76 = call i32 @bfa_ioc_get_pwwn(%struct.bfa_ioc* %75)
  %77 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %78 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %80 = call i32 @bfa_nw_ioc_get_mac(%struct.bfa_ioc* %79)
  %81 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %82 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  %84 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %87 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  %89 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %92 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  %94 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %97 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.bfi_ioc_attr*, %struct.bfi_ioc_attr** %5, align 8
  %99 = getelementptr inbounds %struct.bfi_ioc_attr, %struct.bfi_ioc_attr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %102 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %104 = load %struct.bfa_adapter_attr*, %struct.bfa_adapter_attr** %4, align 8
  %105 = getelementptr inbounds %struct.bfa_adapter_attr, %struct.bfa_adapter_attr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bfa_ioc_get_pci_chip_rev(%struct.bfa_ioc* %103, i32 %106)
  ret void
}

declare dso_local i32 @bfa_ioc_get_adapter_serial_num(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_fw_ver(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_optrom_ver(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_manufacturer(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bfa_ioc_get_nports(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_speed_sup(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_get_adapter_model(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_mfg_is_mezz(i32) #1

declare dso_local i64 @BFI_ADAPTER_IS_SPECIAL(i32) #1

declare dso_local i32 @bfa_ioc_get_pwwn(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_nw_ioc_get_mac(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_get_pci_chip_rev(%struct.bfa_ioc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
