; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_get_pe_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_get_pe_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_early_enable_info = type { i32, i32 }

@ibm_get_config_addr_info2 = common dso_local global i64 0, align 8
@RTAS_UNKNOWN_SERVICE = common dso_local global i64 0, align 8
@ibm_get_config_addr_info = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.eeh_early_enable_info*)* @get_pe_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pe_addr(i32 %0, %struct.eeh_early_enable_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.eeh_early_enable_info*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.eeh_early_enable_info* %1, %struct.eeh_early_enable_info** %5, align 8
  %8 = load i64, i64* @ibm_get_config_addr_info2, align 8
  %9 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  %12 = load i64, i64* @ibm_get_config_addr_info2, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.eeh_early_enable_info*, %struct.eeh_early_enable_info** %5, align 8
  %16 = getelementptr inbounds %struct.eeh_early_enable_info, %struct.eeh_early_enable_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.eeh_early_enable_info*, %struct.eeh_early_enable_info** %5, align 8
  %19 = getelementptr inbounds %struct.eeh_early_enable_info, %struct.eeh_early_enable_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rtas_call(i64 %12, i32 4, i32 2, i32* %13, i32 %14, i32 %17, i32 %20, i32 1)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %11
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %11
  store i32 0, i32* %3, align 4
  br label %68

29:                                               ; preds = %24
  %30 = load i64, i64* @ibm_get_config_addr_info2, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.eeh_early_enable_info*, %struct.eeh_early_enable_info** %5, align 8
  %34 = getelementptr inbounds %struct.eeh_early_enable_info, %struct.eeh_early_enable_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.eeh_early_enable_info*, %struct.eeh_early_enable_info** %5, align 8
  %37 = getelementptr inbounds %struct.eeh_early_enable_info, %struct.eeh_early_enable_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rtas_call(i64 %30, i32 4, i32 2, i32* %31, i32 %32, i32 %35, i32 %38, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %68

43:                                               ; preds = %29
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %2
  %47 = load i64, i64* @ibm_get_config_addr_info, align 8
  %48 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i64, i64* @ibm_get_config_addr_info, align 8
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.eeh_early_enable_info*, %struct.eeh_early_enable_info** %5, align 8
  %55 = getelementptr inbounds %struct.eeh_early_enable_info, %struct.eeh_early_enable_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.eeh_early_enable_info*, %struct.eeh_early_enable_info** %5, align 8
  %58 = getelementptr inbounds %struct.eeh_early_enable_info, %struct.eeh_early_enable_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rtas_call(i64 %51, i32 4, i32 2, i32* %52, i32 %53, i32 %56, i32 %59, i32 0)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %68

64:                                               ; preds = %50
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %63, %43, %42, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @rtas_call(i64, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
