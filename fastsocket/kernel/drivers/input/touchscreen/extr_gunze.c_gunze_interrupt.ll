; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_gunze.c_gunze_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_gunze.c_gunze_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.gunze = type { i64, i8* }

@GUNZE_MAX_LENGTH = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @gunze_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gunze_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.gunze*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.gunze* @serio_get_drvdata(%struct.serio* %8)
  store %struct.gunze* %9, %struct.gunze** %7, align 8
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 13
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.gunze*, %struct.gunze** %7, align 8
  %15 = call i32 @gunze_process_packet(%struct.gunze* %14)
  %16 = load %struct.gunze*, %struct.gunze** %7, align 8
  %17 = getelementptr inbounds %struct.gunze, %struct.gunze* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.gunze*, %struct.gunze** %7, align 8
  %20 = getelementptr inbounds %struct.gunze, %struct.gunze* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GUNZE_MAX_LENGTH, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i8, i8* %5, align 1
  %26 = load %struct.gunze*, %struct.gunze** %7, align 8
  %27 = getelementptr inbounds %struct.gunze, %struct.gunze* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.gunze*, %struct.gunze** %7, align 8
  %30 = getelementptr inbounds %struct.gunze, %struct.gunze* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 %25, i8* %33, align 1
  br label %34

34:                                               ; preds = %24, %18
  br label %35

35:                                               ; preds = %34, %13
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %36
}

declare dso_local %struct.gunze* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @gunze_process_packet(%struct.gunze*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
