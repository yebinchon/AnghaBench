; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_nvram.c_access_EV.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_nvram.c_access_EV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@compaq_int15_entry_point = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@int15_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @access_EV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_EV(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @compaq_int15_entry_point, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %36

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @int15_lock, i64 %20)
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call { i32, i32 } asm "xorl   %ebx,%ebx\0Axorl    %edx,%edx\0Apushf\0Apush %cs\0Acli\0Acall *$6\0A", "={cx},={ax},{ax},{cx},{si},{di},*m,~{ebx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 %23, i32 %25, i32* %26, i32* %27, i32* @compaq_int15_entry_point) #2, !srcloc !2
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = extractvalue { i32, i32 } %28, 1
  store i32 %29, i32* %22, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @int15_lock, i64 %31)
  %33 = load i32, i32* %12, align 4
  %34 = and i32 %33, 65280
  %35 = ashr i32 %34, 8
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %19, %16
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 621, i32 645, i32 669, i32 679, i32 693, i32 701}
