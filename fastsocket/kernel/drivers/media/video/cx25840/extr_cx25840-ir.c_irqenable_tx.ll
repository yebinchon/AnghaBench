; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_irqenable_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_irqenable_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32 }

@IRQEN_MSK = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4
@CX25840_IR_IRQEN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i32)* @irqenable_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irqenable_tx(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25840_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.cx25840_state* %7, %struct.cx25840_state** %5, align 8
  %8 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %9 = call i64 @is_cx23885(%struct.cx25840_state* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %13 = call i64 @is_cx23887(%struct.cx25840_state* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @IRQEN_MSK, align 4
  %17 = load i32, i32* %4, align 4
  %18 = xor i32 %17, %16
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* @IRQEN_TSE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %24 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CX25840_IR_IRQEN_REG, align 4
  %27 = load i32, i32* @IRQEN_TSE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cx25840_and_or4(i32 %25, i32 %26, i32 %28, i32 %29)
  ret void
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx23885(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx23887(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_and_or4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
