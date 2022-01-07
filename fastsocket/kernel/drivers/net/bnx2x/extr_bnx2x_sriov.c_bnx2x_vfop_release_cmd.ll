; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_release_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_release_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop_cmd = type { i32, i32 }
%struct.bnx2x_vfop = type { i32 }

@bnx2x_vfop_release = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfop_release_cmd(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vfop_cmd* %2) #0 {
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
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i32, i32* @bnx2x_vfop_release, align 4
  %16 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %7, align 8
  %17 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bnx2x_vfop_opset(i32 -1, i32 %15, i32 %18)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %21 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %22 = load i32, i32* @bnx2x_vfop_release, align 4
  %23 = load %struct.bnx2x_vfop_cmd*, %struct.bnx2x_vfop_cmd** %7, align 8
  %24 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bnx2x_vfop_transition(%struct.bnx2x* %20, %struct.bnx2x_virtf* %21, i32 %22, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
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
