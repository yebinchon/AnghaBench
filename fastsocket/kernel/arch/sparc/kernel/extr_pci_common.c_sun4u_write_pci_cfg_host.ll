; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_sun4u_write_pci_cfg_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_common.c_sun4u_write_pci_cfg_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*, i8, i32, i32, i32, i32)* @sun4u_write_pci_cfg_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4u_write_pci_cfg_host(%struct.pci_pbm_info* %0, i8 zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_pbm_info*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %18 = load i8, i8* %9, align 1
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32* @sun4u_config_mkaddr(%struct.pci_pbm_info* %17, i8 zeroext %18, i32 %19, i32 %20)
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %25, i32* %7, align 4
  br label %101

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  switch i32 %27, label %99 [
    i32 1, label %28
    i32 2, label %65
    i32 4, label %83
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  %32 = load i32*, i32** %14, align 8
  %33 = ptrtoint i32* %32 to i64
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = and i64 %34, -2
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @pci_config_read16(i32* %37, i32* %16)
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load i32, i32* %16, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %13, align 4
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %16, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %16, align 4
  br label %55

49:                                               ; preds = %31
  %50 = load i32, i32* %16, align 4
  %51 = and i32 %50, 65280
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %16, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i64, i64* %15, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @pci_config_write16(i32* %57, i32 %58)
  br label %64

60:                                               ; preds = %28
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @pci_config_write8(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %55
  br label %99

65:                                               ; preds = %26
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @pci_config_write16(i32* %69, i32 %70)
  br label %82

72:                                               ; preds = %65
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, 255
  %76 = call i32 @pci_config_write8(i32* %73, i32 %75)
  %77 = load i32*, i32** %14, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 8
  %81 = call i32 @pci_config_write8(i32* %78, i32 %80)
  br label %82

82:                                               ; preds = %72, %68
  br label %99

83:                                               ; preds = %26
  %84 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %85 = load i8, i8* %9, align 1
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %13, align 4
  %89 = and i32 %88, 65535
  %90 = call i32 @sun4u_write_pci_cfg_host(%struct.pci_pbm_info* %84, i8 zeroext %85, i32 %86, i32 %87, i32 2, i32 %89)
  %91 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %8, align 8
  %92 = load i8, i8* %9, align 1
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 2
  %96 = load i32, i32* %13, align 4
  %97 = ashr i32 %96, 16
  %98 = call i32 @sun4u_write_pci_cfg_host(%struct.pci_pbm_info* %91, i8 zeroext %92, i32 %93, i32 %95, i32 2, i32 %97)
  br label %99

99:                                               ; preds = %26, %83, %82, %64
  %100 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %24
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32* @sun4u_config_mkaddr(%struct.pci_pbm_info*, i8 zeroext, i32, i32) #1

declare dso_local i32 @pci_config_read16(i32*, i32*) #1

declare dso_local i32 @pci_config_write16(i32*, i32) #1

declare dso_local i32 @pci_config_write8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
