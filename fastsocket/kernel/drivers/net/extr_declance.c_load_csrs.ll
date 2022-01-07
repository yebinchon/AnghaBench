; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_load_csrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_load_csrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_private = type { i32, %struct.lance_regs* }
%struct.lance_regs = type { i32, i32 }

@LE_CSR1 = common dso_local global i32 0, align 4
@LE_CSR2 = common dso_local global i32 0, align 4
@LE_CSR3 = common dso_local global i32 0, align 4
@LE_CSR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_private*)* @load_csrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_csrs(%struct.lance_private* %0) #0 {
  %2 = alloca %struct.lance_private*, align 8
  %3 = alloca %struct.lance_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.lance_private* %0, %struct.lance_private** %2, align 8
  %5 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %6 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %5, i32 0, i32 1
  %7 = load %struct.lance_regs*, %struct.lance_regs** %6, align 8
  store %struct.lance_regs* %7, %struct.lance_regs** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.lance_regs*, %struct.lance_regs** %3, align 8
  %9 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %8, i32 0, i32 0
  %10 = load i32, i32* @LE_CSR1, align 4
  %11 = call i32 @writereg(i32* %9, i32 %10)
  %12 = load %struct.lance_regs*, %struct.lance_regs** %3, align 8
  %13 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %12, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 65535
  %16 = call i32 @writereg(i32* %13, i32 %15)
  %17 = load %struct.lance_regs*, %struct.lance_regs** %3, align 8
  %18 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %17, i32 0, i32 0
  %19 = load i32, i32* @LE_CSR2, align 4
  %20 = call i32 @writereg(i32* %18, i32 %19)
  %21 = load %struct.lance_regs*, %struct.lance_regs** %3, align 8
  %22 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %21, i32 0, i32 1
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 16
  %25 = call i32 @writereg(i32* %22, i32 %24)
  %26 = load %struct.lance_regs*, %struct.lance_regs** %3, align 8
  %27 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %26, i32 0, i32 0
  %28 = load i32, i32* @LE_CSR3, align 4
  %29 = call i32 @writereg(i32* %27, i32 %28)
  %30 = load %struct.lance_regs*, %struct.lance_regs** %3, align 8
  %31 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %30, i32 0, i32 1
  %32 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %33 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @writereg(i32* %31, i32 %34)
  %36 = load %struct.lance_regs*, %struct.lance_regs** %3, align 8
  %37 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %36, i32 0, i32 0
  %38 = load i32, i32* @LE_CSR0, align 4
  %39 = call i32 @writereg(i32* %37, i32 %38)
  ret void
}

declare dso_local i32 @writereg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
