; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_init_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64, i32 }

@BIT30 = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@lcr1_brdr_value = common dso_local global i32 0, align 4
@read_ahead_count = common dso_local global i32 0, align 4
@misc_ctrl_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @init_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_adapter(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 80
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %4, align 8
  %12 = load i32, i32* @BIT30, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %4, align 8
  store volatile i32 %19, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %27, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = load volatile i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %21

30:                                               ; preds = %21
  %31 = load i32, i32* @BIT30, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %4, align 8
  store volatile i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 170, i32* %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = call i32 @write_control_reg(%struct.TYPE_4__* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 44
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %6, align 8
  %50 = load i32, i32* @BIT5, align 4
  %51 = load i32, i32* @BIT4, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @BIT3, align 4
  %54 = add nsw i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* @lcr1_brdr_value, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* @lcr1_brdr_value, align 4
  %58 = load i32, i32* @read_ahead_count, align 4
  switch i32 %58, label %83 [
    i32 16, label %59
    i32 8, label %67
    i32 4, label %73
    i32 0, label %79
  ]

59:                                               ; preds = %30
  %60 = load i32, i32* @BIT5, align 4
  %61 = load i32, i32* @BIT4, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @BIT3, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @lcr1_brdr_value, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* @lcr1_brdr_value, align 4
  br label %83

67:                                               ; preds = %30
  %68 = load i32, i32* @BIT5, align 4
  %69 = load i32, i32* @BIT4, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @lcr1_brdr_value, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* @lcr1_brdr_value, align 4
  br label %83

73:                                               ; preds = %30
  %74 = load i32, i32* @BIT5, align 4
  %75 = load i32, i32* @BIT3, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* @lcr1_brdr_value, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* @lcr1_brdr_value, align 4
  br label %83

79:                                               ; preds = %30
  %80 = load i32, i32* @BIT5, align 4
  %81 = load i32, i32* @lcr1_brdr_value, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* @lcr1_brdr_value, align 4
  br label %83

83:                                               ; preds = %30, %79, %73, %67, %59
  %84 = load i32, i32* @lcr1_brdr_value, align 4
  %85 = load i32*, i32** %6, align 8
  store volatile i32 %84, i32* %85, align 4
  %86 = load i32, i32* @misc_ctrl_value, align 4
  %87 = load i32*, i32** %4, align 8
  store volatile i32 %86, i32* %87, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @sca_init(i32 %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sca_init(i32 %98)
  ret i32 1
}

declare dso_local i32 @write_control_reg(%struct.TYPE_4__*) #1

declare dso_local i32 @sca_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
