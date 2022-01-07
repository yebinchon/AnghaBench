; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_process.c_bfin_mem_access_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_process.c_bfin_mem_access_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@FIXED_CODE_START = common dso_local global i32 0, align 4
@physical_mem_end = common dso_local global i32 0, align 4
@BFIN_MEM_ACCESS_CORE = common dso_local global i32 0, align 4
@L1_CODE_START = common dso_local global i32 0, align 4
@L1_CODE_LENGTH = common dso_local global i32 0, align 4
@BFIN_MEM_ACCESS_ITEST = common dso_local global i32 0, align 4
@BFIN_MEM_ACCESS_IDMA = common dso_local global i32 0, align 4
@L1_SCRATCH_START = common dso_local global i32 0, align 4
@L1_SCRATCH_LENGTH = common dso_local global i32 0, align 4
@BFIN_MEM_ACCESS_CORE_ONLY = common dso_local global i32 0, align 4
@L1_DATA_A_START = common dso_local global i32 0, align 4
@L1_DATA_A_LENGTH = common dso_local global i32 0, align 4
@L1_DATA_B_START = common dso_local global i32 0, align 4
@L1_DATA_B_LENGTH = common dso_local global i32 0, align 4
@L2_START = common dso_local global i32 0, align 4
@L2_LENGTH = common dso_local global i32 0, align 4
@SYSMMR_BASE = common dso_local global i64 0, align 8
@ASYNC_BANK0_BASE = common dso_local global i32 0, align 4
@ASYNC_BANK0_SIZE = common dso_local global i32 0, align 4
@ASYNC_BANK1_BASE = common dso_local global i32 0, align 4
@ASYNC_BANK1_SIZE = common dso_local global i32 0, align 4
@ASYNC_BANK2_BASE = common dso_local global i32 0, align 4
@ASYNC_BANK2_SIZE = common dso_local global i32 0, align 4
@ASYNC_BANK3_BASE = common dso_local global i32 0, align 4
@ASYNC_BANK3_SIZE = common dso_local global i32 0, align 4
@BOOT_ROM_START = common dso_local global i32 0, align 4
@BOOT_ROM_LENGTH = common dso_local global i32 0, align 4
@L1_ROM_START = common dso_local global i32 0, align 4
@L1_ROM_LENGTH = common dso_local global i32 0, align 4
@BFIN_MEM_ACCESS_DMA = common dso_local global i32 0, align 4
@COREB_L1_CODE_LENGTH = common dso_local global i32 0, align 4
@COREB_L1_CODE_START = common dso_local global i32 0, align 4
@COREB_L1_DATA_A_LENGTH = common dso_local global i32 0, align 4
@COREB_L1_DATA_A_START = common dso_local global i32 0, align 4
@COREB_L1_DATA_B_LENGTH = common dso_local global i32 0, align 4
@COREB_L1_DATA_B_START = common dso_local global i32 0, align 4
@COREB_L1_SCRATCH_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfin_mem_access_type(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 (...) @raw_smp_processor_id()
  store i32 %7, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @ULONG_MAX, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub i64 %9, %10
  %12 = icmp ugt i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %162

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @FIXED_CODE_START, align 4
  %20 = load i32, i32* @physical_mem_end, align 4
  %21 = call i64 @in_mem(i64 %17, i64 %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @BFIN_MEM_ACCESS_CORE, align 4
  store i32 %24, i32* %3, align 4
  br label %162

25:                                               ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @L1_CODE_START, align 4
  %29 = load i32, i32* @L1_CODE_LENGTH, align 4
  %30 = call i64 @in_mem_const(i64 %26, i64 %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @BFIN_MEM_ACCESS_ITEST, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @BFIN_MEM_ACCESS_IDMA, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %3, align 4
  br label %162

41:                                               ; preds = %25
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* @L1_SCRATCH_START, align 4
  %45 = load i32, i32* @L1_SCRATCH_LENGTH, align 4
  %46 = call i64 @in_mem_const(i64 %42, i64 %43, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @BFIN_MEM_ACCESS_CORE_ONLY, align 4
  br label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i32 [ %52, %51 ], [ %55, %53 ]
  store i32 %57, i32* %3, align 4
  br label %162

58:                                               ; preds = %41
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* @L1_DATA_A_START, align 4
  %62 = load i32, i32* @L1_DATA_A_LENGTH, align 4
  %63 = call i64 @in_mem_const(i64 %59, i64 %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @BFIN_MEM_ACCESS_CORE, align 4
  br label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @BFIN_MEM_ACCESS_IDMA, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %3, align 4
  br label %162

74:                                               ; preds = %58
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i32, i32* @L1_DATA_B_START, align 4
  %78 = load i32, i32* @L1_DATA_B_LENGTH, align 4
  %79 = call i64 @in_mem_const(i64 %75, i64 %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @BFIN_MEM_ACCESS_CORE, align 4
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @BFIN_MEM_ACCESS_IDMA, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  store i32 %89, i32* %3, align 4
  br label %162

90:                                               ; preds = %74
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i32, i32* @L2_START, align 4
  %94 = load i32, i32* @L2_LENGTH, align 4
  %95 = call i64 @in_mem_const(i64 %91, i64 %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @BFIN_MEM_ACCESS_CORE, align 4
  store i32 %98, i32* %3, align 4
  br label %162

99:                                               ; preds = %90
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* @SYSMMR_BASE, align 8
  %102 = icmp uge i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @BFIN_MEM_ACCESS_CORE_ONLY, align 4
  store i32 %104, i32* %3, align 4
  br label %162

105:                                              ; preds = %99
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i32, i32* @ASYNC_BANK0_BASE, align 4
  %109 = load i32, i32* @ASYNC_BANK0_SIZE, align 4
  %110 = call i64 @in_mem_const(i64 %106, i64 %107, i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = call i32 @IN_ASYNC(i32 0, i32 0)
  store i32 %113, i32* %3, align 4
  br label %162

114:                                              ; preds = %105
  %115 = load i64, i64* %4, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load i32, i32* @ASYNC_BANK1_BASE, align 4
  %118 = load i32, i32* @ASYNC_BANK1_SIZE, align 4
  %119 = call i64 @in_mem_const(i64 %115, i64 %116, i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = call i32 @IN_ASYNC(i32 1, i32 0)
  store i32 %122, i32* %3, align 4
  br label %162

123:                                              ; preds = %114
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load i32, i32* @ASYNC_BANK2_BASE, align 4
  %127 = load i32, i32* @ASYNC_BANK2_SIZE, align 4
  %128 = call i64 @in_mem_const(i64 %124, i64 %125, i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = call i32 @IN_ASYNC(i32 2, i32 1)
  store i32 %131, i32* %3, align 4
  br label %162

132:                                              ; preds = %123
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* %5, align 8
  %135 = load i32, i32* @ASYNC_BANK3_BASE, align 4
  %136 = load i32, i32* @ASYNC_BANK3_SIZE, align 4
  %137 = call i64 @in_mem_const(i64 %133, i64 %134, i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = call i32 @IN_ASYNC(i32 3, i32 1)
  store i32 %140, i32* %3, align 4
  br label %162

141:                                              ; preds = %132
  %142 = load i64, i64* %4, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i32, i32* @BOOT_ROM_START, align 4
  %145 = load i32, i32* @BOOT_ROM_LENGTH, align 4
  %146 = call i64 @in_mem_const(i64 %142, i64 %143, i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @BFIN_MEM_ACCESS_CORE, align 4
  store i32 %149, i32* %3, align 4
  br label %162

150:                                              ; preds = %141
  %151 = load i64, i64* %4, align 8
  %152 = load i64, i64* %5, align 8
  %153 = load i32, i32* @L1_ROM_START, align 4
  %154 = load i32, i32* @L1_ROM_LENGTH, align 4
  %155 = call i64 @in_mem_const(i64 %151, i64 %152, i32 %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* @BFIN_MEM_ACCESS_DMA, align 4
  store i32 %158, i32* %3, align 4
  br label %162

159:                                              ; preds = %150
  %160 = load i32, i32* @EFAULT, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %159, %157, %148, %139, %130, %121, %112, %103, %97, %88, %72, %56, %39, %23, %13
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @in_mem(i64, i64, i32, i32) #1

declare dso_local i64 @in_mem_const(i64, i64, i32, i32) #1

declare dso_local i32 @IN_ASYNC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
