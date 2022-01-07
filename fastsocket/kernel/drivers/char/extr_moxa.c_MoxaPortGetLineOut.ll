; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_MoxaPortGetLineOut.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_MoxaPortGetLineOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxa_port = type { i32 }

@DTR_ON = common dso_local global i32 0, align 4
@RTS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.moxa_port*, i32*, i32*)* @MoxaPortGetLineOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MoxaPortGetLineOut(%struct.moxa_port* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.moxa_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.moxa_port* %0, %struct.moxa_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load %struct.moxa_port*, %struct.moxa_port** %4, align 8
  %11 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DTR_ON, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %9, %3
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.moxa_port*, %struct.moxa_port** %4, align 8
  %25 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RTS_ON, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %23, %20
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
