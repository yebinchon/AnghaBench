; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_adapter_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_get_adapter_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.bfi_ioc_attr_s* }
%struct.bfi_ioc_attr_s = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_adapter_attr_s = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BFA_ADAPTER_UUID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_get_adapter_attr(%struct.bfa_ioc_s* %0, %struct.bfa_adapter_attr_s* %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca %struct.bfa_adapter_attr_s*, align 8
  %5 = alloca %struct.bfi_ioc_attr_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store %struct.bfa_adapter_attr_s* %1, %struct.bfa_adapter_attr_s** %4, align 8
  %6 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %6, i32 0, i32 0
  %8 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %7, align 8
  store %struct.bfi_ioc_attr_s* %8, %struct.bfi_ioc_attr_s** %5, align 8
  %9 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %10 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %10, i32 0, i32 24
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @bfa_ioc_get_adapter_serial_num(%struct.bfa_ioc_s* %9, i32 %12)
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %15 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %15, i32 0, i32 23
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfa_ioc_get_adapter_fw_ver(%struct.bfa_ioc_s* %14, i32 %17)
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %20 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %20, i32 0, i32 22
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bfa_ioc_get_adapter_optrom_ver(%struct.bfa_ioc_s* %19, i32 %22)
  %24 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %25 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %26 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %25, i32 0, i32 21
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bfa_ioc_get_adapter_manufacturer(%struct.bfa_ioc_s* %24, i32 %27)
  %29 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %29, i32 0, i32 20
  %31 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %32 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %31, i32 0, i32 11
  %33 = call i32 @memcpy(i32* %30, i32* %32, i32 4)
  %34 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %35 = call i32 @bfa_ioc_get_nports(%struct.bfa_ioc_s* %34)
  %36 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %39 = call i32 @bfa_ioc_speed_sup(%struct.bfa_ioc_s* %38)
  %40 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %40, i32 0, i32 19
  store i32 %39, i32* %41, align 4
  %42 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %43 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %43, i32 0, i32 18
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bfa_ioc_get_adapter_model(%struct.bfa_ioc_s* %42, i32 %45)
  %47 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %48 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %49 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %48, i32 0, i32 17
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bfa_ioc_get_adapter_model(%struct.bfa_ioc_s* %47, i32 %50)
  %52 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %55, i32 0, i32 16
  store i32 %54, i32* %56, align 8
  %57 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bfa_mfg_is_mezz(i32 %59)
  %61 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %62 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %64 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @BFI_ADAPTER_IS_SPECIAL(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %2
  %69 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %70 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %74

71:                                               ; preds = %2
  %72 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %73 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %76 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %75, i32 0, i32 0
  %77 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %76, align 8
  %78 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %81 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %80, i32 0, i32 15
  store i32 %79, i32* %81, align 4
  %82 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %83 = call i32 @bfa_ioc_get_mac(%struct.bfa_ioc_s* %82)
  %84 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %85 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %84, i32 0, i32 14
  store i32 %83, i32* %85, align 8
  %86 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %87 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %90 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %89, i32 0, i32 13
  store i32 %88, i32* %90, align 4
  %91 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %92 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %95 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 8
  %96 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %97 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %100 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %99, i32 0, i32 11
  store i32 %98, i32* %100, align 4
  %101 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %102 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %105 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  %106 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %107 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %108 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @bfa_ioc_get_pci_chip_rev(%struct.bfa_ioc_s* %106, i32 %109)
  %111 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %112 = call i32 @bfa_ioc_is_cna(%struct.bfa_ioc_s* %111)
  %113 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %114 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 8
  %115 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %116 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %129

119:                                              ; preds = %74
  %120 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %121 = call i32 @bfa_ioc_is_cna(%struct.bfa_ioc_s* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %125 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  br label %129

129:                                              ; preds = %123, %119, %74
  %130 = phi i1 [ false, %119 ], [ false, %74 ], [ %128, %123 ]
  %131 = zext i1 %130 to i32
  %132 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %133 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %135 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %138 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  %139 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %140 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %143 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %145 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %148 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.bfa_adapter_attr_s*, %struct.bfa_adapter_attr_s** %4, align 8
  %150 = getelementptr inbounds %struct.bfa_adapter_attr_s, %struct.bfa_adapter_attr_s* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.bfi_ioc_attr_s*, %struct.bfi_ioc_attr_s** %5, align 8
  %153 = getelementptr inbounds %struct.bfi_ioc_attr_s, %struct.bfi_ioc_attr_s* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @BFA_ADAPTER_UUID_LEN, align 4
  %156 = call i32 @memcpy(i32* %151, i32* %154, i32 %155)
  ret void
}

declare dso_local i32 @bfa_ioc_get_adapter_serial_num(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_fw_ver(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_optrom_ver(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_get_adapter_manufacturer(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bfa_ioc_get_nports(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_speed_sup(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_get_adapter_model(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_mfg_is_mezz(i32) #1

declare dso_local i64 @BFI_ADAPTER_IS_SPECIAL(i32) #1

declare dso_local i32 @bfa_ioc_get_mac(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_get_pci_chip_rev(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_is_cna(%struct.bfa_ioc_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
