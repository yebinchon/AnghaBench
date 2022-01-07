; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_construct_rxbuff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_construct_rxbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.dbdma_cmd = type { i32 }

@bmac_emergency_rxbuf = common dso_local global i8* null, align 8
@INPUT_LAST = common dso_local global i32 0, align 4
@INTR_ALWAYS = common dso_local global i32 0, align 4
@RX_BUFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.dbdma_cmd*)* @bmac_construct_rxbuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmac_construct_rxbuff(%struct.sk_buff* %0, %struct.dbdma_cmd* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dbdma_cmd*, align 8
  %5 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.dbdma_cmd* %1, %struct.dbdma_cmd** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = icmp ne %struct.sk_buff* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load i8*, i8** @bmac_emergency_rxbuf, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i8* [ %11, %8 ], [ %13, %12 ]
  store i8* %15, i8** %5, align 8
  %16 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %4, align 8
  %17 = load i32, i32* @INPUT_LAST, align 4
  %18 = load i32, i32* @INTR_ALWAYS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RX_BUFLEN, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @virt_to_bus(i8* %21)
  %23 = call i32 @dbdma_setcmd(%struct.dbdma_cmd* %16, i32 %19, i32 %20, i32 %22, i32 0)
  ret void
}

declare dso_local i32 @dbdma_setcmd(%struct.dbdma_cmd*, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_bus(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
