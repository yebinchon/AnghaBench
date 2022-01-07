; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_carr_width.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_carr_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_internal }
%struct.stb0899_internal = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stb0899_carr_width(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %4 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %5 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %4, i32 0, i32 0
  store %struct.stb0899_internal* %5, %struct.stb0899_internal** %3, align 8
  %6 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %7 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %10 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %13 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = sdiv i32 %15, 100
  %17 = add nsw i32 %8, %16
  %18 = sext i32 %17 to i64
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
