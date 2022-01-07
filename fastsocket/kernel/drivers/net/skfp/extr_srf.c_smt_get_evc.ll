; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_srf.c_smt_get_evc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_srf.c_smt_get_evc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_srf_evc = type { i32, i32 }
%struct.s_smc = type { %struct.s_srf_evc* }

@MAX_EVCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s_srf_evc* (%struct.s_smc*, i32, i32)* @smt_get_evc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s_srf_evc* @smt_get_evc(%struct.s_smc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s_srf_evc*, align 8
  %5 = alloca %struct.s_smc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s_srf_evc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.s_smc*, %struct.s_smc** %5, align 8
  %11 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %10, i32 0, i32 0
  %12 = load %struct.s_srf_evc*, %struct.s_srf_evc** %11, align 8
  store %struct.s_srf_evc* %12, %struct.s_srf_evc** %9, align 8
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MAX_EVCS, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %19 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %25 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  store %struct.s_srf_evc* %30, %struct.s_srf_evc** %4, align 8
  br label %38

31:                                               ; preds = %23, %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load %struct.s_srf_evc*, %struct.s_srf_evc** %9, align 8
  %36 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %35, i32 1
  store %struct.s_srf_evc* %36, %struct.s_srf_evc** %9, align 8
  br label %13

37:                                               ; preds = %13
  store %struct.s_srf_evc* null, %struct.s_srf_evc** %4, align 8
  br label %38

38:                                               ; preds = %37, %29
  %39 = load %struct.s_srf_evc*, %struct.s_srf_evc** %4, align 8
  ret %struct.s_srf_evc* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
