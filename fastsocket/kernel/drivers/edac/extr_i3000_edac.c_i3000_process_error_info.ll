; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i3000_edac.c_i3000_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i3000_edac.c_i3000_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i3000_error_info = type { i32, i32, i32, i32, i32 }

@I3000_ERRSTS_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"UE overwrote CE\00", align 1
@I3000_ERRSTS_UE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"i3000 UE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"i3000 CE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.i3000_error_info*, i32)* @i3000_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3000_process_error_info(%struct.mem_ctl_info* %0, %struct.i3000_error_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.i3000_error_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.i3000_error_info* %1, %struct.i3000_error_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %21 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @I3000_ERRSTS_BITS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %98

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %98

31:                                               ; preds = %27
  %32 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %33 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %36 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %34, %37
  %39 = load i32, i32* @I3000_ERRSTS_BITS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %44 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %46 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %49 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %31
  %51 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %52 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %55 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @deap_pfn(i32 %53, i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %59 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @deap_offset(i32 %60)
  store i64 %61, i64* %12, align 8
  %62 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %63 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @deap_channel(i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %66, i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %70 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @I3000_ERRSTS_UE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %50
  %76 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %76, i64 %77, i64 %78, i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %97

81:                                               ; preds = %50
  %82 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.i3000_error_info*, %struct.i3000_error_info** %6, align 8
  %86 = getelementptr inbounds %struct.i3000_error_info, %struct.i3000_error_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %10, align 4
  br label %94

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ]
  %96 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %82, i64 %83, i64 %84, i32 %87, i32 %88, i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %75
  store i32 1, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %30, %26
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info*, i8*) #1

declare dso_local i64 @deap_pfn(i32, i32) #1

declare dso_local i64 @deap_offset(i32) #1

declare dso_local i32 @deap_channel(i32) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i64) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i64, i64, i32, i8*) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i64, i64, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
