; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_drvfbi.c_read_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_drvfbi.c_read_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_7__ = type { i8** }
%struct.TYPE_5__ = type { i8* }

@B2_CONN_TYP = common dso_local global i64 0, align 8
@B2_PMD_TYP = common dso_local global i64 0, align 8
@PB = common dso_local global i64 0, align 8
@PMD_SK_CONN = common dso_local global i64 0, align 8
@PA = common dso_local global i64 0, align 8
@PMD_SK_PMD = common dso_local global i64 0, align 8
@B2_MAC_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_address(%struct.s_smc* %0, i8** %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i64, i64* @B2_CONN_TYP, align 8
  %9 = call i32 @ADDR(i64 %8)
  %10 = call i8* @inp(i32 %9)
  %11 = ptrtoint i8* %10 to i8
  store i8 %11, i8* %5, align 1
  %12 = load i64, i64* @B2_PMD_TYP, align 8
  %13 = call i32 @ADDR(i64 %12)
  %14 = call i8* @inp(i32 %13)
  %15 = ptrtoint i8* %14 to i8
  store i8 %15, i8* %6, align 1
  %16 = load i8, i8* %5, align 1
  %17 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %18 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i64, i64* @PB, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* @PMD_SK_CONN, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 %16, i8* %25, align 1
  %26 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %27 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i64, i64* @PA, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* @PMD_SK_CONN, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 %16, i8* %34, align 1
  %35 = load i8, i8* %6, align 1
  %36 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %37 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* @PB, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* @PMD_SK_PMD, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %35, i8* %44, align 1
  %45 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %46 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i64, i64* @PA, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* @PMD_SK_PMD, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 %35, i8* %53, align 1
  %54 = load i8**, i8*** %4, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %92

56:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %88, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load i8**, i8*** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %67 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  store i8* %65, i8** %73, align 8
  %74 = load i8**, i8*** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @bitrev8(i8* %78)
  %80 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %81 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  store i8* %79, i8** %87, align 8
  br label %88

88:                                               ; preds = %60
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %57

91:                                               ; preds = %57
  br label %126

92:                                               ; preds = %2
  %93 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %94 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %97 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = bitcast %struct.TYPE_7__* %95 to i8*
  %100 = bitcast %struct.TYPE_7__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %123, %92
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 6
  br i1 %103, label %104, label %126

104:                                              ; preds = %101
  %105 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %106 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @bitrev8(i8* %113)
  %115 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %116 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* %114, i8** %122, align 8
  br label %123

123:                                              ; preds = %104
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %101

126:                                              ; preds = %91, %101
  ret void
}

declare dso_local i8* @inp(i32) #1

declare dso_local i32 @ADDR(i64) #1

declare dso_local i8* @bitrev8(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
