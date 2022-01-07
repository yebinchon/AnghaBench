; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_load_csrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_load_csrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_private = type { i32, %struct.lance_init_block* }
%struct.lance_init_block = type { i32 }

@LE_CSR1 = common dso_local global i32 0, align 4
@LE_CSR2 = common dso_local global i32 0, align 4
@LE_CSR3 = common dso_local global i32 0, align 4
@LE_CSR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_private*)* @load_csrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_csrs(%struct.lance_private* %0) #0 {
  %2 = alloca %struct.lance_private*, align 8
  %3 = alloca %struct.lance_init_block*, align 8
  %4 = alloca i32, align 4
  store %struct.lance_private* %0, %struct.lance_private** %2, align 8
  %5 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %6 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %5, i32 0, i32 1
  %7 = load %struct.lance_init_block*, %struct.lance_init_block** %6, align 8
  store %struct.lance_init_block* %7, %struct.lance_init_block** %3, align 8
  %8 = load %struct.lance_init_block*, %struct.lance_init_block** %3, align 8
  %9 = call i32 @LANCE_ADDR(%struct.lance_init_block* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %11 = load i32, i32* @LE_CSR1, align 4
  %12 = call i32 @WRITERAP(%struct.lance_private* %10, i32 %11)
  %13 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 65535
  %16 = call i32 @WRITERDP(%struct.lance_private* %13, i32 %15)
  %17 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %18 = load i32, i32* @LE_CSR2, align 4
  %19 = call i32 @WRITERAP(%struct.lance_private* %17, i32 %18)
  %20 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 16
  %23 = call i32 @WRITERDP(%struct.lance_private* %20, i32 %22)
  %24 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %25 = load i32, i32* @LE_CSR3, align 4
  %26 = call i32 @WRITERAP(%struct.lance_private* %24, i32 %25)
  %27 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %28 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %29 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @WRITERDP(%struct.lance_private* %27, i32 %30)
  %32 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %33 = load i32, i32* @LE_CSR0, align 4
  %34 = call i32 @WRITERAP(%struct.lance_private* %32, i32 %33)
  ret void
}

declare dso_local i32 @LANCE_ADDR(%struct.lance_init_block*) #1

declare dso_local i32 @WRITERAP(%struct.lance_private*, i32) #1

declare dso_local i32 @WRITERDP(%struct.lance_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
