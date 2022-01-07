; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_pm3386.c_pm3386_reg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_pm3386.c_pm3386_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENP2611_PM3386_0_VIRT_BASE = common dso_local global i64 0, align 8
@ENP2611_PM3386_1_VIRT_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @pm3386_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm3386_reg_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store volatile i32 %2, i32* %6, align 4
  %9 = load i64, i64* @ENP2611_PM3386_0_VIRT_BASE, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* @ENP2611_PM3386_1_VIRT_BASE, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load volatile i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %18, i64 %21
  %23 = bitcast i8* %22 to i32*
  store volatile i32 %17, i32* %23, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load volatile i32, i32* %25, align 4
  store volatile i32 %26, i32* %8, align 4
  %27 = load volatile i32, i32* %8, align 4
  %28 = call i32 asm sideeffect "mov $0, $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %27) #1, !srcloc !2
  store volatile i32 %28, i32* %8, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 570}
