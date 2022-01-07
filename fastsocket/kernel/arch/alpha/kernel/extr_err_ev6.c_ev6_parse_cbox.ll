; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev6.c_ev6_parse_cbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_err_ev6.c_ev6_parse_cbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MEMORY\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"BCACHE\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DCACHE\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"BCACHE PROBE\00", align 1
@__const.ev6_parse_cbox.sourcename = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@__const.ev6_parse_cbox.streamname = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [7 x i8] c"SINGLE\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@__const.ev6_parse_cbox.bitsname = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)], align 16
@MCHK_DISPOSITION_REPORT = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@EV6__C_STAT__SOURCE = common dso_local global i32 0, align 4
@EV6__C_STAT__ISTREAM = common dso_local global i32 0, align 4
@EV6__C_STAT__DOUBLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"%s    Bcache tag parity error\0A\00", align 1
@err_print_prefix = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"%s    Dcache tag parity error\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"%s    Bcache single-bit error on a probe hit\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%s    %s-STREAM %s-BIT ECC error from %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"%s    Address: 0x%016llx\0A    Syndrome[upper.lower]: %02llx.%02llx\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"%s    Block status: %s%s%s%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"SHARED \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"DIRTY \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"VALID \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"PARITY \00", align 1
@EV6__C_STAT__BC_PERR = common dso_local global i32 0, align 4
@EV6__C_STAT__DC_PERR = common dso_local global i32 0, align 4
@EV6__C_STAT__ERRMASK = common dso_local global i32 0, align 4
@EV6__C_STAT__PROBE_BC_ERR0 = common dso_local global i32 0, align 4
@EV6__C_STAT__PROBE_BC_ERR1 = common dso_local global i32 0, align 4
@EV6__C_STAT__SOURCE_BCACHE = common dso_local global i32 0, align 4
@EV6__C_STAT__SOURCE_MEMORY = common dso_local global i32 0, align 4
@EV6__C_STS__DIRTY = common dso_local global i32 0, align 4
@EV6__C_STS__PARITY = common dso_local global i32 0, align 4
@EV6__C_STS__SHARED = common dso_local global i32 0, align 4
@EV6__C_STS__VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @ev6_parse_cbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ev6_parse_cbox(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i8*], align 16
  %15 = alloca [2 x i8*], align 16
  %16 = alloca [2 x i8*], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = bitcast [8 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([8 x i8*]* @__const.ev6_parse_cbox.sourcename to i8*), i64 64, i1 false)
  %22 = bitcast [2 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([2 x i8*]* @__const.ev6_parse_cbox.streamname to i8*), i64 16, i1 false)
  %23 = bitcast [2 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([2 x i8*]* @__const.ev6_parse_cbox.bitsname to i8*), i64 16, i1 false)
  %24 = load i32, i32* @MCHK_DISPOSITION_REPORT, align 4
  store i32 %24, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, 31
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %29, i32* %7, align 4
  br label %121

30:                                               ; preds = %6
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %7, align 4
  br label %121

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @EV6__C_STAT__SOURCE, align 4
  %38 = call i32 @EXTRACT(i32 %36, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @EV6__C_STAT__ISTREAM, align 4
  %41 = call i32 @EXTRACT(i32 %39, i32 %40)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @EV6__C_STAT__DOUBLE, align 4
  %44 = call i32 @EXTRACT(i32 %42, i32 %43)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @err_print_prefix, align 4
  %50 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %18, align 4
  br label %51

51:                                               ; preds = %48, %35
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @err_print_prefix, align 4
  %57 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %56)
  store i32 -1, i32* %18, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 6
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 7
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %58
  %65 = load i32, i32* @err_print_prefix, align 4
  %66 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %65)
  store i32 -1, i32* %18, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load i32, i32* @err_print_prefix, align 4
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i8*], [2 x i8*]* %15, i64 0, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %20, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i8*], [8 x i8*]* %14, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %71, i8* %75, i8* %79, i8* %83)
  br label %85

85:                                               ; preds = %70, %67
  %86 = load i32, i32* @err_print_prefix, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %18, align 4
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %18, align 4
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %119

96:                                               ; preds = %93, %85
  %97 = load i32, i32* @err_print_prefix, align 4
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %103 = load i32, i32* %12, align 4
  %104 = and i32 %103, 2
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %113 = load i32, i32* %12, align 4
  %114 = and i32 %113, 8
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %118 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %97, i8* %102, i8* %107, i8* %112, i8* %117)
  br label %119

119:                                              ; preds = %96, %93
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %33, %28
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @EXTRACT(i32, i32) #2

declare dso_local i32 @printk(i8*, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
