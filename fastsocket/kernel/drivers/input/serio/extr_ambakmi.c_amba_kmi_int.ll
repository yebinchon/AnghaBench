; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_ambakmi.c_amba_kmi_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_ambakmi.c_amba_kmi_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_kmi_port = type { i32 }

@KMIIR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@KMIIR_RXINTR = common dso_local global i32 0, align 4
@KMIDATA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @amba_kmi_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amba_kmi_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.amba_kmi_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.amba_kmi_port*
  store %struct.amba_kmi_port* %9, %struct.amba_kmi_port** %5, align 8
  %10 = load i32, i32* @KMIIR, align 4
  %11 = call i32 @readb(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %18, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @KMIIR_RXINTR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.amba_kmi_port*, %struct.amba_kmi_port** %5, align 8
  %20 = getelementptr inbounds %struct.amba_kmi_port, %struct.amba_kmi_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @KMIDATA, align 4
  %23 = call i32 @readb(i32 %22)
  %24 = call i32 @serio_interrupt(i32 %21, i32 %23, i32 0)
  %25 = load i32, i32* @KMIIR, align 4
  %26 = call i32 @readb(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %7, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @serio_interrupt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
