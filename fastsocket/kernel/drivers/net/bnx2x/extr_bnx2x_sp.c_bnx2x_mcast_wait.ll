; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_obj = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 (%struct.bnx2x.0*, %struct.TYPE_2__*)*, i32 }
%struct.bnx2x.0 = type opaque

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_mcast_obj*)* @bnx2x_mcast_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_mcast_wait(%struct.bnx2x* %0, %struct.bnx2x_mcast_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_mcast_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_obj** %5, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %7 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %5, align 8
  %8 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @bnx2x_state_wait(%struct.bnx2x* %6, i32 %9, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (%struct.bnx2x.0*, %struct.TYPE_2__*)*, i64 (%struct.bnx2x.0*, %struct.TYPE_2__*)** %19, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = bitcast %struct.bnx2x* %21 to %struct.bnx2x.0*
  %23 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %23, i32 0, i32 0
  %25 = call i64 %20(%struct.bnx2x.0* %22, %struct.TYPE_2__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16, %2
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @bnx2x_state_wait(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
