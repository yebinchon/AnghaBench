; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_edmac_to_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_edmac_to_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_eth_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_eth_private*, i32)* @edmac_to_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edmac_to_cpu(%struct.sh_eth_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_eth_private*, align 8
  %5 = alloca i32, align 4
  store %struct.sh_eth_private* %0, %struct.sh_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %7 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %12
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @be32_to_cpu(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %12, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
