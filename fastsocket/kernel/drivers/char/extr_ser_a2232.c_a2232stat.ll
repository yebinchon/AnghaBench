; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2232status = type { i32 }
%struct.a2232memory = type { %struct.a2232status* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.a2232status* (i32, i32)* @a2232stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.a2232status* @a2232stat(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.a2232memory*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.a2232memory* @a2232mem(i32 %6)
  store %struct.a2232memory* %7, %struct.a2232memory** %5, align 8
  %8 = load %struct.a2232memory*, %struct.a2232memory** %5, align 8
  %9 = getelementptr inbounds %struct.a2232memory, %struct.a2232memory* %8, i32 0, i32 0
  %10 = load volatile %struct.a2232status*, %struct.a2232status** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %10, i64 %12
  ret %struct.a2232status* %13
}

declare dso_local %struct.a2232memory* @a2232mem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
