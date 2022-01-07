; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_check_dram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_check_dram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.e752x_error_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.e752x_error_info*, i32*, i32)* @e752x_check_dram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e752x_check_dram(%struct.mem_ctl_info* %0, %struct.e752x_error_info* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.e752x_error_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.e752x_error_info* %1, %struct.e752x_error_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %12 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %15 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 257
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %4
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %24 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %27 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @process_ce(%struct.mem_ctl_info* %21, i32 %22, i32 %25, i32 %28, i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %20, %4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 257
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %40 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %43 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @process_ce(%struct.mem_ctl_info* %37, i32 %38, i32 %41, i32 %44, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %36, %32
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 16448
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @process_ue_no_info_wr(%struct.mem_ctl_info* %53, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 16448
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @process_ue_no_info_wr(%struct.mem_ctl_info* %62, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 8224
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %74 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @process_ded_retry(%struct.mem_ctl_info* %71, i32 %72, i32 %75, i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %66
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 8224
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %87 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @process_ded_retry(%struct.mem_ctl_info* %84, i32 %85, i32 %88, i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %79
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, 2056
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @process_threshold_ce(%struct.mem_ctl_info* %97, i32 %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %92
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, 2056
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @process_threshold_ce(%struct.mem_ctl_info* %107, i32 %108, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %102
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, 1542
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %120 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %123 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @process_ue(%struct.mem_ctl_info* %117, i32 %118, i32 %121, i32 %124, i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %116, %112
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, 1542
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %136 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.e752x_error_info*, %struct.e752x_error_info** %6, align 8
  %139 = getelementptr inbounds %struct.e752x_error_info, %struct.e752x_error_info* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @process_ue(%struct.mem_ctl_info* %133, i32 %134, i32 %137, i32 %140, i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %132, %128
  ret void
}

declare dso_local i32 @process_ce(%struct.mem_ctl_info*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @process_ue_no_info_wr(%struct.mem_ctl_info*, i32*, i32) #1

declare dso_local i32 @process_ded_retry(%struct.mem_ctl_info*, i32, i32, i32*, i32) #1

declare dso_local i32 @process_threshold_ce(%struct.mem_ctl_info*, i32, i32*, i32) #1

declare dso_local i32 @process_ue(%struct.mem_ctl_info*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
