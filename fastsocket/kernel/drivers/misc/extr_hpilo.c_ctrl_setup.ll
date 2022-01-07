; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ctrl_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ctrl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccb*, i32, i32)* @ctrl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctrl_setup(%struct.ccb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ccb* %0, %struct.ccb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = call i8* @ctrl_set(i32 %7, i32 %9, i32 %11)
  %13 = load %struct.ccb*, %struct.ccb** %4, align 8
  %14 = getelementptr inbounds %struct.ccb, %struct.ccb* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i8* @ctrl_set(i32 %15, i32 %17, i32 %19)
  %21 = load %struct.ccb*, %struct.ccb** %4, align 8
  %22 = getelementptr inbounds %struct.ccb, %struct.ccb* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

declare dso_local i8* @ctrl_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
