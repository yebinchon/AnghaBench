; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_i_APCI3200_Reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3200.c_i_APCI3200_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.comedi_device = type { i64 }

@s_BoardInfos = common dso_local global %struct.TYPE_3__* null, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3200_Reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %24 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 96
  %39 = call i32 @outl(i32 -2088533117, i64 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 56
  %44 = call i32 @inl(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, 8192
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 56
  %51 = call i32 @outl(i32 %46, i64 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @outl(i32 0, i64 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %70, %1
  %57 = load i32, i32* %3, align 4
  %58 = icmp sle i32 %57, 95
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_BoardInfos, align 8
  %61 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %62 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %56

73:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %3, align 4
  %76 = icmp sle i32 %75, 192
  br i1 %76, label %77, label %102

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %90, %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = add nsw i64 %84, 12
  %86 = call i32 @inl(i64 %85)
  %87 = ashr i32 %86, 19
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %78

91:                                               ; preds = %78
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = add nsw i64 %97, 8
  %99 = call i32 @outl(i32 0, i64 %98)
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 64
  store i32 %101, i32* %3, align 4
  br label %74

102:                                              ; preds = %74
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
