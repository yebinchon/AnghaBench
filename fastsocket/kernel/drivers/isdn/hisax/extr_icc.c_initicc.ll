; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_icc.c_initicc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_icc.c_initicc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32)*, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@setstack_icc = common dso_local global i32 0, align 4
@DC_Close_icc = common dso_local global i32 0, align 4
@ICC_MASK = common dso_local global i32 0, align 4
@HW_IOM1 = common dso_local global i32 0, align 4
@ICC_ADF2 = common dso_local global i32 0, align 4
@ICC_SPCR = common dso_local global i32 0, align 4
@ICC_ADF1 = common dso_local global i32 0, align 4
@ICC_STCR = common dso_local global i32 0, align 4
@ICC_MODE = common dso_local global i32 0, align 4
@ICC_SQXR = common dso_local global i32 0, align 4
@ICC_TIMR = common dso_local global i32 0, align 4
@ICC_CMD_RES = common dso_local global i32 0, align 4
@ICC_CMD_DI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initicc(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load i32, i32* @setstack_icc, align 4
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @DC_Close_icc, align 4
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %10 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 0
  %19 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %18, align 8
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %21 = load i32, i32* @ICC_MASK, align 4
  %22 = call i32 %19(%struct.IsdnCardState* %20, i32 %21, i32 255)
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %24 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 170, i32* %26, align 8
  %27 = load i32, i32* @HW_IOM1, align 4
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %1
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %34 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %33, i32 0, i32 0
  %35 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %34, align 8
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %37 = load i32, i32* @ICC_ADF2, align 4
  %38 = call i32 %35(%struct.IsdnCardState* %36, i32 %37, i32 0)
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 0
  %41 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %40, align 8
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %43 = load i32, i32* @ICC_SPCR, align 4
  %44 = call i32 %41(%struct.IsdnCardState* %42, i32 %43, i32 10)
  %45 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %46 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %45, i32 0, i32 0
  %47 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %46, align 8
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %49 = load i32, i32* @ICC_ADF1, align 4
  %50 = call i32 %47(%struct.IsdnCardState* %48, i32 %49, i32 2)
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %52 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %51, i32 0, i32 0
  %53 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %52, align 8
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %55 = load i32, i32* @ICC_STCR, align 4
  %56 = call i32 %53(%struct.IsdnCardState* %54, i32 %55, i32 112)
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %58 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %57, i32 0, i32 0
  %59 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %58, align 8
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %61 = load i32, i32* @ICC_MODE, align 4
  %62 = call i32 %59(%struct.IsdnCardState* %60, i32 %61, i32 201)
  br label %123

63:                                               ; preds = %1
  %64 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %65 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %63
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 128, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %63
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 0
  %78 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %77, align 8
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %80 = load i32, i32* @ICC_ADF2, align 4
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 %78(%struct.IsdnCardState* %79, i32 %80, i32 %85)
  %87 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %88 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %87, i32 0, i32 0
  %89 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %88, align 8
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %91 = load i32, i32* @ICC_SQXR, align 4
  %92 = call i32 %89(%struct.IsdnCardState* %90, i32 %91, i32 160)
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 0
  %95 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %94, align 8
  %96 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %97 = load i32, i32* @ICC_SPCR, align 4
  %98 = call i32 %95(%struct.IsdnCardState* %96, i32 %97, i32 32)
  %99 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %100 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %99, i32 0, i32 0
  %101 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %100, align 8
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %103 = load i32, i32* @ICC_STCR, align 4
  %104 = call i32 %101(%struct.IsdnCardState* %102, i32 %103, i32 112)
  %105 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %106 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %105, i32 0, i32 0
  %107 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %106, align 8
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %109 = load i32, i32* @ICC_MODE, align 4
  %110 = call i32 %107(%struct.IsdnCardState* %108, i32 %109, i32 202)
  %111 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %112 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %111, i32 0, i32 0
  %113 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %112, align 8
  %114 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %115 = load i32, i32* @ICC_TIMR, align 4
  %116 = call i32 %113(%struct.IsdnCardState* %114, i32 %115, i32 0)
  %117 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %118 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %117, i32 0, i32 0
  %119 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %118, align 8
  %120 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %121 = load i32, i32* @ICC_ADF1, align 4
  %122 = call i32 %119(%struct.IsdnCardState* %120, i32 %121, i32 32)
  br label %123

123:                                              ; preds = %75, %32
  %124 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %125 = load i32, i32* @ICC_CMD_RES, align 4
  %126 = call i32 @ph_command(%struct.IsdnCardState* %124, i32 %125)
  %127 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %128 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %127, i32 0, i32 0
  %129 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %128, align 8
  %130 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %131 = load i32, i32* @ICC_MASK, align 4
  %132 = call i32 %129(%struct.IsdnCardState* %130, i32 %131, i32 0)
  %133 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %134 = load i32, i32* @ICC_CMD_DI, align 4
  %135 = call i32 @ph_command(%struct.IsdnCardState* %133, i32 %134)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ph_command(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
