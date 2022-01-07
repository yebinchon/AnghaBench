; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82875p_edac.c_i82875p_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82875p_edac.c_i82875p_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i82875p_error_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"UE overwrote CE\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"i82875p UE\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"i82875p CE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.i82875p_error_info*, i32)* @i82875p_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i82875p_process_error_info(%struct.mem_ctl_info* %0, %struct.i82875p_error_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.i82875p_error_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.i82875p_error_info* %1, %struct.i82875p_error_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %18 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 129
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %89

27:                                               ; preds = %23
  %28 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %29 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %32 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %30, %33
  %35 = and i32 %34, 129
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %39 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %41 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %44 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %37, %27
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %48 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %52 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %53 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %57 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 128
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %45
  %62 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %63 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %64 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %62, i32 %65, i32 0, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %88

68:                                               ; preds = %45
  %69 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %70 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %71 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %74 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.i82875p_error_info*, %struct.i82875p_error_info** %6, align 8
  %81 = getelementptr inbounds %struct.i82875p_error_info, %struct.i82875p_error_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 1
  br label %85

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %79
  %86 = phi i32 [ %83, %79 ], [ 0, %84 ]
  %87 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %69, i32 %72, i32 0, i32 %75, i32 %76, i32 %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %61
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %26, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info*, i8*) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i8*) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
