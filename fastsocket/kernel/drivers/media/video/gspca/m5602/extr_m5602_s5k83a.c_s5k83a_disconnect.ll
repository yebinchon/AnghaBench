; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32*, %struct.s5k83a_priv* }
%struct.s5k83a_priv = type { %struct.s5k83a_priv* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5k83a_disconnect(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.s5k83a_priv*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = getelementptr inbounds %struct.sd, %struct.sd* %4, i32 0, i32 1
  %6 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %5, align 8
  store %struct.s5k83a_priv* %6, %struct.s5k83a_priv** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %2, align 8
  %8 = call i32 @s5k83a_stop(%struct.sd* %7)
  %9 = load %struct.sd*, %struct.sd** %2, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %3, align 8
  %12 = getelementptr inbounds %struct.s5k83a_priv, %struct.s5k83a_priv* %11, i32 0, i32 0
  %13 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %12, align 8
  %14 = call i32 @kfree(%struct.s5k83a_priv* %13)
  %15 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %3, align 8
  %16 = call i32 @kfree(%struct.s5k83a_priv* %15)
  ret void
}

declare dso_local i32 @s5k83a_stop(%struct.sd*) #1

declare dso_local i32 @kfree(%struct.s5k83a_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
