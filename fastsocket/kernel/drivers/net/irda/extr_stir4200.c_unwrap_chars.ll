; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_unwrap_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_unwrap_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stir_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stir_cb*, i32*, i32)* @unwrap_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwrap_chars(%struct.stir_cb* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.stir_cb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.stir_cb* %0, %struct.stir_cb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %8 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @isfir(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @stir_fir_chars(%struct.stir_cb* %13, i32* %14, i32 %15)
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.stir_cb*, %struct.stir_cb** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @stir_sir_chars(%struct.stir_cb* %18, i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  ret void
}

declare dso_local i64 @isfir(i32) #1

declare dso_local i32 @stir_fir_chars(%struct.stir_cb*, i32*, i32) #1

declare dso_local i32 @stir_sir_chars(%struct.stir_cb*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
