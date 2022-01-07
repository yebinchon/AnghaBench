; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_icside.c_icside_dma_off_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_icside.c_icside_dma_off_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_port_info = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ide_port_info*)* @icside_dma_off_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icside_dma_off_init(i32* %0, %struct.ide_port_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ide_port_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ide_port_info* %1, %struct.ide_port_info** %4, align 8
  %5 = load i32, i32* @EOPNOTSUPP, align 4
  %6 = sub nsw i32 0, %5
  ret i32 %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
