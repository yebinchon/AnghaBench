; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_set_tty_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_set_tty_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.moxa_port*, %struct.ktermios* }
%struct.moxa_port = type { i32 }
%struct.ktermios = type { i32, i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @moxa_set_tty_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxa_set_tty_param(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.moxa_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  %15 = load %struct.ktermios*, %struct.ktermios** %14, align 8
  store %struct.ktermios* %15, %struct.ktermios** %5, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 0
  %18 = load %struct.moxa_port*, %struct.moxa_port** %17, align 8
  store %struct.moxa_port* %18, %struct.moxa_port** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %19 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CRTSCTS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %28 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IXON, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IXOFF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IXANY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i32, i32* @CMSPAR, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %54 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @MoxaPortFlowCtrl(%struct.moxa_port* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.moxa_port*, %struct.moxa_port** %6, align 8
  %65 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %66 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %67 = call i32 @tty_get_baud_rate(%struct.tty_struct* %66)
  %68 = call i32 @MoxaPortSetTermio(%struct.moxa_port* %64, %struct.ktermios* %65, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %50
  %72 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %73 = call i32 @tty_termios_baud_rate(%struct.ktermios* %72)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %71, %50
  %75 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @MoxaPortFlowCtrl(%struct.moxa_port*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MoxaPortSetTermio(%struct.moxa_port*, %struct.ktermios*, i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
