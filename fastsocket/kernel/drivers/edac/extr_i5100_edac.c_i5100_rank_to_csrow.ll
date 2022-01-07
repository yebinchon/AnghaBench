; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5100_edac.c_i5100_rank_to_csrow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5100_edac.c_i5100_rank_to_csrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32, i32)* @i5100_rank_to_csrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5100_rank_to_csrow(%struct.mem_ctl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i5100_priv*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.i5100_priv*, %struct.i5100_priv** %9, align 8
  store %struct.i5100_priv* %10, %struct.i5100_priv** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.i5100_priv*, %struct.i5100_priv** %7, align 8
  %13 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
