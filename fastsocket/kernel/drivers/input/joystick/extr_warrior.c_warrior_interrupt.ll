; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_warrior.c_warrior_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_warrior.c_warrior_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.warrior = type { i64, i64, i8* }

@warrior_lengths = common dso_local global i64* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @warrior_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @warrior_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.warrior*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.serio*, %struct.serio** %4, align 8
  %9 = call %struct.warrior* @serio_get_drvdata(%struct.serio* %8)
  store %struct.warrior* %9, %struct.warrior** %7, align 8
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 128
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.warrior*, %struct.warrior** %7, align 8
  %16 = getelementptr inbounds %struct.warrior, %struct.warrior* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.warrior*, %struct.warrior** %7, align 8
  %21 = call i32 @warrior_process_packet(%struct.warrior* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.warrior*, %struct.warrior** %7, align 8
  %24 = getelementptr inbounds %struct.warrior, %struct.warrior* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** @warrior_lengths, align 8
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %25, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.warrior*, %struct.warrior** %7, align 8
  %34 = getelementptr inbounds %struct.warrior, %struct.warrior* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %22, %3
  %36 = load %struct.warrior*, %struct.warrior** %7, align 8
  %37 = getelementptr inbounds %struct.warrior, %struct.warrior* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.warrior*, %struct.warrior** %7, align 8
  %40 = getelementptr inbounds %struct.warrior, %struct.warrior* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load i8, i8* %5, align 1
  %45 = load %struct.warrior*, %struct.warrior** %7, align 8
  %46 = getelementptr inbounds %struct.warrior, %struct.warrior* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.warrior*, %struct.warrior** %7, align 8
  %49 = getelementptr inbounds %struct.warrior, %struct.warrior* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 %44, i8* %52, align 1
  br label %53

53:                                               ; preds = %43, %35
  %54 = load %struct.warrior*, %struct.warrior** %7, align 8
  %55 = getelementptr inbounds %struct.warrior, %struct.warrior* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.warrior*, %struct.warrior** %7, align 8
  %58 = getelementptr inbounds %struct.warrior, %struct.warrior* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %53
  %62 = load %struct.warrior*, %struct.warrior** %7, align 8
  %63 = getelementptr inbounds %struct.warrior, %struct.warrior* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.warrior*, %struct.warrior** %7, align 8
  %68 = call i32 @warrior_process_packet(%struct.warrior* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.warrior*, %struct.warrior** %7, align 8
  %71 = getelementptr inbounds %struct.warrior, %struct.warrior* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.warrior*, %struct.warrior** %7, align 8
  %73 = getelementptr inbounds %struct.warrior, %struct.warrior* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %53
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %75
}

declare dso_local %struct.warrior* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @warrior_process_packet(%struct.warrior*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
