; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_db1x00.c_db1x00_pcmcia_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_au1000_db1x00.c_db1x00_pcmcia_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1000_pcmcia_socket = type { i64, i8* }

@AU1000_GPIO_5 = common dso_local global i8* null, align 8
@AU1000_GPIO_2 = common dso_local global i8* null, align 8
@AU1000_GPIO_3 = common dso_local global i8* null, align 8
@BOARD_PC0_INT = common dso_local global i8* null, align 8
@BOARD_PC1_INT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1000_pcmcia_socket*)* @db1x00_pcmcia_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db1x00_pcmcia_hw_init(%struct.au1000_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.au1000_pcmcia_socket*, align 8
  store %struct.au1000_pcmcia_socket* %0, %struct.au1000_pcmcia_socket** %2, align 8
  %3 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %2, align 8
  %4 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8*, i8** @AU1000_GPIO_5, align 8
  br label %11

9:                                                ; preds = %1
  %10 = load i8*, i8** @AU1000_GPIO_2, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i8* [ %8, %7 ], [ %10, %9 ]
  %13 = load %struct.au1000_pcmcia_socket*, %struct.au1000_pcmcia_socket** %2, align 8
  %14 = getelementptr inbounds %struct.au1000_pcmcia_socket, %struct.au1000_pcmcia_socket* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
