; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_sysinfo.c_get_cpu_capability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_sysinfo.c_get_cpu_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo_1_2_2 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cpu_capability(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sysinfo_1_2_2*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i64 @get_zeroed_page(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.sysinfo_1_2_2*
  store %struct.sysinfo_1_2_2* %9, %struct.sysinfo_1_2_2** %4, align 8
  %10 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %4, align 8
  %11 = icmp ne %struct.sysinfo_1_2_2* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %4, align 8
  %17 = call i32 @stsi(%struct.sysinfo_1_2_2* %16, i32 1, i32 2, i32 2)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %28

23:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  %24 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %4, align 8
  %25 = getelementptr inbounds %struct.sysinfo_1_2_2, %struct.sysinfo_1_2_2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %3, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %22
  %29 = load %struct.sysinfo_1_2_2*, %struct.sysinfo_1_2_2** %4, align 8
  %30 = ptrtoint %struct.sysinfo_1_2_2* %29 to i64
  %31 = call i32 @free_page(i64 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @stsi(%struct.sysinfo_1_2_2*, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
