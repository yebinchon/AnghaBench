; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_nuvoton-cir.c_nvt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.nvt_dev* }
%struct.nvt_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*)* @nvt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_open(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.nvt_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %5 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 0
  %7 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  store %struct.nvt_dev* %7, %struct.nvt_dev** %3, align 8
  %8 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %9 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %13 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %15 = call i32 @nvt_enable_cir(%struct.nvt_dev* %14)
  %16 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvt_enable_cir(%struct.nvt_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
