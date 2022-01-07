; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_get_mon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_get_mon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.peespi* }
%struct.peespi = type { i32, i32 }

@MON_MASK = common dso_local global i32 0, align 4
@A_ESPI_MISC_CONTROL = common dso_local global i64 0, align 8
@A_ESPI_SCH_TOKEN3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_espi_get_mon(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.peespi*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.peespi*, %struct.peespi** %11, align 8
  store %struct.peespi* %12, %struct.peespi** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = call i32 @is_T2(%struct.TYPE_4__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 60
  %20 = ashr i32 %19, 2
  %21 = call i32 @V_MONITORED_PORT_NUM(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.peespi*, %struct.peespi** %8, align 8
  %26 = getelementptr inbounds %struct.peespi, %struct.peespi* %25, i32 0, i32 1
  %27 = call i32 @spin_trylock(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %85

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %17
  %32 = load %struct.peespi*, %struct.peespi** %8, align 8
  %33 = getelementptr inbounds %struct.peespi, %struct.peespi* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  br label %35

35:                                               ; preds = %31, %30
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.peespi*, %struct.peespi** %8, align 8
  %38 = getelementptr inbounds %struct.peespi, %struct.peespi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MON_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %36, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %35
  %44 = load %struct.peespi*, %struct.peespi** %8, align 8
  %45 = getelementptr inbounds %struct.peespi, %struct.peespi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MON_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @A_ESPI_MISC_CONTROL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @A_ESPI_SCH_TOKEN3, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @readl(i64 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.peespi*, %struct.peespi** %8, align 8
  %65 = getelementptr inbounds %struct.peespi, %struct.peespi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @A_ESPI_MISC_CONTROL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  br label %80

73:                                               ; preds = %35
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @A_ESPI_SCH_TOKEN3, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl(i64 %78)
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %73, %43
  %81 = load %struct.peespi*, %struct.peespi** %8, align 8
  %82 = getelementptr inbounds %struct.peespi, %struct.peespi* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %29, %16
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @is_T2(%struct.TYPE_4__*) #1

declare dso_local i32 @V_MONITORED_PORT_NUM(i32) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
