; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_setup_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_setup_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64* }
%struct.TYPE_2__ = type { i32 }

@SGE_QSETS = common dso_local global i32 0, align 4
@RSS_TABLE_SIZE = common dso_local global i32 0, align 4
@F_RQFEEDBACKENABLE = common dso_local global i32 0, align 4
@F_TNLLKPEN = common dso_local global i32 0, align 4
@F_TNLMAPEN = common dso_local global i32 0, align 4
@F_TNLPRTEN = common dso_local global i32 0, align 4
@F_TNL2TUPEN = common dso_local global i32 0, align 4
@F_TNL4TUPEN = common dso_local global i32 0, align 4
@F_HASHTOEPLITZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @setup_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_rss(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = call %struct.TYPE_2__* @adap2pinfo(%struct.adapter* %9, i32 0)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = call %struct.TYPE_2__* @adap2pinfo(%struct.adapter* %20, i32 1)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i32 [ %23, %19 ], [ 1, %24 ]
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @SGE_QSETS, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %6, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %7, align 8
  %32 = load i32, i32* @RSS_TABLE_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %8, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %44, %25
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SGE_QSETS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %31, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %35

47:                                               ; preds = %35
  %48 = load i32, i32* @SGE_QSETS, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %31, i64 %49
  store i32 255, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %74, %47
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @RSS_TABLE_SIZE, align 4
  %54 = sdiv i32 %53, 2
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = urem i32 %57, %58
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %34, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %5, align 4
  %65 = urem i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %65, %66
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @RSS_TABLE_SIZE, align 4
  %70 = sdiv i32 %69, 2
  %71 = add nsw i32 %68, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %34, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %51

77:                                               ; preds = %51
  %78 = load %struct.adapter*, %struct.adapter** %2, align 8
  %79 = load i32, i32* @F_RQFEEDBACKENABLE, align 4
  %80 = load i32, i32* @F_TNLLKPEN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @F_TNLMAPEN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @F_TNLPRTEN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @F_TNL2TUPEN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @F_TNL4TUPEN, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @V_RRCPLCPUSIZE(i32 6)
  %91 = or i32 %89, %90
  %92 = load i32, i32* @F_HASHTOEPLITZ, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @t3_config_rss(%struct.adapter* %78, i32 %93, i32* %31, i32* %34)
  %95 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %95)
  ret void
}

declare dso_local %struct.TYPE_2__* @adap2pinfo(%struct.adapter*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @t3_config_rss(%struct.adapter*, i32, i32*, i32*) #1

declare dso_local i32 @V_RRCPLCPUSIZE(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
