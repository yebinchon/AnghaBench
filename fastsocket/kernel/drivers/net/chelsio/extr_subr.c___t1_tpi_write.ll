; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_subr.c___t1_tpi_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_subr.c___t1_tpi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@A_TPI_ADDR = common dso_local global i64 0, align 8
@A_TPI_WR_DATA = common dso_local global i64 0, align 8
@F_TPIWR = common dso_local global i32 0, align 4
@A_TPI_CSR = common dso_local global i64 0, align 8
@F_TPIRDY = common dso_local global i32 0, align 4
@TPI_ATTEMPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: TPI write to 0x%x failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__t1_tpi_write(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @A_TPI_ADDR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @A_TPI_WR_DATA, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load i32, i32* @F_TPIWR, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @A_TPI_CSR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i64, i64* @A_TPI_CSR, align 8
  %31 = load i32, i32* @F_TPIRDY, align 4
  %32 = load i32, i32* @TPI_ATTEMPTS, align 4
  %33 = call i32 @t1_wait_op_done(%struct.TYPE_4__* %29, i64 %30, i32 %31, i32 1, i32 %32, i32 3)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @CH_ALERT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %3
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @t1_wait_op_done(%struct.TYPE_4__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @CH_ALERT(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
