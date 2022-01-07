; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_multicast_reg_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_multicast_reg_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EHEA_BCMC_MULTICAST = common dso_local global i32 0, align 4
@EHEA_BCMC_UNTAGGED = common dso_local global i32 0, align 4
@EHEA_BCMC_SCOPE_ALL = common dso_local global i32 0, align 4
@EHEA_BCMC_VLANID_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ehea_port*, i64, i32)* @ehea_multicast_reg_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ehea_multicast_reg_helper(%struct.ehea_port* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ehea_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EHEA_BCMC_MULTICAST, align 4
  %10 = load i32, i32* @EHEA_BCMC_UNTAGGED, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @EHEA_BCMC_SCOPE_ALL, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %20 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %25 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @ehea_h_reg_dereg_bcmc(i32 %23, i32 %26, i32 %27, i64 %28, i32 0, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %57

34:                                               ; preds = %18
  %35 = load i32, i32* @EHEA_BCMC_MULTICAST, align 4
  %36 = load i32, i32* @EHEA_BCMC_VLANID_ALL, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @EHEA_BCMC_SCOPE_ALL, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %46 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %51 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @ehea_h_reg_dereg_bcmc(i32 %49, i32 %52, i32 %53, i64 %54, i32 0, i32 %55)
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %44, %33
  %58 = load i64, i64* %7, align 8
  ret i64 %58
}

declare dso_local i64 @ehea_h_reg_dereg_bcmc(i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
