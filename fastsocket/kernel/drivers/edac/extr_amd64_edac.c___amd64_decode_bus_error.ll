; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c___amd64_decode_bus_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c___amd64_decode_bus_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.mce = type { i32 }

@NBSL_PP_OBS = common dso_local global i64 0, align 8
@F10_NBSL_EXT_ERR_ECC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.mce*)* @__amd64_decode_bus_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__amd64_decode_bus_error(%struct.mem_ctl_info* %0, %struct.mce* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.mce*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.mce* %1, %struct.mce** %4, align 8
  %8 = load %struct.mce*, %struct.mce** %4, align 8
  %9 = getelementptr inbounds %struct.mce, %struct.mce* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @EC(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mce*, %struct.mce** %4, align 8
  %13 = getelementptr inbounds %struct.mce, %struct.mce* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @XEC(i32 %14, i32 31)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.mce*, %struct.mce** %4, align 8
  %17 = getelementptr inbounds %struct.mce, %struct.mce* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 45
  %20 = and i32 %19, 3
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @PP(i32 %22)
  %24 = load i64, i64* @NBSL_PP_OBS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %50

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @F10_NBSL_EXT_ERR_ECC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %50

35:                                               ; preds = %30, %27
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %40 = load %struct.mce*, %struct.mce** %4, align 8
  %41 = call i32 @amd64_handle_ce(%struct.mem_ctl_info* %39, %struct.mce* %40)
  br label %50

42:                                               ; preds = %35
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %47 = load %struct.mce*, %struct.mce** %4, align 8
  %48 = call i32 @amd64_handle_ue(%struct.mem_ctl_info* %46, %struct.mce* %47)
  br label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %26, %34, %49, %38
  ret void
}

declare dso_local i32 @EC(i32) #1

declare dso_local i64 @XEC(i32, i32) #1

declare dso_local i64 @PP(i32) #1

declare dso_local i32 @amd64_handle_ce(%struct.mem_ctl_info*, %struct.mce*) #1

declare dso_local i32 @amd64_handle_ue(%struct.mem_ctl_info*, %struct.mce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
