; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { i32, %struct.zs_scc* }
%struct.zs_scc = type { i32, i32 }

@R0 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@FHWRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zs_port*)* @zs_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_reset(%struct.zs_port* %0) #0 {
  %2 = alloca %struct.zs_port*, align 8
  %3 = alloca %struct.zs_scc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.zs_port* %0, %struct.zs_port** %2, align 8
  %6 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %7 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %6, i32 0, i32 1
  %8 = load %struct.zs_scc*, %struct.zs_scc** %7, align 8
  store %struct.zs_scc* %8, %struct.zs_scc** %3, align 8
  %9 = load %struct.zs_scc*, %struct.zs_scc** %3, align 8
  %10 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @irqs_disabled_flags(i64 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load %struct.zs_scc*, %struct.zs_scc** %3, align 8
  %19 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %1
  %23 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %24 = load i32, i32* @R0, align 4
  %25 = call i32 @read_zsreg(%struct.zs_port* %23, i32 %24)
  %26 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @zs_line_drain(%struct.zs_port* %26, i32 %27)
  %29 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %30 = load i32, i32* @R9, align 4
  %31 = load i32, i32* @FHWRES, align 4
  %32 = call i32 @write_zsreg(%struct.zs_port* %29, i32 %30, i32 %31)
  %33 = call i32 @udelay(i32 10)
  %34 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %35 = load i32, i32* @R9, align 4
  %36 = call i32 @write_zsreg(%struct.zs_port* %34, i32 %35, i32 0)
  %37 = load %struct.zs_scc*, %struct.zs_scc** %3, align 8
  %38 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %22, %1
  %40 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %41 = load %struct.zs_port*, %struct.zs_port** %2, align 8
  %42 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @load_zsregs(%struct.zs_port* %40, i32 %43, i32 %44)
  %46 = load %struct.zs_scc*, %struct.zs_scc** %3, align 8
  %47 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %46, i32 0, i32 1
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @irqs_disabled_flags(i64) #1

declare dso_local i32 @read_zsreg(%struct.zs_port*, i32) #1

declare dso_local i32 @zs_line_drain(%struct.zs_port*, i32) #1

declare dso_local i32 @write_zsreg(%struct.zs_port*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @load_zsregs(%struct.zs_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
