; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_set_ivar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_set_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_IVAR_ALLOC_VAL = common dso_local global i32 0, align 4
@IXGBE_IVAR_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i32, i32, i32)* @ixgbe_set_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_set_ivar(%struct.ixgbe_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %11, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %115 [
    i32 130, label %18
    i32 129, label %55
    i32 128, label %55
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* @IXGBE_IVAR_ALLOC_VAL, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 64
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  %30 = ashr i32 %29, 2
  %31 = and i32 %30, 31
  store i32 %31, i32* %10, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @IXGBE_IVAR(i32 %33)
  %35 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %32, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 3
  %38 = mul nsw i32 8, %37
  %39 = shl i32 255, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 3
  %46 = mul nsw i32 8, %45
  %47 = shl i32 %43, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @IXGBE_IVAR(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %50, i32 %52, i32 %53)
  br label %116

55:                                               ; preds = %4, %4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load i32, i32* @IXGBE_IVAR_ALLOC_VAL, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 1
  %64 = mul nsw i32 %63, 8
  store i32 %64, i32* %10, align 4
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* @IXGBE_IVAR_MISC, align 4
  %68 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 255, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* @IXGBE_IVAR_MISC, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %80, i32 %81, i32 %82)
  br label %116

84:                                               ; preds = %55
  %85 = load i32, i32* @IXGBE_IVAR_ALLOC_VAL, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, 1
  %90 = mul nsw i32 16, %89
  %91 = load i32, i32* %6, align 4
  %92 = mul nsw i32 8, %91
  %93 = add nsw i32 %90, %92
  store i32 %93, i32* %10, align 4
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %95 = load i32, i32* %7, align 4
  %96 = ashr i32 %95, 1
  %97 = call i32 @IXGBE_IVAR(i32 %96)
  %98 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %94, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = shl i32 255, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %10, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %110 = load i32, i32* %7, align 4
  %111 = ashr i32 %110, 1
  %112 = call i32 @IXGBE_IVAR(i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %109, i32 %112, i32 %113)
  br label %116

115:                                              ; preds = %4
  br label %116

116:                                              ; preds = %115, %84, %58, %25
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_IVAR(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
