; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_get_rhf_errstring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_get_rhf_errstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINIPATH_RHF_H_ICRCERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"icrcerr \00", align 1
@INFINIPATH_RHF_H_VCRCERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vcrcerr \00", align 1
@INFINIPATH_RHF_H_PARITYERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"parityerr \00", align 1
@INFINIPATH_RHF_H_LENERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"lenerr \00", align 1
@INFINIPATH_RHF_H_MTUERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"mtuerr \00", align 1
@INFINIPATH_RHF_H_IHDRERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"ipathhdrerr \00", align 1
@INFINIPATH_RHF_H_TIDERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"tiderr \00", align 1
@INFINIPATH_RHF_H_MKERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"invalid ipathhdr \00", align 1
@INFINIPATH_RHF_H_IBERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"iberr \00", align 1
@INFINIPATH_RHF_L_SWA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"swA \00", align 1
@INFINIPATH_RHF_L_SWB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"swB \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @get_rhf_errstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rhf_errstring(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  store i8 0, i8* %7, align 1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @INFINIPATH_RHF_H_ICRCERR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @strlcat(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @INFINIPATH_RHF_H_VCRCERR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @strlcat(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @INFINIPATH_RHF_H_PARITYERR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @strlcat(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @INFINIPATH_RHF_H_LENERR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @strlcat(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @INFINIPATH_RHF_H_MTUERR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @strlcat(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @INFINIPATH_RHF_H_IHDRERR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @strlcat(i8* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @INFINIPATH_RHF_H_TIDERR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @strlcat(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @INFINIPATH_RHF_H_MKERR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @strlcat(i8* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @INFINIPATH_RHF_H_IBERR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @strlcat(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @INFINIPATH_RHF_L_SWA, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @strlcat(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @INFINIPATH_RHF_L_SWB, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8*, i8** %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @strlcat(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %102, %97
  ret void
}

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
