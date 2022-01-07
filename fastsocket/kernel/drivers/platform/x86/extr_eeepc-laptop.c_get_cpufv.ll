; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_get_cpufv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_get_cpufv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeepc_cpufv = type { i32, i32 }

@CM_ASL_CPUFV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeepc_cpufv*)* @get_cpufv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cpufv(%struct.eeepc_cpufv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeepc_cpufv*, align 8
  store %struct.eeepc_cpufv* %0, %struct.eeepc_cpufv** %3, align 8
  %4 = load i32, i32* @CM_ASL_CPUFV, align 4
  %5 = call i32 @get_acpi(i32 %4)
  %6 = load %struct.eeepc_cpufv*, %struct.eeepc_cpufv** %3, align 8
  %7 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.eeepc_cpufv*, %struct.eeepc_cpufv** %3, align 8
  %9 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = load %struct.eeepc_cpufv*, %struct.eeepc_cpufv** %3, align 8
  %14 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.eeepc_cpufv*, %struct.eeepc_cpufv** %3, align 8
  %16 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %16, align 4
  %19 = load %struct.eeepc_cpufv*, %struct.eeepc_cpufv** %3, align 8
  %20 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.eeepc_cpufv*, %struct.eeepc_cpufv** %3, align 8
  %25 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.eeepc_cpufv*, %struct.eeepc_cpufv** %3, align 8
  %30 = getelementptr inbounds %struct.eeepc_cpufv, %struct.eeepc_cpufv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 12
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %23, %1
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @get_acpi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
