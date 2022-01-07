; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_pinmux.c_crisv32_pinmux_alloc_fixed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_pinmux.c_crisv32_pinmux_alloc_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@pinmux_lock = common dso_local global i32 0, align 4
@pins = common dso_local global i8* null, align 8
@pinmux = common dso_local global i32 0, align 4
@regi_pinmux = common dso_local global i32 0, align 4
@rw_hwprot = common dso_local global i32 0, align 4
@PORT_C = common dso_local global i32 0, align 4
@pinmux_fixed = common dso_local global i32 0, align 4
@regk_pinmux_yes = common dso_local global i8* null, align 8
@PORT_D = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_pinmux_alloc_fixed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x i8], align 1
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @pinmux_lock, i64 %10)
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %13 = load i8*, i8** @pins, align 8
  %14 = call i32 @memcpy(i8* %12, i8* %13, i32 8)
  %15 = load i32, i32* @pinmux, align 4
  %16 = load i32, i32* @regi_pinmux, align 4
  %17 = load i32, i32* @rw_hwprot, align 4
  call void @REG_RD(%struct.TYPE_4__* sret %7, i32 %15, i32 %16, i32 %17)
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %126 [
    i32 133, label %19
    i32 132, label %25
    i32 131, label %31
    i32 130, label %37
    i32 129, label %48
    i32 138, label %54
    i32 137, label %65
    i32 136, label %76
    i32 135, label %87
    i32 139, label %98
    i32 134, label %109
    i32 128, label %117
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @PORT_C, align 4
  %21 = load i32, i32* @pinmux_fixed, align 4
  %22 = call i32 @crisv32_pinmux_alloc(i32 %20, i32 4, i32 7, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i8*, i8** @regk_pinmux_yes, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 11
  store i8* %23, i8** %24, align 8
  br label %126

25:                                               ; preds = %1
  %26 = load i32, i32* @PORT_C, align 4
  %27 = load i32, i32* @pinmux_fixed, align 4
  %28 = call i32 @crisv32_pinmux_alloc(i32 %26, i32 8, i32 11, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i8*, i8** @regk_pinmux_yes, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 10
  store i8* %29, i8** %30, align 8
  br label %126

31:                                               ; preds = %1
  %32 = load i32, i32* @PORT_C, align 4
  %33 = load i32, i32* @pinmux_fixed, align 4
  %34 = call i32 @crisv32_pinmux_alloc(i32 %32, i32 12, i32 15, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i8*, i8** @regk_pinmux_yes, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  store i8* %35, i8** %36, align 8
  br label %126

37:                                               ; preds = %1
  %38 = load i32, i32* @PORT_C, align 4
  %39 = load i32, i32* @pinmux_fixed, align 4
  %40 = call i32 @crisv32_pinmux_alloc(i32 %38, i32 0, i32 3, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @PORT_C, align 4
  %42 = load i32, i32* @pinmux_fixed, align 4
  %43 = call i32 @crisv32_pinmux_alloc(i32 %41, i32 16, i32 16, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i8*, i8** @regk_pinmux_yes, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  store i8* %46, i8** %47, align 8
  br label %126

48:                                               ; preds = %1
  %49 = load i32, i32* @PORT_D, align 4
  %50 = load i32, i32* @pinmux_fixed, align 4
  %51 = call i32 @crisv32_pinmux_alloc(i32 %49, i32 0, i32 4, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i8*, i8** @regk_pinmux_yes, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  store i8* %52, i8** %53, align 8
  br label %126

54:                                               ; preds = %1
  %55 = load i32, i32* @PORT_D, align 4
  %56 = load i32, i32* @pinmux_fixed, align 4
  %57 = call i32 @crisv32_pinmux_alloc(i32 %55, i32 5, i32 7, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @PORT_D, align 4
  %59 = load i32, i32* @pinmux_fixed, align 4
  %60 = call i32 @crisv32_pinmux_alloc(i32 %58, i32 15, i32 17, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i8*, i8** @regk_pinmux_yes, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i8* %63, i8** %64, align 8
  br label %126

65:                                               ; preds = %1
  %66 = load i32, i32* @PORT_D, align 4
  %67 = load i32, i32* @pinmux_fixed, align 4
  %68 = call i32 @crisv32_pinmux_alloc(i32 %66, i32 0, i32 4, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @PORT_E, align 4
  %70 = load i32, i32* @pinmux_fixed, align 4
  %71 = call i32 @crisv32_pinmux_alloc(i32 %69, i32 17, i32 17, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i8*, i8** @regk_pinmux_yes, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %74, i8** %75, align 8
  br label %126

76:                                               ; preds = %1
  %77 = load i32, i32* @PORT_C, align 4
  %78 = load i32, i32* @pinmux_fixed, align 4
  %79 = call i32 @crisv32_pinmux_alloc(i32 %77, i32 11, i32 15, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* @PORT_E, align 4
  %81 = load i32, i32* @pinmux_fixed, align 4
  %82 = call i32 @crisv32_pinmux_alloc(i32 %80, i32 3, i32 3, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i8*, i8** @regk_pinmux_yes, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i8* %85, i8** %86, align 8
  br label %126

87:                                               ; preds = %1
  %88 = load i32, i32* @PORT_C, align 4
  %89 = load i32, i32* @pinmux_fixed, align 4
  %90 = call i32 @crisv32_pinmux_alloc(i32 %88, i32 8, i32 10, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @PORT_C, align 4
  %92 = load i32, i32* @pinmux_fixed, align 4
  %93 = call i32 @crisv32_pinmux_alloc(i32 %91, i32 0, i32 2, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i8*, i8** @regk_pinmux_yes, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i8* %96, i8** %97, align 8
  br label %126

98:                                               ; preds = %1
  %99 = load i32, i32* @PORT_B, align 4
  %100 = load i32, i32* @pinmux_fixed, align 4
  %101 = call i32 @crisv32_pinmux_alloc(i32 %99, i32 0, i32 15, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* @PORT_D, align 4
  %103 = load i32, i32* @pinmux_fixed, align 4
  %104 = call i32 @crisv32_pinmux_alloc(i32 %102, i32 8, i32 15, i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load i8*, i8** @regk_pinmux_yes, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i8* %107, i8** %108, align 8
  br label %126

109:                                              ; preds = %1
  %110 = load i32, i32* @PORT_E, align 4
  %111 = load i32, i32* @pinmux_fixed, align 4
  %112 = call i32 @crisv32_pinmux_alloc(i32 %110, i32 0, i32 17, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i8*, i8** @regk_pinmux_yes, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i8* %113, i8** %114, align 8
  %115 = load i8*, i8** @regk_pinmux_yes, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i8* %115, i8** %116, align 8
  br label %126

117:                                              ; preds = %1
  %118 = load i32, i32* @PORT_C, align 4
  %119 = load i32, i32* @pinmux_fixed, align 4
  %120 = call i32 @crisv32_pinmux_alloc(i32 %118, i32 16, i32 16, i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i8*, i8** @regk_pinmux_yes, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %121, i8** %122, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %123)
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %142

126:                                              ; preds = %1, %109, %98, %87, %76, %65, %54, %48, %37, %31, %25, %19
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @pinmux, align 4
  %131 = load i32, i32* @regi_pinmux, align 4
  %132 = load i32, i32* @rw_hwprot, align 4
  %133 = call i32 @REG_WR(i32 %130, i32 %131, i32 %132, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %7)
  br label %138

134:                                              ; preds = %126
  %135 = load i8*, i8** @pins, align 8
  %136 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %137 = call i32 @memcpy(i8* %135, i8* %136, i32 8)
  br label %138

138:                                              ; preds = %134, %129
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %139)
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %117
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local void @REG_RD(%struct.TYPE_4__* sret, i32, i32, i32) #1

declare dso_local i32 @crisv32_pinmux_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @REG_WR(i32, i32, i32, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
