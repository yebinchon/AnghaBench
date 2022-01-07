; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_generate_plb_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_generate_plb_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.ppc4xx_ecc_status = type { i32 }

@SDRAM_BESR_MASK = common dso_local global i32 0, align 4
@SDRAM_BESR_M0ET_MASK = common dso_local global i32 0, align 4
@SDRAM_BESR_M0ET_NONE = common dso_local global i32 0, align 4
@SDRAM_BESR_M0RW_MASK = common dso_local global i32 0, align 4
@SDRAM_BESR_M0RW_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s error w/ PLB master %u \22%s\22; \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@SDRAM_PLB_M0ID_FIRST = common dso_local global i32 0, align 4
@SDRAM_PLB_M0ID_LAST = common dso_local global i32 0, align 4
@ppc4xx_plb_masters = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*, i8*, i64)* @ppc4xx_edac_generate_plb_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_generate_plb_message(%struct.mem_ctl_info* %0, %struct.ppc4xx_ecc_status* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca %struct.ppc4xx_ecc_status*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %6, align 8
  store %struct.ppc4xx_ecc_status* %1, %struct.ppc4xx_ecc_status** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %7, align 8
  %13 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SDRAM_BESR_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %65

19:                                               ; preds = %4
  %20 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %7, align 8
  %21 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SDRAM_BESR_M0ET_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @SDRAM_BESR_M0ET_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %65

28:                                               ; preds = %19
  %29 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %7, align 8
  %30 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SDRAM_BESR_M0RW_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @SDRAM_BESR_M0RW_READ, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %7, align 8
  %38 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SDRAM_BESR_M0ID_DECODE(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @SDRAM_PLB_M0ID_FIRST, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %28
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SDRAM_PLB_M0ID_LAST, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i8**, i8*** @ppc4xx_plb_masters, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  br label %62

61:                                               ; preds = %51, %28
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i8* [ %60, %55 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %61 ]
  %64 = call i32 @snprintf(i8* %41, i64 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47, i8* %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %27, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @SDRAM_BESR_M0ID_DECODE(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
