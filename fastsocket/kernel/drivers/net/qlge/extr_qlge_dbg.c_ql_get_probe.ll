; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@PRB_MX_ADDR_MAX_MODS = common dso_local global i32 0, align 4
@PRB_MX_ADDR_MAX_MUX = common dso_local global i32 0, align 4
@PRB_MX_ADDR_ARE = common dso_local global i32 0, align 4
@PRB_MX_ADDR_MOD_SEL_SHIFT = common dso_local global i32 0, align 4
@PRB_MX_ADDR = common dso_local global i32 0, align 4
@PRB_MX_DATA = common dso_local global i32 0, align 4
@PRB_MX_ADDR_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ql_adapter*, i32, i32, i32*)* @ql_get_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ql_get_probe(%struct.ql_adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %77, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @PRB_MX_ADDR_MAX_MODS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = ashr i32 %19, %20
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %77

25:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %73, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PRB_MX_ADDR_MAX_MUX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PRB_MX_ADDR_ARE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PRB_MX_ADDR_MOD_SEL_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %41 = load i32, i32* @PRB_MX_ADDR, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ql_write32(%struct.ql_adapter* %40, i32 %41, i32 %42)
  %44 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %45 = load i32, i32* @PRB_MX_DATA, align 4
  %46 = call i32 @ql_read32(%struct.ql_adapter* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %8, align 8
  br label %54

54:                                               ; preds = %49, %30
  %55 = load i32, i32* @PRB_MX_ADDR_UP, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %59 = load i32, i32* @PRB_MX_ADDR, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @ql_write32(%struct.ql_adapter* %58, i32 %59, i32 %60)
  %62 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %63 = load i32, i32* @PRB_MX_DATA, align 4
  %64 = call i32 @ql_read32(%struct.ql_adapter* %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %8, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  br label %73

73:                                               ; preds = %54
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %26

76:                                               ; preds = %26
  br label %77

77:                                               ; preds = %76, %24
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %14

80:                                               ; preds = %14
  %81 = load i32*, i32** %8, align 8
  ret i32* %81
}

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
