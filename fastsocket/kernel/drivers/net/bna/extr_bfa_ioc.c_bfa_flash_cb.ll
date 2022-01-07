; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_flash_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_flash_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_flash = type { i32, i32, i32 (i32, i32)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_flash*)* @bfa_flash_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_flash_cb(%struct.bfa_flash* %0) #0 {
  %2 = alloca %struct.bfa_flash*, align 8
  store %struct.bfa_flash* %0, %struct.bfa_flash** %2, align 8
  %3 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %5, i32 0, i32 2
  %7 = load i32 (i32, i32)*, i32 (i32, i32)** %6, align 8
  %8 = icmp ne i32 (i32, i32)* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %10, i32 0, i32 2
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bfa_flash*, %struct.bfa_flash** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %12(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
