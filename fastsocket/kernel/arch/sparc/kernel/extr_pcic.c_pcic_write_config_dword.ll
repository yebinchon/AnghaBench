; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pcic.c_pcic_write_config_dword.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pcic.c_pcic_write_config_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_pcic = type { i64, i64 }

@pcic0 = common dso_local global %struct.linux_pcic zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @pcic_write_config_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcic_write_config_dword(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.linux_pcic*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.linux_pcic* @pcic0, %struct.linux_pcic** %9, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CONFIG_CMD(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.linux_pcic*, %struct.linux_pcic** %9, align 8
  %18 = getelementptr inbounds %struct.linux_pcic, %struct.linux_pcic* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @writel(i32 %16, i64 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.linux_pcic*, %struct.linux_pcic** %9, align 8
  %23 = getelementptr inbounds %struct.linux_pcic, %struct.linux_pcic* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @writel(i32 %21, i64 %28)
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @local_irq_restore(i64 %30)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CONFIG_CMD(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
