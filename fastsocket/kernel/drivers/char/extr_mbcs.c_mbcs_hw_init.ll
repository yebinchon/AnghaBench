; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbcs_soft = type { i8* }
%union.cm_control = type { i32 }
%union.cm_req_timeout = type { i32 }

@MBCS_CM_REQ_TOUT = common dso_local global i32 0, align 4
@MBCS_CM_CONTROL_REQ_TOUT_MASK = common dso_local global i32 0, align 4
@MBCS_CM_ERR_STAT = common dso_local global i32 0, align 4
@MBCS_CM_CLR_ERR_STAT = common dso_local global i32 0, align 4
@MBCS_CM_ERROR_DETAIL1 = common dso_local global i32 0, align 4
@MBCS_CM_ERR_INT_EN = common dso_local global i32 0, align 4
@MBCS_CM_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbcs_soft*)* @mbcs_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbcs_hw_init(%struct.mbcs_soft* %0) #0 {
  %2 = alloca %struct.mbcs_soft*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %union.cm_control, align 4
  %5 = alloca %union.cm_req_timeout, align 4
  %6 = alloca i32, align 4
  store %struct.mbcs_soft* %0, %struct.mbcs_soft** %2, align 8
  %7 = load %struct.mbcs_soft*, %struct.mbcs_soft** %2, align 8
  %8 = getelementptr inbounds %struct.mbcs_soft, %struct.mbcs_soft* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @MBCS_CM_REQ_TOUT, align 4
  %12 = call i8* @MBCS_MMR_GET(i8* %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  %14 = bitcast %union.cm_req_timeout* %5 to i32*
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @MBCS_CM_CONTROL_REQ_TOUT_MASK, align 4
  %16 = bitcast %union.cm_req_timeout* %5 to i32*
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @MBCS_CM_REQ_TOUT, align 4
  %19 = bitcast %union.cm_req_timeout* %5 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MBCS_MMR_SET(i8* %17, i32 %18, i32 %20)
  %22 = load %struct.mbcs_soft*, %struct.mbcs_soft** %2, align 8
  %23 = call i32 @mbcs_gscr_pioaddr_set(%struct.mbcs_soft* %22)
  %24 = load %struct.mbcs_soft*, %struct.mbcs_soft** %2, align 8
  %25 = call i32 @mbcs_debug_pioaddr_set(%struct.mbcs_soft* %24)
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @MBCS_CM_ERR_STAT, align 4
  %28 = call i8* @MBCS_MMR_GET(i8* %26, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @MBCS_CM_CLR_ERR_STAT, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @MBCS_MMR_SET(i8* %30, i32 %31, i32 %32)
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* @MBCS_CM_ERROR_DETAIL1, align 4
  %36 = call i32 @MBCS_MMR_ZERO(i8* %34, i32 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @MBCS_CM_ERR_INT_EN, align 4
  %39 = call i32 @MBCS_MMR_SET(i8* %37, i32 %38, i32 -8519425)
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %42 = call i8* @MBCS_MMR_GET(i8* %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = bitcast %union.cm_control* %4 to i32*
  store i32 %43, i32* %44, align 4
  %45 = bitcast %union.cm_control* %4 to i32*
  store i32 1, i32* %45, align 4
  %46 = bitcast %union.cm_control* %4 to i32*
  store i32 1, i32* %46, align 4
  %47 = bitcast %union.cm_control* %4 to i32*
  store i32 1, i32* %47, align 4
  %48 = bitcast %union.cm_control* %4 to i32*
  store i32 1, i32* %48, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* @MBCS_CM_CONTROL, align 4
  %51 = bitcast %union.cm_control* %4 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @MBCS_MMR_SET(i8* %49, i32 %50, i32 %52)
  ret i32 0
}

declare dso_local i8* @MBCS_MMR_GET(i8*, i32) #1

declare dso_local i32 @MBCS_MMR_SET(i8*, i32, i32) #1

declare dso_local i32 @mbcs_gscr_pioaddr_set(%struct.mbcs_soft*) #1

declare dso_local i32 @mbcs_debug_pioaddr_set(%struct.mbcs_soft*) #1

declare dso_local i32 @MBCS_MMR_ZERO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
