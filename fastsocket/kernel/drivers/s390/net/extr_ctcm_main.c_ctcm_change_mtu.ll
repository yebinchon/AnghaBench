; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@TH_HEADER_LENGTH = common dso_local global i32 0, align 4
@PDU_HEADER_LENGTH = common dso_local global i32 0, align 4
@LL_HEADER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ctcm_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctcm_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 576
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 65527
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %10
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 2
  %19 = load %struct.ctcm_priv*, %struct.ctcm_priv** %18, align 8
  store %struct.ctcm_priv* %19, %struct.ctcm_priv** %6, align 8
  %20 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %21 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i64, i64* @READ, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ctcm_priv*, %struct.ctcm_priv** %6, align 8
  %29 = call i64 @IS_MPC(%struct.ctcm_priv* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %31
  %41 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %42 = load i32, i32* @PDU_HEADER_LENGTH, align 4
  %43 = add nsw i32 %41, %42
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %61

46:                                               ; preds = %16
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sub nsw i32 %50, 2
  %52 = icmp sgt i32 %47, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %65

56:                                               ; preds = %46
  %57 = load i32, i32* @LL_HEADER_LENGTH, align 4
  %58 = add nsw i32 %57, 2
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %56, %40
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %53, %37, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @IS_MPC(%struct.ctcm_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
