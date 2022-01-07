; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_surface_check_linear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_surface_check_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32 }
%struct.eg_surface = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.eg_surface*, i8*)* @evergreen_surface_check_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_surface_check_linear(%struct.radeon_cs_parser* %0, %struct.eg_surface* %1, i8* %2) #0 {
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca %struct.eg_surface*, align 8
  %6 = alloca i8*, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store %struct.eg_surface* %1, %struct.eg_surface** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.eg_surface*, %struct.eg_surface** %5, align 8
  %8 = getelementptr inbounds %struct.eg_surface, %struct.eg_surface* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.eg_surface*, %struct.eg_surface** %5, align 8
  %11 = getelementptr inbounds %struct.eg_surface, %struct.eg_surface* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = load %struct.eg_surface*, %struct.eg_surface** %5, align 8
  %15 = getelementptr inbounds %struct.eg_surface, %struct.eg_surface* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load %struct.eg_surface*, %struct.eg_surface** %5, align 8
  %19 = getelementptr inbounds %struct.eg_surface, %struct.eg_surface* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load %struct.eg_surface*, %struct.eg_surface** %5, align 8
  %23 = getelementptr inbounds %struct.eg_surface, %struct.eg_surface* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.eg_surface*, %struct.eg_surface** %5, align 8
  %25 = getelementptr inbounds %struct.eg_surface, %struct.eg_surface* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.eg_surface*, %struct.eg_surface** %5, align 8
  %28 = getelementptr inbounds %struct.eg_surface, %struct.eg_surface* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.eg_surface*, %struct.eg_surface** %5, align 8
  %30 = getelementptr inbounds %struct.eg_surface, %struct.eg_surface* %29, i32 0, i32 6
  store i32 1, i32* %30, align 4
  %31 = load %struct.eg_surface*, %struct.eg_surface** %5, align 8
  %32 = getelementptr inbounds %struct.eg_surface, %struct.eg_surface* %31, i32 0, i32 7
  store i32 1, i32* %32, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
