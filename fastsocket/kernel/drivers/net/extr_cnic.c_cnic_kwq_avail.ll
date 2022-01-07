; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_kwq_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_kwq_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_local = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_local*)* @cnic_kwq_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_kwq_avail(%struct.cnic_local* %0) #0 {
  %2 = alloca %struct.cnic_local*, align 8
  store %struct.cnic_local* %0, %struct.cnic_local** %2, align 8
  %3 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %4 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %10 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  %13 = load %struct.cnic_local*, %struct.cnic_local** %2, align 8
  %14 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = sub nsw i32 %5, %16
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
