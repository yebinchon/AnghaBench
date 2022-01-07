; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_csi_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_csi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.rtl8169_private.0*, i32)* }
%struct.rtl8169_private.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, i32)* @rtl_csi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_csi_read(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %6 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.rtl8169_private.0*, i32)*, i32 (%struct.rtl8169_private.0*, i32)** %7, align 8
  %9 = icmp ne i32 (%struct.rtl8169_private.0*, i32)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %12 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.rtl8169_private.0*, i32)*, i32 (%struct.rtl8169_private.0*, i32)** %13, align 8
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %16 = bitcast %struct.rtl8169_private* %15 to %struct.rtl8169_private.0*
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %14(%struct.rtl8169_private.0* %16, i32 %17)
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %10
  %21 = phi i32 [ %18, %10 ], [ -1, %19 ]
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
