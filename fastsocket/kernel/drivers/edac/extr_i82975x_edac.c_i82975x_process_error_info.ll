; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82975x_edac.c_i82975x_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82975x_edac.c_i82975x_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i82975x_error_info = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"UE overwrote CE\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"i82975x UE\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"i82975x CE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.i82975x_error_info*, i32)* @i82975x_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i82975x_process_error_info(%struct.mem_ctl_info* %0, %struct.i82975x_error_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.i82975x_error_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.i82975x_error_info* %1, %struct.i82975x_error_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %19 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %105

28:                                               ; preds = %24
  %29 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %30 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %33 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = xor i32 %31, %34
  %36 = and i32 %35, 3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %40 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %42 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %45 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %28
  %47 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %48 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %52 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %56 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %61 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, -2147483648
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %59, %46
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %67 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %71 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %72 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %70, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %76 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %64
  %81 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %82 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %83 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %81, i32 %84, i32 0, i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %104

87:                                               ; preds = %64
  %88 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %89 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %90 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.i82975x_error_info*, %struct.i82975x_error_info** %6, align 8
  %93 = getelementptr inbounds %struct.i82975x_error_info, %struct.i82975x_error_info* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %10, align 4
  br label %101

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %88, i32 %91, i32 0, i32 %94, i32 %95, i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %80
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %27, %23
  %106 = load i32, i32* %4, align 4
  ret i32 %106
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
