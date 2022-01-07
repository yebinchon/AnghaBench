; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_advance_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_advance_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32, i32*, i32* }

@ACPI_EC_FLAG_IBF = common dso_local global i32 0, align 4
@ACPI_EC_FLAG_OBF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*, i32)* @advance_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advance_transaction(%struct.acpi_ec* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_ec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.acpi_ec* %0, %struct.acpi_ec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %137

15:                                               ; preds = %2
  %16 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %20, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ACPI_EC_FLAG_IBF, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %34 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds i32, i32* %38, i64 %43
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @acpi_ec_write_data(%struct.acpi_ec* %33, i32 %46)
  br label %49

48:                                               ; preds = %27
  br label %126

49:                                               ; preds = %32
  br label %125

50:                                               ; preds = %15
  %51 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %57 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %55, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %50
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @ACPI_EC_FLAG_OBF, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %99

67:                                               ; preds = %62
  %68 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %69 = call i32 @acpi_ec_read_data(%struct.acpi_ec* %68)
  %70 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %71 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %76 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = getelementptr inbounds i32, i32* %74, i64 %79
  store i32 %69, i32* %81, align 4
  %82 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %83 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %88 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %86, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %67
  %94 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %95 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %93, %67
  br label %100

99:                                               ; preds = %62
  br label %126

100:                                              ; preds = %98
  br label %124

101:                                              ; preds = %50
  %102 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %103 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %108 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %106, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %101
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @ACPI_EC_FLAG_IBF, align 4
  %116 = and i32 %114, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %120 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %118, %113, %101
  br label %124

124:                                              ; preds = %123, %100
  br label %125

125:                                              ; preds = %124, %49
  br label %137

126:                                              ; preds = %99, %48
  %127 = call i64 (...) @in_interrupt()
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %131 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %129, %126
  br label %137

137:                                              ; preds = %136, %125, %14
  %138 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %139 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %138, i32 0, i32 0
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @acpi_ec_write_data(%struct.acpi_ec*, i32) #1

declare dso_local i32 @acpi_ec_read_data(%struct.acpi_ec*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
