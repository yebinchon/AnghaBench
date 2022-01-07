; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_read_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_read_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ENTER = common dso_local global i32 0, align 4
@regUNC_MAC0_A = common dso_local global i32 0, align 4
@regUNC_MAC1_A = common dso_local global i32 0, align 4
@regUNC_MAC2_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdx_priv*)* @bdx_read_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_read_mac(%struct.bdx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  %6 = load i32, i32* @ENTER, align 4
  %7 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %8 = load i32, i32* @regUNC_MAC0_A, align 4
  %9 = call i32 @READ_REG(%struct.bdx_priv* %7, i32 %8)
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %9, i32* %10, align 4
  %11 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %12 = load i32, i32* @regUNC_MAC0_A, align 4
  %13 = call i32 @READ_REG(%struct.bdx_priv* %11, i32 %12)
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %13, i32* %14, align 4
  %15 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %16 = load i32, i32* @regUNC_MAC1_A, align 4
  %17 = call i32 @READ_REG(%struct.bdx_priv* %15, i32 %16)
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %20 = load i32, i32* @regUNC_MAC1_A, align 4
  %21 = call i32 @READ_REG(%struct.bdx_priv* %19, i32 %20)
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %24 = load i32, i32* @regUNC_MAC2_A, align 4
  %25 = call i32 @READ_REG(%struct.bdx_priv* %23, i32 %24)
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %28 = load i32, i32* @regUNC_MAC2_A, align 4
  %29 = call i32 @READ_REG(%struct.bdx_priv* %27, i32 %28)
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %63, %1
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %40 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %44, 2
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  store i32 %38, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  %54 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %55 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %53, i32* %62, align 4
  br label %63

63:                                               ; preds = %34
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %31

66:                                               ; preds = %31
  %67 = call i32 @RET(i32 0)
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @RET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
