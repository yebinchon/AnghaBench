; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio-bitbang.c_mdiobb_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio-bitbang.c_mdiobb_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdiobb_ctrl = type { %struct.mdiobb_ops* }
%struct.mdiobb_ops = type { i32 (%struct.mdiobb_ctrl.0*, i32)* }
%struct.mdiobb_ctrl.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdiobb_ctrl*, i32, i32, i32)* @mdiobb_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdiobb_cmd(%struct.mdiobb_ctrl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mdiobb_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mdiobb_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.mdiobb_ctrl* %0, %struct.mdiobb_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.mdiobb_ctrl, %struct.mdiobb_ctrl* %11, i32 0, i32 0
  %13 = load %struct.mdiobb_ops*, %struct.mdiobb_ops** %12, align 8
  store %struct.mdiobb_ops* %13, %struct.mdiobb_ops** %9, align 8
  %14 = load %struct.mdiobb_ops*, %struct.mdiobb_ops** %9, align 8
  %15 = getelementptr inbounds %struct.mdiobb_ops, %struct.mdiobb_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.mdiobb_ctrl.0*, i32)*, i32 (%struct.mdiobb_ctrl.0*, i32)** %15, align 8
  %17 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %5, align 8
  %18 = bitcast %struct.mdiobb_ctrl* %17 to %struct.mdiobb_ctrl.0*
  %19 = call i32 %16(%struct.mdiobb_ctrl.0* %18, i32 1)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %26, %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %5, align 8
  %25 = call i32 @mdiobb_send_bit(%struct.mdiobb_ctrl* %24, i32 1)
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %20

29:                                               ; preds = %20
  %30 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %5, align 8
  %31 = call i32 @mdiobb_send_bit(%struct.mdiobb_ctrl* %30, i32 0)
  %32 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %5, align 8
  %33 = call i32 @mdiobb_send_bit(%struct.mdiobb_ctrl* %32, i32 1)
  %34 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @mdiobb_send_bit(%struct.mdiobb_ctrl* %34, i32 %35)
  %37 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @mdiobb_send_bit(%struct.mdiobb_ctrl* %37, i32 %41)
  %43 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @mdiobb_send_num(%struct.mdiobb_ctrl* %43, i32 %44, i32 5)
  %46 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mdiobb_send_num(%struct.mdiobb_ctrl* %46, i32 %47, i32 5)
  ret void
}

declare dso_local i32 @mdiobb_send_bit(%struct.mdiobb_ctrl*, i32) #1

declare dso_local i32 @mdiobb_send_num(%struct.mdiobb_ctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
