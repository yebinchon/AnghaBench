; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7300_edac.c_i7300_get_mc_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7300_edac.c_i7300_get_mc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7300_pvt* }
%struct.i7300_pvt = type { i32, i32, i32, i32*, i32, i64, i32 }

@AMBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AMBASE= 0x%lx\0A\00", align 1
@TOLM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"TOLM (number of 256M regions) =%u (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Actual TOLM byte addr=%u.%03u GB (0x%x)\0A\00", align 1
@MC_SETTINGS = common dso_local global i32 0, align 4
@MC_SETTINGS_A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Memory controller operating on single mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Memory controller operating on %s mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"mirrored\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"non-mirrored\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Error detection is %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Retry is %s\0A\00", align 1
@MIR0 = common dso_local global i32 0, align 4
@MIR1 = common dso_local global i32 0, align 4
@MIR2 = common dso_local global i32 0, align 4
@MAX_MIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i7300_get_mc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i7300_get_mc_regs(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i7300_pvt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.i7300_pvt*, %struct.i7300_pvt** %9, align 8
  store %struct.i7300_pvt* %10, %struct.i7300_pvt** %4, align 8
  %11 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %12 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AMBASE, align 4
  %15 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %16 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %15, i32 0, i32 5
  %17 = bitcast i64* %16 to i32*
  %18 = call i32 @pci_read_config_dword(i32 %13, i32 %14, i32* %17)
  %19 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %20 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, i32, ...) @debugf2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %25 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TOLM, align 4
  %28 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %29 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %28, i32 0, i32 0
  %30 = call i32 @pci_read_config_word(i32 %26, i32 %27, i32* %29)
  %31 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %32 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 12
  store i32 %34, i32* %32, align 8
  %35 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %36 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %39 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, ...) @debugf2(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %43 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 1000, %45
  %47 = ashr i64 %46, 2
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sdiv i32 %49, 1000
  %51 = load i32, i32* %5, align 4
  %52 = srem i32 %51, 1000
  %53 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %54 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 28
  %57 = call i32 (i8*, i32, ...) @debugf2(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %52, i32 %56)
  %58 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %59 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MC_SETTINGS, align 4
  %62 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %63 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %62, i32 0, i32 1
  %64 = call i32 @pci_read_config_dword(i32 %60, i32 %61, i32* %63)
  %65 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %66 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MC_SETTINGS_A, align 4
  %69 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %70 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %69, i32 0, i32 2
  %71 = call i32 @pci_read_config_dword(i32 %67, i32 %68, i32* %70)
  %72 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %73 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @IS_SINGLE_MODE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %1
  %78 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %88

79:                                               ; preds = %1
  %80 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %81 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_MIRRORED(i32 %82)
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)
  %87 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %79, %77
  %89 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %90 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @IS_ECC_ENABLED(i32 %91)
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %96 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %95)
  %97 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %98 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @IS_RETRY_ENABLED(i32 %99)
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %104 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %103)
  %105 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %106 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MIR0, align 4
  %109 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %110 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = call i32 @pci_read_config_word(i32 %107, i32 %108, i32* %112)
  %114 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %115 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MIR1, align 4
  %118 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %119 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = call i32 @pci_read_config_word(i32 %116, i32 %117, i32* %121)
  %123 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %124 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MIR2, align 4
  %127 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %128 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = call i32 @pci_read_config_word(i32 %125, i32 %126, i32* %130)
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %142, %88
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @MAX_MIR, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %139 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @decode_mir(i32 %137, i32* %140)
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %132

145:                                              ; preds = %132
  %146 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %147 = call i32 @i7300_init_csrows(%struct.mem_ctl_info* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %2, align 4
  br label %155

152:                                              ; preds = %145
  %153 = load %struct.i7300_pvt*, %struct.i7300_pvt** %4, align 8
  %154 = call i32 @print_dimm_size(%struct.i7300_pvt* %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %152, %150
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @debugf2(i8*, i32, ...) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i64 @IS_SINGLE_MODE(i32) #1

declare dso_local i32 @debugf0(i8*, ...) #1

declare dso_local i64 @IS_MIRRORED(i32) #1

declare dso_local i64 @IS_ECC_ENABLED(i32) #1

declare dso_local i64 @IS_RETRY_ENABLED(i32) #1

declare dso_local i32 @decode_mir(i32, i32*) #1

declare dso_local i32 @i7300_init_csrows(%struct.mem_ctl_info*) #1

declare dso_local i32 @print_dimm_size(%struct.i7300_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
