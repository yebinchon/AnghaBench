; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_smt_free_mbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwmtm.c_smt_free_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_10__* }
%struct.s_smc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [29 x i8] c"free_mbuf: sm_use_count = %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"free SMbuf: mb = %x\00", align 1
@HWM_E0003 = common dso_local global i32 0, align 4
@HWM_E0003_MSG = common dso_local global i32 0, align 4
@mb_free = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_free_mbuf(%struct.s_smc* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %6 = icmp ne %struct.TYPE_10__* %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %11, i8** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @DB_GEN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %14, i32 0, i32 3)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %7
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = bitcast %struct.TYPE_10__* %21 to i8*
  %23 = call i32 @DB_GEN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 0, i32 3)
  %24 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %25 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %34 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %37, align 8
  br label %38

38:                                               ; preds = %20, %7
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %41 = load i32, i32* @HWM_E0003, align 4
  %42 = load i32, i32* @HWM_E0003_MSG, align 4
  %43 = call i32 @SMT_PANIC(%struct.s_smc* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %38
  ret void
}

declare dso_local i32 @DB_GEN(i8*, i8*, i32, i32) #1

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
