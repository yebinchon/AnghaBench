; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_ets_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_ets_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@NIC_ETS = common dso_local global i32 0, align 4
@CNA_ETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32*)* @ql_get_ets_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_ets_regs(%struct.ql_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %12 = load i32, i32* @NIC_ETS, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 29
  %15 = or i32 %14, 134217728
  %16 = call i32 @ql_write32(%struct.ql_adapter* %11, i32 %12, i32 %15)
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %18 = load i32, i32* @NIC_ETS, align 4
  %19 = call i32 @ql_read32(%struct.ql_adapter* %17, i32 %18)
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %4, align 8
  br label %7

26:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %32 = load i32, i32* @CNA_ETS, align 4
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 29
  %35 = or i32 %34, 134217728
  %36 = call i32 @ql_write32(%struct.ql_adapter* %31, i32 %32, i32 %35)
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %38 = load i32, i32* @CNA_ETS, align 4
  %39 = call i32 @ql_read32(%struct.ql_adapter* %37, i32 %38)
  %40 = load i32*, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %4, align 8
  br label %27

46:                                               ; preds = %27
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
