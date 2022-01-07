; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_update_parent_pkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_update_parent_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"ib_query_pkey port %d failed (ret = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"pkey changed from 0x%x to 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*)* @update_parent_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_parent_pkey(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  %6 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 0
  %17 = call i32 @ib_query_pkey(i32 %11, i32 %14, i32 0, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %66

28:                                               ; preds = %1
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, 32768
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %28
  %39 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %46 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = ashr i32 %47, 8
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %50 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  store i32 %48, i32* %54, align 4
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 255
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  store i32 %58, i32* %64, align 4
  store i32 0, i32* %2, align 4
  br label %66

65:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %38, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ib_query_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
