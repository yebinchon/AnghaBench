; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c_ps2_sendbyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c_ps2_sendbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32, i32, i32, i32 }

@PS2_FLAG_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2_sendbyte(%struct.ps2dev* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.ps2dev* %0, %struct.ps2dev** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %8 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @serio_pause_rx(i32 %9)
  %11 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %12 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @PS2_FLAG_ACK, align 4
  %14 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %15 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %19 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @serio_continue_rx(i32 %20)
  %22 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %23 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i8, i8* %5, align 1
  %26 = call i64 @serio_write(i32 %24, i8 zeroext %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %3
  %29 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %30 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %33 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PS2_FLAG_ACK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @msecs_to_jiffies(i32 %40)
  %42 = call i32 @wait_event_timeout(i32 %31, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %28, %3
  %44 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %45 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @serio_pause_rx(i32 %46)
  %48 = load i32, i32* @PS2_FLAG_ACK, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %51 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %55 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @serio_continue_rx(i32 %56)
  %58 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %59 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 0, %60
  ret i32 %61
}

declare dso_local i32 @serio_pause_rx(i32) #1

declare dso_local i32 @serio_continue_rx(i32) #1

declare dso_local i64 @serio_write(i32, i8 zeroext) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
