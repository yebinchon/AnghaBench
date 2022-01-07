; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd76x_edac.c_amd76x_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd76x_edac.c_amd76x_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.amd76x_error_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.amd76x_error_info*, i32)* @amd76x_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd76x_process_error_info(%struct.mem_ctl_info* %0, %struct.amd76x_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.amd76x_error_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.amd76x_error_info* %1, %struct.amd76x_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.amd76x_error_info*, %struct.amd76x_error_info** %5, align 8
  %10 = getelementptr inbounds %struct.amd76x_error_info, %struct.amd76x_error_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BIT(i32 8)
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load %struct.amd76x_error_info*, %struct.amd76x_error_info** %5, align 8
  %20 = getelementptr inbounds %struct.amd76x_error_info, %struct.amd76x_error_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 15
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %27 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %35 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %25, i32 %32, i32 0, i64 %33, i32 %36)
  br label %38

38:                                               ; preds = %18, %15
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.amd76x_error_info*, %struct.amd76x_error_info** %5, align 8
  %41 = getelementptr inbounds %struct.amd76x_error_info, %struct.amd76x_error_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @BIT(i32 9)
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load %struct.amd76x_error_info*, %struct.amd76x_error_info** %5, align 8
  %51 = getelementptr inbounds %struct.amd76x_error_info, %struct.amd76x_error_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %8, align 8
  %55 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %56 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %57 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %65 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %55, i32 %62, i32 0, i32 0, i64 %63, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %49, %46
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i64, i32) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
