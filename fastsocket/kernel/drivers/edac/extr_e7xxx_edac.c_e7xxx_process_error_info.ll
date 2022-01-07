; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e7xxx_edac.c_e7xxx_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e7xxx_edac.c_e7xxx_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.e7xxx_error_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.e7xxx_error_info*, i32)* @e7xxx_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e7xxx_process_error_info(%struct.mem_ctl_info* %0, %struct.e7xxx_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.e7xxx_error_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.e7xxx_error_info* %1, %struct.e7xxx_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %9 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %18 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %19 = call i32 @process_ce(%struct.mem_ctl_info* %17, %struct.e7xxx_error_info* %18)
  br label %20

20:                                               ; preds = %16, %13
  br label %21

21:                                               ; preds = %20, %3
  %22 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %23 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %32 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %33 = call i32 @process_ue(%struct.mem_ctl_info* %31, %struct.e7xxx_error_info* %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %37 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %46 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %52 = call i32 @process_ce_no_info(%struct.mem_ctl_info* %51)
  br label %57

53:                                               ; preds = %44
  %54 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %55 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %56 = call i32 @process_ce(%struct.mem_ctl_info* %54, %struct.e7xxx_error_info* %55)
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %61 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 2
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %70 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %76 = call i32 @process_ue_no_info(%struct.mem_ctl_info* %75)
  br label %81

77:                                               ; preds = %68
  %78 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %79 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %5, align 8
  %80 = call i32 @process_ue(%struct.mem_ctl_info* %78, %struct.e7xxx_error_info* %79)
  br label %81

81:                                               ; preds = %77, %74
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @process_ce(%struct.mem_ctl_info*, %struct.e7xxx_error_info*) #1

declare dso_local i32 @process_ue(%struct.mem_ctl_info*, %struct.e7xxx_error_info*) #1

declare dso_local i32 @process_ce_no_info(%struct.mem_ctl_info*) #1

declare dso_local i32 @process_ue_no_info(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
