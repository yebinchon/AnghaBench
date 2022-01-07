; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_tmgoffst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_tmgoffst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@TMGREG2 = common dso_local global i32 0, align 4
@TMGREG1 = common dso_local global i32 0, align 4
@TMGREG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32)* @stv090x_get_tmgoffst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_tmgoffst(%struct.stv090x_state* %0, i32 %1) #0 {
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %7 = load i32, i32* @TMGREG2, align 4
  %8 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %6, i32 %7)
  %9 = shl i32 %8, 16
  store i32 %9, i32* %5, align 4
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %11 = load i32, i32* @TMGREG1, align 4
  %12 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %10, i32 %11)
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %17 = load i32, i32* @TMGREG0, align 4
  %18 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @comp2(i32 %21, i32 24)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 10
  %29 = load i32, i32* %5, align 4
  %30 = sdiv i32 16777216, %29
  %31 = sdiv i32 %28, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %32, 320
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @comp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
