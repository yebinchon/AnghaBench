; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_x38_edac.c_x38_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_x38_edac.c_x38_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.x38_error_info = type { i32, i32, i32* }

@X38_ERRSTS_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"UE overwrote CE\00", align 1
@x38_channel_num = common dso_local global i32 0, align 4
@X38_ECCERRLOG_UE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"x38 UE\00", align 1
@X38_ECCERRLOG_CE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"x38 CE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.x38_error_info*)* @x38_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x38_process_error_info(%struct.mem_ctl_info* %0, %struct.x38_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.x38_error_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.x38_error_info* %1, %struct.x38_error_info** %4, align 8
  %7 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %8 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @X38_ERRSTS_BITS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %74

14:                                               ; preds = %2
  %15 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %16 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %19 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %17, %20
  %22 = load i32, i32* @X38_ERRSTS_BITS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %27 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %29 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %32 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %25, %14
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %71, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @x38_channel_num, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = load %struct.x38_error_info*, %struct.x38_error_info** %4, align 8
  %40 = getelementptr inbounds %struct.x38_error_info, %struct.x38_error_info* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @X38_ECCERRLOG_UE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @eccerrlog_row(i32 %52, i32 %53)
  %55 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %51, i32 0, i32 0, i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %70

56:                                               ; preds = %38
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @X38_ECCERRLOG_CE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @eccerrlog_syndrome(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @eccerrlog_row(i32 %65, i32 %66)
  %68 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %62, i32 0, i32 0, i32 %64, i32 %67, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %61, %56
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %34

74:                                               ; preds = %13, %34
  ret void
}

declare dso_local i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info*, i8*) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i8*) #1

declare dso_local i32 @eccerrlog_row(i32, i32) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @eccerrlog_syndrome(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
