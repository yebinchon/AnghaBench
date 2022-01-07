; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_bridge_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_bridge_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64x60_cpu2pci_win = type { i32 }

@MV64x60_PCI_ACC_CNTL_SNOOP_WB = common dso_local global i32 0, align 4
@MV64x60_PCI_ACC_CNTL_SWAP_NONE = common dso_local global i32 0, align 4
@MV64x60_PCI_ACC_CNTL_MBURST_32_BYTES = common dso_local global i32 0, align 4
@MV64x60_PCI_ACC_CNTL_RDSIZE_32_BYTES = common dso_local global i32 0, align 4
@MV64x60_PCI_ACC_CNTL_SNOOP_NONE = common dso_local global i32 0, align 4
@MV64x60_PCI_ACC_CNTL_MBURST_128_BYTES = common dso_local global i32 0, align 4
@MV64x60_PCI_ACC_CNTL_RDSIZE_256_BYTES = common dso_local global i32 0, align 4
@bridge_base = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"marvell,mv64360-pci\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Error: Missing marvell,mv64360-pci device tree node\0A\0D\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Error: Can't find marvell,mv64360-pci ranges property\0A\0D\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"marvell,mv64360\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Error: Missing marvell,mv64360 device tree node\0A\0D\00", align 1
@MV64x60_CPU_BAR_ENABLE = common dso_local global i64 0, align 8
@mv64x60_cpu2pci_io = common dso_local global %struct.mv64x60_cpu2pci_win* null, align 8
@mv64x60_cpu2pci_mem = common dso_local global %struct.mv64x60_cpu2pci_win* null, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Error: Can't translate PCI address 0x%x\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @prpmc2800_bridge_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prpmc2800_bridge_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [12 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mv64x60_cpu2pci_win*, align 8
  store i32 %0, i32* %2, align 4
  %17 = call i64* (...) @mv64x60_get_bridge_pbase()
  store i64* %17, i64** %14, align 8
  %18 = call i64 (...) @mv64x60_is_coherent()
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* %15, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i32, i32* @MV64x60_PCI_ACC_CNTL_SNOOP_WB, align 4
  %23 = load i32, i32* @MV64x60_PCI_ACC_CNTL_SWAP_NONE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MV64x60_PCI_ACC_CNTL_MBURST_32_BYTES, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MV64x60_PCI_ACC_CNTL_RDSIZE_32_BYTES, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %6, align 4
  br label %37

29:                                               ; preds = %1
  %30 = load i32, i32* @MV64x60_PCI_ACC_CNTL_SNOOP_NONE, align 4
  %31 = load i32, i32* @MV64x60_PCI_ACC_CNTL_SWAP_NONE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MV64x60_PCI_ACC_CNTL_MBURST_128_BYTES, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MV64x60_PCI_ACC_CNTL_RDSIZE_256_BYTES, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %29, %21
  %38 = load i64, i64* @bridge_base, align 8
  %39 = load i64*, i64** %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = call i32 @mv64x60_config_ctlr_windows(i64 %38, i64* %39, i64 %40)
  %42 = load i64, i64* @bridge_base, align 8
  %43 = load i64*, i64** %14, align 8
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mv64x60_config_pci_windows(i64 %42, i64* %43, i32 0, i32 0, i32 %44, i32 %45)
  %47 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %37
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %55 = call i32 @getprop(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %54, i32 48)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 48
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %52
  %62 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i64, i64* @bridge_base, align 8
  %69 = load i64, i64* @MV64x60_CPU_BAR_ENABLE, align 8
  %70 = add nsw i64 %68, %69
  %71 = inttoptr i64 %70 to i32*
  %72 = call i32 @in_le32(i32* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, 523776
  store i32 %74, i32* %5, align 4
  %75 = load i64, i64* @bridge_base, align 8
  %76 = load i64, i64* @MV64x60_CPU_BAR_ENABLE, align 8
  %77 = add nsw i64 %75, %76
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @out_le32(i32* %78, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %138, %67
  %82 = load i32, i32* %3, align 4
  %83 = icmp slt i32 %82, 12
  br i1 %83, label %84, label %141

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, -16777216
  switch i32 %89, label %94 [
    i32 16777216, label %90
    i32 33554432, label %92
  ]

90:                                               ; preds = %84
  %91 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** @mv64x60_cpu2pci_io, align 8
  store %struct.mv64x60_cpu2pci_win* %91, %struct.mv64x60_cpu2pci_win** %16, align 8
  br label %95

92:                                               ; preds = %84
  %93 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** @mv64x60_cpu2pci_mem, align 8
  store %struct.mv64x60_cpu2pci_win* %93, %struct.mv64x60_cpu2pci_win** %16, align 8
  br label %95

94:                                               ; preds = %84
  br label %138

95:                                               ; preds = %92, %90
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %11, align 8
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 5
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %9, align 4
  %117 = load i64, i64* %11, align 8
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %9, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %120, i32* %121, align 4
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %124 = call i32 @dt_xlate_addr(i8* %122, i32* %123, i32 8, i64* %11)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %95
  %127 = load i64, i64* %11, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %95
  %131 = load i64, i64* @bridge_base, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i64, i64* %11, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** %16, align 8
  %137 = call i32 @mv64x60_config_cpu2pci_window(i64 %131, i32 0, i32 %132, i32 %133, i64 %134, i32 %135, %struct.mv64x60_cpu2pci_win* %136)
  br label %138

138:                                              ; preds = %130, %94
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 6
  store i32 %140, i32* %3, align 4
  br label %81

141:                                              ; preds = %81
  %142 = load i32, i32* %5, align 4
  %143 = and i32 %142, -1537
  store i32 %143, i32* %5, align 4
  %144 = load i64, i64* @bridge_base, align 8
  %145 = load i64, i64* @MV64x60_CPU_BAR_ENABLE, align 8
  %146 = add nsw i64 %144, %145
  %147 = inttoptr i64 %146 to i32*
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @out_le32(i32* %147, i32 %148)
  ret void
}

declare dso_local i64* @mv64x60_get_bridge_pbase(...) #1

declare dso_local i64 @mv64x60_is_coherent(...) #1

declare dso_local i32 @mv64x60_config_ctlr_windows(i64, i64*, i64) #1

declare dso_local i32 @mv64x60_config_pci_windows(i64, i64*, i32, i32, i32, i32) #1

declare dso_local i8* @find_node_by_compatible(i32*, i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @getprop(i8*, i8*, i32*, i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @dt_xlate_addr(i8*, i32*, i32, i64*) #1

declare dso_local i32 @mv64x60_config_cpu2pci_window(i64, i32, i32, i32, i64, i32, %struct.mv64x60_cpu2pci_win*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
