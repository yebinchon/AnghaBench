; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_z85230.c_z8530_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_z85230.c_z8530_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z8530_init(%struct.z8530_dev* %0) #0 {
  %2 = alloca %struct.z8530_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.z8530_dev* %0, %struct.z8530_dev** %2, align 8
  %5 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %6 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %9 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %8, i32 0, i32 0
  %10 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %11 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32* %9, i32** %12, align 8
  %13 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %14 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %13, i32 0, i32 0
  %15 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %16 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32* %14, i32** %17, align 8
  %18 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %19 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %23 = call i32 @do_z8530_init(%struct.z8530_dev* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %25 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @do_z8530_init(%struct.z8530_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
