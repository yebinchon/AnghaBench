; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot-c2k.c_c2k_bridge_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cuboot-c2k.c_c2k_bridge_setup.c"
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
@.str = private unnamed_addr constant [16 x i8] c"marvell,mv64360\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Error: Missing marvell,mv64360 device tree node\0A\0D\00", align 1
@MV64x60_CPU_BAR_ENABLE = common dso_local global i64 0, align 8
@__const.c2k_bridge_setup.name = private unnamed_addr constant [5 x i8] c"pci \00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Error: Only 2 PCI controllers are supported at this time.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Error: Can't find marvell,mv64360-pci ranges property\0A\0D\00", align 1
@mv64x60_cpu2pci_io = common dso_local global %struct.mv64x60_cpu2pci_win* null, align 8
@mv64x60_cpu2pci_mem = common dso_local global %struct.mv64x60_cpu2pci_win* null, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"Error: Can't translate PCI address 0x%x\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @c2k_bridge_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c2k_bridge_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [30 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.mv64x60_cpu2pci_win*, align 8
  %18 = alloca i32, align 4
  %19 = alloca [5 x i8], align 1
  store i32 %0, i32* %2, align 4
  %20 = call i64* (...) @mv64x60_get_bridge_pbase()
  store i64* %20, i64** %15, align 8
  %21 = call i64 (...) @mv64x60_is_coherent()
  store i64 %21, i64* %16, align 8
  %22 = load i64, i64* %16, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load i32, i32* @MV64x60_PCI_ACC_CNTL_SNOOP_WB, align 4
  %26 = load i32, i32* @MV64x60_PCI_ACC_CNTL_SWAP_NONE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MV64x60_PCI_ACC_CNTL_MBURST_32_BYTES, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MV64x60_PCI_ACC_CNTL_RDSIZE_32_BYTES, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %6, align 4
  br label %40

32:                                               ; preds = %1
  %33 = load i32, i32* @MV64x60_PCI_ACC_CNTL_SNOOP_NONE, align 4
  %34 = load i32, i32* @MV64x60_PCI_ACC_CNTL_SWAP_NONE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MV64x60_PCI_ACC_CNTL_MBURST_128_BYTES, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MV64x60_PCI_ACC_CNTL_RDSIZE_256_BYTES, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %24
  %41 = load i64, i64* @bridge_base, align 8
  %42 = load i64*, i64** %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = call i32 @mv64x60_config_ctlr_windows(i64 %41, i64* %42, i64 %43)
  %45 = call i8* @find_node_by_compatible(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** %14, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i64, i64* @bridge_base, align 8
  %52 = load i64, i64* @MV64x60_CPU_BAR_ENABLE, align 8
  %53 = add nsw i64 %51, %52
  %54 = inttoptr i64 %53 to i32*
  %55 = call i32 @in_le32(i32* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, 8388096
  store i32 %57, i32* %5, align 4
  %58 = load i64, i64* @bridge_base, align 8
  %59 = load i64, i64* @MV64x60_CPU_BAR_ENABLE, align 8
  %60 = add nsw i64 %58, %59
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @out_le32(i32* %61, i32 %62)
  store i8* null, i8** %13, align 8
  store i32 0, i32* %18, align 4
  br label %64

64:                                               ; preds = %175, %50
  %65 = bitcast [5 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.c2k_bridge_setup.name, i32 0, i32 0), i64 5, i1 false)
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 48
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %70 = call i32 @strlen(i8* %69)
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 %72
  store i8 %68, i8* %73, align 1
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %75 = call i8* @find_node_by_alias(i8* %74)
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %178

79:                                               ; preds = %64
  %80 = load i32, i32* %18, align 4
  %81 = icmp sge i32 %80, 2
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i64, i64* @bridge_base, align 8
  %86 = load i64*, i64** %15, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @mv64x60_config_pci_windows(i64 %85, i64* %86, i32 %87, i32 0, i32 %88, i32 %89)
  %91 = load i8*, i8** %13, align 8
  %92 = getelementptr inbounds [30 x i32], [30 x i32]* %4, i64 0, i64 0
  %93 = call i32 @getprop(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %92, i32 120)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %84
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %158, %98
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %161

103:                                              ; preds = %99
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [30 x i32], [30 x i32]* %4, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, -16777216
  switch i32 %108, label %113 [
    i32 16777216, label %109
    i32 33554432, label %111
  ]

109:                                              ; preds = %103
  %110 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** @mv64x60_cpu2pci_io, align 8
  store %struct.mv64x60_cpu2pci_win* %110, %struct.mv64x60_cpu2pci_win** %17, align 8
  br label %114

111:                                              ; preds = %103
  %112 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** @mv64x60_cpu2pci_mem, align 8
  store %struct.mv64x60_cpu2pci_win* %112, %struct.mv64x60_cpu2pci_win** %17, align 8
  br label %114

113:                                              ; preds = %103
  br label %158

114:                                              ; preds = %111, %109
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [30 x i32], [30 x i32]* %4, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [30 x i32], [30 x i32]* %4, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [30 x i32], [30 x i32]* %4, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %11, align 8
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 5
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [30 x i32], [30 x i32]* %4, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %9, align 4
  %136 = load i64, i64* %11, align 8
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* %9, align 4
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %139, i32* %140, align 4
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %143 = call i32 @dt_xlate_addr(i8* %141, i32* %142, i32 8, i64* %11)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %114
  %146 = load i64, i64* %11, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %145, %114
  %150 = load i64, i64* @bridge_base, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i64, i64* %11, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** %17, align 8
  %157 = call i32 @mv64x60_config_cpu2pci_window(i64 %150, i32 %151, i32 %152, i32 %153, i64 %154, i32 %155, %struct.mv64x60_cpu2pci_win* %156)
  br label %158

158:                                              ; preds = %149, %113
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 6
  store i32 %160, i32* %3, align 4
  br label %99

161:                                              ; preds = %99
  %162 = load i32, i32* %18, align 4
  %163 = mul nsw i32 %162, 5
  %164 = add nsw i32 9, %163
  %165 = shl i32 3, %164
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %5, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load i64, i64* @bridge_base, align 8
  %170 = load i64, i64* @MV64x60_CPU_BAR_ENABLE, align 8
  %171 = add nsw i64 %169, %170
  %172 = inttoptr i64 %171 to i32*
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @out_le32(i32* %172, i32 %173)
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %18, align 4
  br label %64

178:                                              ; preds = %78
  ret void
}

declare dso_local i64* @mv64x60_get_bridge_pbase(...) #1

declare dso_local i64 @mv64x60_is_coherent(...) #1

declare dso_local i32 @mv64x60_config_ctlr_windows(i64, i64*, i64) #1

declare dso_local i8* @find_node_by_compatible(i32*, i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @out_le32(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @find_node_by_alias(i8*) #1

declare dso_local i32 @mv64x60_config_pci_windows(i64, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @getprop(i8*, i8*, i32*, i32) #1

declare dso_local i32 @dt_xlate_addr(i8*, i32*, i32, i64*) #1

declare dso_local i32 @mv64x60_config_cpu2pci_window(i64, i32, i32, i32, i64, i32, %struct.mv64x60_cpu2pci_win*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
