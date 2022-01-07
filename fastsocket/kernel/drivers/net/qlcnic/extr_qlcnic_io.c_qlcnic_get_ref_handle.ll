; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_get_ref_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_get_ref_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 }

@PCI_DEVICE_ID_QLOGIC_QLE834X = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_QLOGIC_VF_QLE834X = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32, i32)* @qlcnic_get_ref_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_ref_handle(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 2
  store i16 %13, i16* %8, align 2
  %14 = load i16, i16* %8, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @PCI_DEVICE_ID_QLOGIC_QLE834X, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i16, i16* %8, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @PCI_DEVICE_ID_QLOGIC_VF_QLE834X, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %27, 15
  %29 = or i32 %26, %28
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
