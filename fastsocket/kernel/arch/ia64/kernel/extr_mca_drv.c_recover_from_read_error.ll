; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca_drv.c_recover_from_read_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca_drv.c_recover_from_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_sal_os_state = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64*, i64 }
%struct.ia64_psr = type { i64, i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@mca_handler_bhhook = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"target address not valid\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"minstate not valid\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"user memory corruption. kill affected process - recovered.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"kernel context not recovered, iip 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.ia64_sal_os_state*)* @recover_from_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_from_read_error(i32* %0, i32* %1, i32* %2, %struct.ia64_sal_os_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ia64_sal_os_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.ia64_psr*, align 8
  %13 = alloca %struct.ia64_psr*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ia64_sal_os_state* %3, %struct.ia64_sal_os_state** %9, align 8
  %15 = load i64, i64* @mca_handler_bhhook, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %14, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @get_target_identifier(i32* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = call i32 (i8*, ...) @fatal_mca(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %5, align 4
  br label %117

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  %25 = call %struct.TYPE_10__* @peidx_bottom(i32* %24)
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.TYPE_10__* @peidx_bottom(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27, %23
  %35 = call i32 (i8*, ...) @fatal_mca(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %35, i32* %5, align 4
  br label %117

36:                                               ; preds = %27
  %37 = load i32*, i32** %7, align 8
  %38 = call %struct.TYPE_9__* @peidx_minstate_area(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = bitcast i32* %39 to %struct.ia64_psr*
  store %struct.ia64_psr* %40, %struct.ia64_psr** %12, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call %struct.TYPE_9__* @peidx_minstate_area(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = bitcast i32* %43 to %struct.ia64_psr*
  store %struct.ia64_psr* %44, %struct.ia64_psr** %13, align 8
  %45 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %9, align 8
  %46 = getelementptr inbounds %struct.ia64_sal_os_state, %struct.ia64_sal_os_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %11, align 8
  %48 = load %struct.ia64_psr*, %struct.ia64_psr** %12, align 8
  %49 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %36
  %53 = load %struct.ia64_psr*, %struct.ia64_psr** %13, align 8
  %54 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %112

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @mca_recover_range(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %112

63:                                               ; preds = %57, %36
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 7
  store i64 %64, i64* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 8
  store i64 %71, i64* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 9
  store i64 %78, i64* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  store i64 %95, i64* %99, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = bitcast i64* %101 to %struct.ia64_psr*
  store %struct.ia64_psr* %102, %struct.ia64_psr** %13, align 8
  %103 = load %struct.ia64_psr*, %struct.ia64_psr** %13, align 8
  %104 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.ia64_psr*, %struct.ia64_psr** %13, align 8
  %106 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.ia64_psr*, %struct.ia64_psr** %13, align 8
  %108 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %107, i32 0, i32 1
  store i32 1, i32* %108, align 8
  %109 = load %struct.ia64_psr*, %struct.ia64_psr** %13, align 8
  %110 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = call i32 @mca_recovered(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  store i32 %111, i32* %5, align 4
  br label %117

112:                                              ; preds = %57, %52
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i8*, ...) @fatal_mca(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %63, %34, %21
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i64 @get_target_identifier(i32*) #1

declare dso_local i32 @fatal_mca(i8*, ...) #1

declare dso_local %struct.TYPE_10__* @peidx_bottom(i32*) #1

declare dso_local %struct.TYPE_9__* @peidx_minstate_area(i32*) #1

declare dso_local i64 @mca_recover_range(i64) #1

declare dso_local i32 @mca_recovered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
