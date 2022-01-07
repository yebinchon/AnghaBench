; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mcbsp.c_omap_mcbsp_dump_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mcbsp.c_omap_mcbsp_dump_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"**** McBSP%d regs ****\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"DRR2:  0x%04x\0A\00", align 1
@DRR2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"DRR1:  0x%04x\0A\00", align 1
@DRR1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"DXR2:  0x%04x\0A\00", align 1
@DXR2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"DXR1:  0x%04x\0A\00", align 1
@DXR1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"SPCR2: 0x%04x\0A\00", align 1
@SPCR2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"SPCR1: 0x%04x\0A\00", align 1
@SPCR1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"RCR2:  0x%04x\0A\00", align 1
@RCR2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"RCR1:  0x%04x\0A\00", align 1
@RCR1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"XCR2:  0x%04x\0A\00", align 1
@XCR2 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"XCR1:  0x%04x\0A\00", align 1
@XCR1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"SRGR2: 0x%04x\0A\00", align 1
@SRGR2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"SRGR1: 0x%04x\0A\00", align 1
@SRGR1 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"PCR0:  0x%04x\0A\00", align 1
@PCR0 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"***********************\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @omap_mcbsp_dump_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_dump_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_mcbsp*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.omap_mcbsp* @id_to_mcbsp_ptr(i32 %4)
  store %struct.omap_mcbsp* %5, %struct.omap_mcbsp** %3, align 8
  %6 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %7 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %10 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i32, i8*, ...) @dev_dbg(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %14 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %17 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DRR2, align 4
  %20 = call i32 @OMAP_MCBSP_READ(i32 %18, i32 %19)
  %21 = call i32 (i32, i8*, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %23 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %26 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DRR1, align 4
  %29 = call i32 @OMAP_MCBSP_READ(i32 %27, i32 %28)
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %32 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %35 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DXR2, align 4
  %38 = call i32 @OMAP_MCBSP_READ(i32 %36, i32 %37)
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %41 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %44 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DXR1, align 4
  %47 = call i32 @OMAP_MCBSP_READ(i32 %45, i32 %46)
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %50 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %53 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SPCR2, align 4
  %56 = call i32 @OMAP_MCBSP_READ(i32 %54, i32 %55)
  %57 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %59 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %62 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SPCR1, align 4
  %65 = call i32 @OMAP_MCBSP_READ(i32 %63, i32 %64)
  %66 = call i32 (i32, i8*, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %67 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %68 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %71 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RCR2, align 4
  %74 = call i32 @OMAP_MCBSP_READ(i32 %72, i32 %73)
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %77 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %80 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RCR1, align 4
  %83 = call i32 @OMAP_MCBSP_READ(i32 %81, i32 %82)
  %84 = call i32 (i32, i8*, ...) @dev_dbg(i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  %85 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %86 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %89 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @XCR2, align 4
  %92 = call i32 @OMAP_MCBSP_READ(i32 %90, i32 %91)
  %93 = call i32 (i32, i8*, ...) @dev_dbg(i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %92)
  %94 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %95 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %98 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @XCR1, align 4
  %101 = call i32 @OMAP_MCBSP_READ(i32 %99, i32 %100)
  %102 = call i32 (i32, i8*, ...) @dev_dbg(i32 %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %101)
  %103 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %104 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %107 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SRGR2, align 4
  %110 = call i32 @OMAP_MCBSP_READ(i32 %108, i32 %109)
  %111 = call i32 (i32, i8*, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %110)
  %112 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %113 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %116 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SRGR1, align 4
  %119 = call i32 @OMAP_MCBSP_READ(i32 %117, i32 %118)
  %120 = call i32 (i32, i8*, ...) @dev_dbg(i32 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %119)
  %121 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %122 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %125 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @PCR0, align 4
  %128 = call i32 @OMAP_MCBSP_READ(i32 %126, i32 %127)
  %129 = call i32 (i32, i8*, ...) @dev_dbg(i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %128)
  %130 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %131 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i8*, ...) @dev_dbg(i32 %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local %struct.omap_mcbsp* @id_to_mcbsp_ptr(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @OMAP_MCBSP_READ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
