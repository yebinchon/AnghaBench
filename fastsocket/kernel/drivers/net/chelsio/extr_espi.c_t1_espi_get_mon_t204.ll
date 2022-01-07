; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_get_mon_t204.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_get_mon_t204.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, %struct.peespi* }
%struct.TYPE_4__ = type { i32 }
%struct.peespi = type { i32, i32 }

@MON_MASK = common dso_local global i32 0, align 4
@F_MONITORED_DIRECTION = common dso_local global i32 0, align 4
@A_ESPI_MISC_CONTROL = common dso_local global i64 0, align 8
@A_ESPI_SCH_TOKEN3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_espi_get_mon_t204(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.peespi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.peespi*, %struct.peespi** %12, align 8
  store %struct.peespi* %13, %struct.peespi** %8, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load %struct.peespi*, %struct.peespi** %8, align 8
  %23 = getelementptr inbounds %struct.peespi, %struct.peespi* %22, i32 0, i32 1
  %24 = call i32 @spin_trylock(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %107

27:                                               ; preds = %21
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.peespi*, %struct.peespi** %8, align 8
  %30 = getelementptr inbounds %struct.peespi, %struct.peespi* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct.peespi*, %struct.peespi** %8, align 8
  %34 = getelementptr inbounds %struct.peespi, %struct.peespi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MON_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @F_MONITORED_DIRECTION, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %32
  %41 = load %struct.peespi*, %struct.peespi** %8, align 8
  %42 = getelementptr inbounds %struct.peespi, %struct.peespi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MON_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* @F_MONITORED_DIRECTION, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.peespi*, %struct.peespi** %8, align 8
  %50 = getelementptr inbounds %struct.peespi, %struct.peespi* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.peespi*, %struct.peespi** %8, align 8
  %52 = getelementptr inbounds %struct.peespi, %struct.peespi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @A_ESPI_MISC_CONTROL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %40, %32
  store i64 0, i64* %9, align 8
  br label %61

61:                                               ; preds = %89, %60
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.peespi*, %struct.peespi** %8, align 8
  %70 = getelementptr inbounds %struct.peespi, %struct.peespi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @V_MONITORED_PORT_NUM(i64 %72)
  %74 = or i32 %71, %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @A_ESPI_MISC_CONTROL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  br label %81

81:                                               ; preds = %68, %65
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @A_ESPI_SCH_TOKEN3, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %81
  %90 = load i64, i64* %9, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %9, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %6, align 8
  br label %61

94:                                               ; preds = %61
  %95 = load %struct.peespi*, %struct.peespi** %8, align 8
  %96 = getelementptr inbounds %struct.peespi, %struct.peespi* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @A_ESPI_MISC_CONTROL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load %struct.peespi*, %struct.peespi** %8, align 8
  %105 = getelementptr inbounds %struct.peespi, %struct.peespi* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock(i32* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %94, %26
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @V_MONITORED_PORT_NUM(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
