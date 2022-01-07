; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_palinfo.c_register_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_palinfo.c_register_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"Implemented AR(s)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"AR(s) with read side-effects\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Implemented CR(s)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"CR(s) with read side-effects\00", align 1
@__const.register_info.info_type = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"%-32s : \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [84 x i8] c"RSE stacked physical registers   : %ld\0ARSE load/store hints             : %ld (%s)\0A\00", align 1
@RSE_HINTS_COUNT = common dso_local global i64 0, align 8
@rse_hints = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"(??)\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"Instruction debug register pairs : %ld\0AData debug register pairs        : %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @register_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_info(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x i8*], align 16
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %4, align 8
  %13 = bitcast [4 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i8*]* @__const.register_info.info_type to i8*), i64 32, i1 false)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %42, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %21 = call i64 @ia64_pal_register_info(i32 %18, i32* %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %88

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %36 = call i8* @bitregister_process(i8* %34, i32* %35, i32 128)
  store i8* %36, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i8*, i8** %4, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %24
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %14

45:                                               ; preds = %14
  %46 = call i64 @ia64_pal_rse_info(i64* %7, %struct.TYPE_3__* %8)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RSE_HINTS_COUNT, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load i8**, i8*** @rse_hints, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  br label %64

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %57
  %65 = phi i8* [ %62, %57 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %63 ]
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i64 0, i64 0), i64 %50, i64 %52, i8* %65)
  %67 = load i8*, i8** %4, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %64, %45
  %71 = call i64 @ia64_pal_debug_info(i64* %9, i64* %10)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %88

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.8, i64 0, i64 0), i64 %76, i64 %77)
  %79 = load i8*, i8** %4, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %4, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %74, %73, %23
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ia64_pal_register_info(i32, i32*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i8* @bitregister_process(i8*, i32*, i32) #2

declare dso_local i64 @ia64_pal_rse_info(i64*, %struct.TYPE_3__*) #2

declare dso_local i64 @ia64_pal_debug_info(i64*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
