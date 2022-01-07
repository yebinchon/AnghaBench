; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_remove_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_remove_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%union.bnx2x_qable_obj = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }
%struct.bnx2x_exeq_elem = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BNX2X_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %union.bnx2x_qable_obj*, %struct.bnx2x_exeq_elem*)* @bnx2x_remove_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_remove_vlan_mac(%struct.bnx2x* %0, %union.bnx2x_qable_obj* %1, %struct.bnx2x_exeq_elem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %union.bnx2x_qable_obj*, align 8
  %7 = alloca %struct.bnx2x_exeq_elem*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %union.bnx2x_qable_obj* %1, %union.bnx2x_qable_obj** %6, align 8
  store %struct.bnx2x_exeq_elem* %2, %struct.bnx2x_exeq_elem** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @BNX2X_DONT_CONSUME_CAM_CREDIT, align 4
  %10 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %7, align 8
  %11 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %9, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

17:                                               ; preds = %3
  %18 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %7, align 8
  %19 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %39 [
    i32 130, label %23
    i32 128, label %23
    i32 129, label %31
  ]

23:                                               ; preds = %17, %17
  %24 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %25 = bitcast %union.bnx2x_qable_obj* %24 to %struct.TYPE_7__*
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %26, align 8
  %28 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %29 = bitcast %union.bnx2x_qable_obj* %28 to %struct.TYPE_7__*
  %30 = call i32 %27(%struct.TYPE_7__* %29)
  store i32 %30, i32* %8, align 4
  br label %42

31:                                               ; preds = %17
  %32 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %33 = bitcast %union.bnx2x_qable_obj* %32 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %34, align 8
  %36 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %37 = bitcast %union.bnx2x_qable_obj* %36 to %struct.TYPE_7__*
  %38 = call i32 %35(%struct.TYPE_7__* %37)
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %17
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %31, %23
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45, %39, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
