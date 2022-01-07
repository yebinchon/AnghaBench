; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.e752x_error_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.e752x_error_info*, i32)* @e752x_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e752x_process_error_info(%struct.mem_ctl_info* %0, %struct.e752x_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.e752x_error_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.e752x_error_info* %1, %struct.e752x_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.e752x_error_info*, %struct.e752x_error_info** %5, align 8
  %11 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 18
  %14 = and i32 %13, 1023
  store i32 %14, i32* %7, align 4
  %15 = load %struct.e752x_error_info*, %struct.e752x_error_info** %5, align 8
  %16 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 4
  %19 = and i32 %18, 2047
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @global_error(i32 1, i32 %23, i32* %9, i32 %24)
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @global_error(i32 0, i32 %30, i32* %9, i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.e752x_error_info*, %struct.e752x_error_info** %5, align 8
  %35 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 18
  %38 = and i32 %37, 1023
  store i32 %38, i32* %7, align 4
  %39 = load %struct.e752x_error_info*, %struct.e752x_error_info** %5, align 8
  %40 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 4
  %43 = and i32 %42, 2047
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @global_error(i32 1, i32 %47, i32* %9, i32 %48)
  br label %50

50:                                               ; preds = %46, %33
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @global_error(i32 0, i32 %54, i32* %9, i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.e752x_error_info*, %struct.e752x_error_info** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @e752x_check_hub_interface(%struct.e752x_error_info* %58, i32* %9, i32 %59)
  %61 = load %struct.e752x_error_info*, %struct.e752x_error_info** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @e752x_check_ns_interface(%struct.e752x_error_info* %61, i32* %9, i32 %62)
  %64 = load %struct.e752x_error_info*, %struct.e752x_error_info** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @e752x_check_sysbus(%struct.e752x_error_info* %64, i32* %9, i32 %65)
  %67 = load %struct.e752x_error_info*, %struct.e752x_error_info** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @e752x_check_membuf(%struct.e752x_error_info* %67, i32* %9, i32 %68)
  %70 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %71 = load %struct.e752x_error_info*, %struct.e752x_error_info** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @e752x_check_dram(%struct.mem_ctl_info* %70, %struct.e752x_error_info* %71, i32* %9, i32 %72)
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32 @global_error(i32, i32, i32*, i32) #1

declare dso_local i32 @e752x_check_hub_interface(%struct.e752x_error_info*, i32*, i32) #1

declare dso_local i32 @e752x_check_ns_interface(%struct.e752x_error_info*, i32*, i32) #1

declare dso_local i32 @e752x_check_sysbus(%struct.e752x_error_info*, i32*, i32) #1

declare dso_local i32 @e752x_check_membuf(%struct.e752x_error_info*, i32*, i32) #1

declare dso_local i32 @e752x_check_dram(%struct.mem_ctl_info*, %struct.e752x_error_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
