; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qdown_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qdown_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop_cmd = type { i32, i32 }
%struct.bnx2x_vfop = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BNX2X_VFOP_QTEARDOWN_RXMODE = common dso_local global i32 0, align 4
@bnx2x_vfop_qdown = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfop_qdown_cmd(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vfop_cmd* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_virtf*, align 8
  %8 = alloca %struct.bnx2x_vfop_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2x_vfop*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %7, align 8
  store %struct.bnx2x_vfop_cmd* %2, %struct.bnx2x_vfop_cmd** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %12 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %13 = call %struct.bnx2x_vfop* @bnx2x_vfop_add(%struct.bnx2x* %11, %struct.bnx2x_virtf* %12)
  store %struct.bnx2x_vfop* %13, %struct.bnx2x_vfop** %10, align 8
  %14 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %10, align 8
  %15 = icmp ne %struct.bnx2x_vfop* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %10, align 8
  %19 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @BNX2X_VFOP_QTEARDOWN_RXMODE, align 4
  %23 = load i32, i32* @bnx2x_vfop_qdown, align 4
  %24 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bnx2x_vfop_opset(i32 %22, i32 %23, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %29 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %30 = load i32, i32* @bnx2x_vfop_qdown, align 4
  %31 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bnx2x_vfop_transition(%struct.bnx2x* %28, %struct.bnx2x_virtf* %29, i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %16
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_add(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vfop_opset(i32, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_transition(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
