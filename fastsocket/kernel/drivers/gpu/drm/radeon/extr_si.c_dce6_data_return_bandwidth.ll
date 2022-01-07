; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_dce6_data_return_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_dce6_data_return_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce6_wm_params = type { i32 }
%struct.TYPE_7__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce6_wm_params*)* @dce6_data_return_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce6_data_return_bandwidth(%struct.dce6_wm_params* %0) #0 {
  %2 = alloca %struct.dce6_wm_params*, align 8
  %3 = alloca %struct.TYPE_7__, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  store %struct.dce6_wm_params* %0, %struct.dce6_wm_params** %2, align 8
  %7 = call i8* @dfixed_const(i32 1000)
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8* %7, i8** %8, align 8
  %9 = load %struct.dce6_wm_params*, %struct.dce6_wm_params** %2, align 8
  %10 = getelementptr inbounds %struct.dce6_wm_params, %struct.dce6_wm_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @dfixed_const(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @dfixed_div(i8* %15, i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = call i8* @dfixed_const(i32 10)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = call i8* @dfixed_const(i32 8)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @dfixed_div(i8* %25, i8* %27)
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = call i8* @dfixed_const(i32 32)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @dfixed_mul(i8* %33, i8* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @dfixed_mul(i8* %39, i8* %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @dfixed_trunc(i8* %45)
  ret i32 %46
}

declare dso_local i8* @dfixed_const(i32) #1

declare dso_local i8* @dfixed_div(i8*, i8*) #1

declare dso_local i8* @dfixed_mul(i8*, i8*) #1

declare dso_local i32 @dfixed_trunc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
