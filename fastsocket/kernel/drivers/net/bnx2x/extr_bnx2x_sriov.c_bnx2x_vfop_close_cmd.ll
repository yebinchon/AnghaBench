; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_close_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_close_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop_cmd = type { i32, i32 }
%struct.bnx2x_vfop = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BNX2X_VFOP_CLOSE_QUEUES = common dso_local global i32 0, align 4
@bnx2x_vfop_close = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfop_close_cmd(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vfop_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_virtf*, align 8
  %7 = alloca %struct.bnx2x_vfop_cmd*, align 8
  %8 = alloca %struct.bnx2x_vfop*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %6, align 8
  store %struct.bnx2x_vfop_cmd* %2, %struct.bnx2x_vfop_cmd** %7, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %11 = call %struct.bnx2x_vfop* @bnx2x_vfop_add(%struct.bnx2x* %9, %struct.bnx2x_virtf* %10)
  store %struct.bnx2x_vfop* %11, %struct.bnx2x_vfop** %8, align 8
  %12 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %8, align 8
  %13 = icmp ne %struct.bnx2x_vfop* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %8, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  %19 = load i32, i32* @BNX2X_VFOP_CLOSE_QUEUES, align 4
  %20 = load i32, i32* @bnx2x_vfop_close, align 4
  %21 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bnx2x_vfop_opset(i32 %19, i32 %20, i32 %23)
  %25 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %26 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %27 = load i32, i32* @bnx2x_vfop_close, align 4
  %28 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bnx2x_vfop_transition(%struct.bnx2x* %25, %struct.bnx2x_virtf* %26, i32 %27, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
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
