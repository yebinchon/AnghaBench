; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_reset_addr_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_reset_addr_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enic_reset_addr_lists(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  store %struct.enic* %0, %struct.enic** %2, align 8
  %3 = load %struct.enic*, %struct.enic** %2, align 8
  %4 = getelementptr inbounds %struct.enic, %struct.enic* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.enic*, %struct.enic** %2, align 8
  %6 = getelementptr inbounds %struct.enic, %struct.enic* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = load %struct.enic*, %struct.enic** %2, align 8
  %8 = getelementptr inbounds %struct.enic, %struct.enic* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
