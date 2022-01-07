; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev6.c_ev6_parse_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev6.c_ev6_parse_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCHK_DISPOSITION_REPORT = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s    Dcache tag parity error on probe\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s    Dcache tag parity error - pipe 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s    Dcache tag parity error - pipe 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"%s    ECC error occurred on a store\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s    ECC error occurred on a %s load\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"speculative \00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s    Dcache second error\0A\00", align 1
@EV6__D_STAT__ECC_ERR_LD = common dso_local global i32 0, align 4
@EV6__D_STAT__ECC_ERR_ST = common dso_local global i32 0, align 4
@EV6__D_STAT__ERRMASK = common dso_local global i32 0, align 4
@EV6__D_STAT__SEO = common dso_local global i32 0, align 4
@EV6__D_STAT__TPERR_P0 = common dso_local global i32 0, align 4
@EV6__D_STAT__TPERR_P1 = common dso_local global i32 0, align 4
@EV6__MM_STAT__DC_TAG_PERR = common dso_local global i32 0, align 4
@EV6__MM_STAT__ERRMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ev6_parse_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ev6_parse_mbox(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @MCHK_DISPOSITION_REPORT, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 31
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 1024
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %22, i32* %5, align 4
  br label %82

23:                                               ; preds = %16, %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %82

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, 1024
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @err_print_prefix, align 4
  %35 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = and i64 %38, 1
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @err_print_prefix, align 4
  %43 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, 2
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @err_print_prefix, align 4
  %51 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = and i64 %54, 4
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @err_print_prefix, align 4
  %59 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %62, 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* @err_print_prefix, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)
  %71 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %66, i8* %70)
  br label %72

72:                                               ; preds = %65, %60
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = and i64 %74, 16
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @err_print_prefix, align 4
  %79 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %26, %21
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
