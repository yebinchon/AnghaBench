; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c_ps2_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c_ps2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { %struct.serio*, i32, i32 }
%struct.serio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ps2_init(%struct.ps2dev* %0, %struct.serio* %1) #0 {
  %3 = alloca %struct.ps2dev*, align 8
  %4 = alloca %struct.serio*, align 8
  store %struct.ps2dev* %0, %struct.ps2dev** %3, align 8
  store %struct.serio* %1, %struct.serio** %4, align 8
  %5 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %6 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %5, i32 0, i32 2
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %9 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %8, i32 0, i32 2
  %10 = load %struct.serio*, %struct.serio** %4, align 8
  %11 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @lockdep_set_subclass(i32* %9, i32 %12)
  %14 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %15 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %14, i32 0, i32 1
  %16 = call i32 @init_waitqueue_head(i32* %15)
  %17 = load %struct.serio*, %struct.serio** %4, align 8
  %18 = load %struct.ps2dev*, %struct.ps2dev** %3, align 8
  %19 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %18, i32 0, i32 0
  store %struct.serio* %17, %struct.serio** %19, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lockdep_set_subclass(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
