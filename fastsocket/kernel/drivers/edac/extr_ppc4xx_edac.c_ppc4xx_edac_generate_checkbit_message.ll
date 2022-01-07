; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_generate_checkbit_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_generate_checkbit_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.ppc4xx_edac_pdata* }
%struct.ppc4xx_edac_pdata = type { i32 }
%struct.ppc4xx_ecc_status = type { i32 }

@SDRAM_ECCES_CKBER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ECC0:3\00", align 1
@SDRAM_MCOPT1 = common dso_local global i32 0, align 4
@SDRAM_MCOPT1_WDTH_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ECC4:8\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ECC0:8\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Checkbit Error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*, i8*, i64)* @ppc4xx_edac_generate_checkbit_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_generate_checkbit_message(%struct.mem_ctl_info* %0, %struct.ppc4xx_ecc_status* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.ppc4xx_ecc_status*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ppc4xx_edac_pdata*, align 8
  %10 = alloca i8*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.ppc4xx_ecc_status* %1, %struct.ppc4xx_ecc_status** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %12, align 8
  store %struct.ppc4xx_edac_pdata* %13, %struct.ppc4xx_edac_pdata** %9, align 8
  store i8* null, i8** %10, align 8
  %14 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %6, align 8
  %15 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SDRAM_ECCES_CKBER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %33 [
    i32 130, label %19
    i32 133, label %20
    i32 131, label %21
    i32 132, label %32
  ]

19:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %34

20:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %34

21:                                               ; preds = %4
  %22 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %9, align 8
  %23 = getelementptr inbounds %struct.ppc4xx_edac_pdata, %struct.ppc4xx_edac_pdata* %22, i32 0, i32 0
  %24 = load i32, i32* @SDRAM_MCOPT1, align 4
  %25 = call i32 @mfsdram(i32* %23, i32 %24)
  %26 = load i32, i32* @SDRAM_MCOPT1_WDTH_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %30 [
    i32 129, label %28
    i32 128, label %29
  ]

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %31

29:                                               ; preds = %21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %31

30:                                               ; preds = %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %31

31:                                               ; preds = %30, %29, %28
  br label %34

32:                                               ; preds = %4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %34

33:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %34

34:                                               ; preds = %33, %32, %31, %20, %19
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @snprintf(i8* %35, i64 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %37)
  ret i32 %38
}

declare dso_local i32 @mfsdram(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
