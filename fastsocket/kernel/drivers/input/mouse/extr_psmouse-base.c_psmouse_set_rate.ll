; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8, i32 }

@psmouse_set_rate.rates = internal constant [8 x i8] c"\C8dP<(\14\0A\00", align 1
@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32)* @psmouse_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmouse_set_rate(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %15, %2
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* @psmouse_set_rate.rates, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %7

18:                                               ; preds = %7
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* @psmouse_set_rate.rates, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %5, align 1
  %23 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %24 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %23, i32 0, i32 1
  %25 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %26 = call i32 @ps2_command(i32* %24, i8* %5, i32 %25)
  %27 = load i8, i8* %5, align 1
  %28 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %29 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %28, i32 0, i32 0
  store i8 %27, i8* %29, align 4
  ret void
}

declare dso_local i32 @ps2_command(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
