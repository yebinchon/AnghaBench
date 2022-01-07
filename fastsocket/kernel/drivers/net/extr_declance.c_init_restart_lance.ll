; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_init_restart_lance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_init_restart_lance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_private = type { %struct.lance_regs* }
%struct.lance_regs = type { i32, i32 }

@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_INIT = common dso_local global i32 0, align 4
@LE_C0_IDON = common dso_local global i32 0, align 4
@LE_C0_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"LANCE unopened after %d ticks, csr0=%4.4x.\0A\00", align 1
@LE_C0_STRT = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lance_private*)* @init_restart_lance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_restart_lance(%struct.lance_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca %struct.lance_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.lance_private* %0, %struct.lance_private** %3, align 8
  %6 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %7 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %6, i32 0, i32 0
  %8 = load %struct.lance_regs*, %struct.lance_regs** %7, align 8
  store %struct.lance_regs* %8, %struct.lance_regs** %4, align 8
  %9 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %10 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %9, i32 0, i32 0
  %11 = load i32, i32* @LE_CSR0, align 4
  %12 = call i32 @writereg(i32* %10, i32 %11)
  %13 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %14 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %13, i32 0, i32 1
  %15 = load i32, i32* @LE_C0_INIT, align 4
  %16 = call i32 @writereg(i32* %14, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %32, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 100
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %22 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %21, i32 0, i32 1
  %23 = load volatile i32, i32* %22, align 4
  %24 = load i32, i32* @LE_C0_IDON, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi i1 [ false, %17 ], [ %27, %20 ]
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = call i32 @udelay(i32 10)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %17

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 100
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %40 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %39, i32 0, i32 1
  %41 = load volatile i32, i32* %40, align 4
  %42 = load i32, i32* @LE_C0_ERR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %48 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %47, i32 0, i32 1
  %49 = load volatile i32, i32* %48, align 4
  %50 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  store i32 -1, i32* %2, align 4
  br label %77

51:                                               ; preds = %38
  %52 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %53 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %52, i32 0, i32 1
  %54 = load volatile i32, i32* %53, align 4
  %55 = load i32, i32* @LE_C0_ERR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %61 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %60, i32 0, i32 1
  %62 = load volatile i32, i32* %61, align 4
  %63 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  store i32 -1, i32* %2, align 4
  br label %77

64:                                               ; preds = %51
  %65 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %66 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %65, i32 0, i32 1
  %67 = load i32, i32* @LE_C0_IDON, align 4
  %68 = call i32 @writereg(i32* %66, i32 %67)
  %69 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %70 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %69, i32 0, i32 1
  %71 = load i32, i32* @LE_C0_STRT, align 4
  %72 = call i32 @writereg(i32* %70, i32 %71)
  %73 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %74 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %73, i32 0, i32 1
  %75 = load i32, i32* @LE_C0_INEA, align 4
  %76 = call i32 @writereg(i32* %74, i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %64, %58, %45
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @writereg(i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
