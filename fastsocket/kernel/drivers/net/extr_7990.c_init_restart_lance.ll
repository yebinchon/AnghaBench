; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_init_restart_lance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_7990.c_init_restart_lance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_private = type { i32 }

@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_INIT = common dso_local global i32 0, align 4
@LE_C0_ERR = common dso_local global i32 0, align 4
@LE_C0_IDON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"LANCE unopened after %d ticks, csr0=%4.4x.\0A\00", align 1
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_C0_STRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lance_private*)* @init_restart_lance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_restart_lance(%struct.lance_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca i32, align 4
  store %struct.lance_private* %0, %struct.lance_private** %3, align 8
  %5 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %6 = load i32, i32* @LE_CSR0, align 4
  %7 = call i32 @WRITERAP(%struct.lance_private* %5, i32 %6)
  %8 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %9 = load i32, i32* @LE_C0_INIT, align 4
  %10 = call i32 @WRITERDP(%struct.lance_private* %8, i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %16 = call i32 @READRDP(%struct.lance_private* %15)
  %17 = load i32, i32* @LE_C0_ERR, align 4
  %18 = load i32, i32* @LE_C0_IDON, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %14, %11
  %24 = phi i1 [ false, %11 ], [ %22, %14 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = call i32 (...) @barrier()
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %11

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 100
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %35 = call i32 @READRDP(%struct.lance_private* %34)
  %36 = load i32, i32* @LE_C0_ERR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %42 = call i32 @READRDP(%struct.lance_private* %41)
  %43 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  store i32 -1, i32* %2, align 4
  br label %53

44:                                               ; preds = %33
  %45 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %46 = load i32, i32* @LE_C0_IDON, align 4
  %47 = call i32 @WRITERDP(%struct.lance_private* %45, i32 %46)
  %48 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %49 = load i32, i32* @LE_C0_INEA, align 4
  %50 = load i32, i32* @LE_C0_STRT, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @WRITERDP(%struct.lance_private* %48, i32 %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %44, %39
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @WRITERAP(%struct.lance_private*, i32) #1

declare dso_local i32 @WRITERDP(%struct.lance_private*, i32) #1

declare dso_local i32 @READRDP(%struct.lance_private*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
