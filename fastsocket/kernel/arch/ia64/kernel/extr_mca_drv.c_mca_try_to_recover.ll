; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca_drv.c_mca_try_to_recover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca_drv.c_mca_try_to_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_sal_os_state = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@proc_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Too Many Errors\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Weird SAL record\00", align 1
@bus_check = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"global MCA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ia64_sal_os_state*)* @mca_try_to_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mca_try_to_recover(i8* %0, %struct.ia64_sal_os_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ia64_sal_os_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ia64_sal_os_state* %1, %struct.ia64_sal_os_state** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @mca_make_slidx(i8* %11, %struct.TYPE_6__* %8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @proc_err, align 4
  %14 = call i32 @slidx_count(%struct.TYPE_6__* %8, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @fatal_mca(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @fatal_mca(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %27 = call %struct.TYPE_7__* @slidx_first_entry(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = call i32 @mca_make_peidx(i32* %30, i32* %9)
  %32 = load i32, i32* @bus_check, align 4
  %33 = call i32 @peidx_check_info(i32* %9, i32 %32, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %5, align 8
  %35 = call i64 @is_mca_global(i32* %9, i32* %10, %struct.ia64_sal_os_state* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 @fatal_mca(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %5, align 8
  %42 = call i32 @recover_from_processor_error(i32 %40, %struct.TYPE_6__* %8, i32* %9, i32* %10, %struct.ia64_sal_os_state* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %37, %22, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mca_make_slidx(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @slidx_count(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fatal_mca(i8*) #1

declare dso_local i32 @mca_make_peidx(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @slidx_first_entry(i32*) #1

declare dso_local i32 @peidx_check_info(i32*, i32, i32) #1

declare dso_local i64 @is_mca_global(i32*, i32*, %struct.ia64_sal_os_state*) #1

declare dso_local i32 @recover_from_processor_error(i32, %struct.TYPE_6__*, i32*, i32*, %struct.ia64_sal_os_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
