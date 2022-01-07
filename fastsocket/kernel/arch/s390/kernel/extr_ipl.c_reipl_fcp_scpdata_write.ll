; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_fcp_scpdata_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_fcp_scpdata_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@DIAG308_SCPDATA_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@reipl_block_fcp = common dso_local global %struct.TYPE_8__* null, align 8
@IPL_PARM_BLK_FCP_LEN = common dso_local global i64 0, align 8
@IPL_PARM_BLK0_FCP_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @reipl_fcp_scpdata_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reipl_fcp_scpdata_write(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %12, align 8
  %17 = icmp ult i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %7, align 8
  br label %90

21:                                               ; preds = %6
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @DIAG308_SCPDATA_SIZE, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* @ENOSPC, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %7, align 8
  br label %90

28:                                               ; preds = %21
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @DIAG308_SCPDATA_SIZE, align 8
  %31 = load i64, i64* %12, align 8
  %32 = sub i64 %30, %31
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* @DIAG308_SCPDATA_SIZE, align 8
  %36 = load i64, i64* %12, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @reipl_block_fcp, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @memcpy(i64 %43, i8* %46, i64 %47)
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %15, align 8
  %53 = urem i64 %52, 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %38
  %56 = load i64, i64* %15, align 8
  %57 = urem i64 %56, 8
  %58 = sub i64 8, %57
  store i64 %58, i64* %14, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @reipl_block_fcp, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %15, align 8
  %65 = add i64 %63, %64
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @memset(i64 %65, i32 0, i64 %66)
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %15, align 8
  br label %71

71:                                               ; preds = %55, %38
  %72 = load i64, i64* %15, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @reipl_block_fcp, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  %77 = load i64, i64* @IPL_PARM_BLK_FCP_LEN, align 8
  %78 = load i64, i64* %15, align 8
  %79 = add i64 %77, %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @reipl_block_fcp, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  %83 = load i64, i64* @IPL_PARM_BLK0_FCP_LEN, align 8
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @reipl_block_fcp, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %71, %25, %18
  %91 = load i64, i64* %7, align 8
  ret i64 %91
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
