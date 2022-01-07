; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_pinmux.c_crisv32_pinmux_dealloc_fixed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-a3/extr_pinmux.c_crisv32_pinmux_dealloc_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@pinmux_lock = common dso_local global i32 0, align 4
@pins = common dso_local global i8* null, align 8
@pinmux = common dso_local global i32 0, align 4
@regi_pinmux = common dso_local global i32 0, align 4
@rw_hwprot = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4
@regk_pinmux_no = common dso_local global i8* null, align 8
@PORT_C = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_pinmux_dealloc_fixed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @pinmux_lock, i64 %9)
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %12 = load i8*, i8** @pins, align 8
  %13 = call i32 @memcpy(i8* %11, i8* %12, i32 8)
  %14 = call i32 (...) @crisv32_pinmux_init()
  %15 = load i32, i32* @pinmux, align 4
  %16 = load i32, i32* @regi_pinmux, align 4
  %17 = load i32, i32* @rw_hwprot, align 4
  call void @REG_RD(%struct.TYPE_4__* sret %6, i32 %15, i32 %16, i32 %17)
  %18 = load i32, i32* %2, align 4
  switch i32 %18, label %138 [
    i32 145, label %19
    i32 129, label %34
    i32 130, label %39
    i32 128, label %49
    i32 135, label %55
    i32 134, label %60
    i32 133, label %65
    i32 132, label %70
    i32 131, label %75
    i32 138, label %80
    i32 137, label %85
    i32 136, label %90
    i32 144, label %95
    i32 143, label %100
    i32 142, label %105
    i32 141, label %115
    i32 140, label %120
    i32 139, label %129
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @PORT_B, align 4
  %21 = call i32 @crisv32_pinmux_dealloc(i32 %20, i32 8, i32 23)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @PORT_B, align 4
  %23 = call i32 @crisv32_pinmux_dealloc(i32 %22, i32 24, i32 25)
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @PORT_B, align 4
  %27 = call i32 @crisv32_pinmux_dealloc(i32 %26, i32 0, i32 7)
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i8*, i8** @regk_pinmux_no, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 18
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 19
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 20
  store i8* %30, i8** %33, align 8
  br label %141

34:                                               ; preds = %1
  %35 = load i32, i32* @PORT_B, align 4
  %36 = call i32 @crisv32_pinmux_dealloc(i32 %35, i32 27, i32 29)
  store i32 %36, i32* %3, align 4
  %37 = load i8*, i8** @regk_pinmux_no, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 16
  store i8* %37, i8** %38, align 8
  br label %141

39:                                               ; preds = %1
  %40 = load i32, i32* @PORT_B, align 4
  %41 = call i32 @crisv32_pinmux_dealloc(i32 %40, i32 27, i32 31)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @PORT_C, align 4
  %43 = call i32 @crisv32_pinmux_dealloc(i32 %42, i32 0, i32 15)
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load i8*, i8** @regk_pinmux_no, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 16
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 17
  store i8* %46, i8** %48, align 8
  br label %141

49:                                               ; preds = %1
  %50 = load i32, i32* @PORT_A, align 4
  %51 = call i32 @crisv32_pinmux_dealloc(i32 %50, i32 8, i32 18)
  store i32 %51, i32* %3, align 4
  %52 = load i8*, i8** @regk_pinmux_no, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 14
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 15
  store i8* %52, i8** %54, align 8
  br label %141

55:                                               ; preds = %1
  %56 = load i32, i32* @PORT_A, align 4
  %57 = call i32 @crisv32_pinmux_dealloc(i32 %56, i32 24, i32 25)
  store i32 %57, i32* %3, align 4
  %58 = load i8*, i8** @regk_pinmux_no, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 13
  store i8* %58, i8** %59, align 8
  br label %141

60:                                               ; preds = %1
  %61 = load i32, i32* @PORT_A, align 4
  %62 = call i32 @crisv32_pinmux_dealloc(i32 %61, i32 26, i32 27)
  store i32 %62, i32* %3, align 4
  %63 = load i8*, i8** @regk_pinmux_no, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 12
  store i8* %63, i8** %64, align 8
  br label %141

65:                                               ; preds = %1
  %66 = load i32, i32* @PORT_A, align 4
  %67 = call i32 @crisv32_pinmux_dealloc(i32 %66, i32 28, i32 29)
  store i32 %67, i32* %3, align 4
  %68 = load i8*, i8** @regk_pinmux_no, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 11
  store i8* %68, i8** %69, align 8
  br label %141

70:                                               ; preds = %1
  %71 = load i32, i32* @PORT_A, align 4
  %72 = call i32 @crisv32_pinmux_dealloc(i32 %71, i32 30, i32 31)
  store i32 %72, i32* %3, align 4
  %73 = load i8*, i8** @regk_pinmux_no, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 10
  store i8* %73, i8** %74, align 8
  br label %141

75:                                               ; preds = %1
  %76 = load i32, i32* @PORT_A, align 4
  %77 = call i32 @crisv32_pinmux_dealloc(i32 %76, i32 19, i32 23)
  store i32 %77, i32* %3, align 4
  %78 = load i8*, i8** @regk_pinmux_no, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 9
  store i8* %78, i8** %79, align 8
  br label %141

80:                                               ; preds = %1
  %81 = load i32, i32* @PORT_A, align 4
  %82 = call i32 @crisv32_pinmux_dealloc(i32 %81, i32 30, i32 30)
  store i32 %82, i32* %3, align 4
  %83 = load i8*, i8** @regk_pinmux_no, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 8
  store i8* %83, i8** %84, align 8
  br label %141

85:                                               ; preds = %1
  %86 = load i32, i32* @PORT_A, align 4
  %87 = call i32 @crisv32_pinmux_dealloc(i32 %86, i32 31, i32 31)
  store i32 %87, i32* %3, align 4
  %88 = load i8*, i8** @regk_pinmux_no, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 7
  store i8* %88, i8** %89, align 8
  br label %141

90:                                               ; preds = %1
  %91 = load i32, i32* @PORT_B, align 4
  %92 = call i32 @crisv32_pinmux_dealloc(i32 %91, i32 26, i32 26)
  store i32 %92, i32* %3, align 4
  %93 = load i8*, i8** @regk_pinmux_no, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 6
  store i8* %93, i8** %94, align 8
  br label %141

95:                                               ; preds = %1
  %96 = load i32, i32* @PORT_A, align 4
  %97 = call i32 @crisv32_pinmux_dealloc(i32 %96, i32 0, i32 1)
  store i32 %97, i32* %3, align 4
  %98 = load i8*, i8** @regk_pinmux_no, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 5
  store i8* %98, i8** %99, align 8
  br label %141

100:                                              ; preds = %1
  %101 = load i32, i32* @PORT_A, align 4
  %102 = call i32 @crisv32_pinmux_dealloc(i32 %101, i32 2, i32 3)
  store i32 %102, i32* %3, align 4
  %103 = load i8*, i8** @regk_pinmux_no, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i8* %103, i8** %104, align 8
  br label %141

105:                                              ; preds = %1
  %106 = load i32, i32* @PORT_A, align 4
  %107 = call i32 @crisv32_pinmux_dealloc(i32 %106, i32 2, i32 3)
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* @PORT_A, align 4
  %109 = call i32 @crisv32_pinmux_dealloc(i32 %108, i32 7, i32 7)
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %3, align 4
  %112 = load i8*, i8** @regk_pinmux_no, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i8* %112, i8** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  br label %141

115:                                              ; preds = %1
  %116 = load i32, i32* @PORT_A, align 4
  %117 = call i32 @crisv32_pinmux_dealloc(i32 %116, i32 2, i32 4)
  store i32 %117, i32* %3, align 4
  %118 = load i8*, i8** @regk_pinmux_no, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i8* %118, i8** %119, align 8
  br label %141

120:                                              ; preds = %1
  %121 = load i32, i32* @PORT_A, align 4
  %122 = call i32 @crisv32_pinmux_dealloc(i32 %121, i32 2, i32 3)
  store i32 %122, i32* %3, align 4
  %123 = load i32, i32* @PORT_A, align 4
  %124 = call i32 @crisv32_pinmux_dealloc(i32 %123, i32 5, i32 5)
  %125 = load i32, i32* %3, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %3, align 4
  %127 = load i8*, i8** @regk_pinmux_no, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i8* %127, i8** %128, align 8
  br label %141

129:                                              ; preds = %1
  %130 = load i32, i32* @PORT_A, align 4
  %131 = call i32 @crisv32_pinmux_dealloc(i32 %130, i32 2, i32 3)
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* @PORT_A, align 4
  %133 = call i32 @crisv32_pinmux_dealloc(i32 %132, i32 6, i32 6)
  %134 = load i32, i32* %3, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %3, align 4
  %136 = load i8*, i8** @regk_pinmux_no, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i8* %136, i8** %137, align 8
  br label %141

138:                                              ; preds = %1
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %138, %129, %120, %115, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %49, %39, %34, %19
  %142 = load i32, i32* %3, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* @pinmux, align 4
  %146 = load i32, i32* @regi_pinmux, align 4
  %147 = load i32, i32* @rw_hwprot, align 4
  %148 = call i32 @REG_WR(i32 %145, i32 %146, i32 %147, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %6)
  br label %153

149:                                              ; preds = %141
  %150 = load i8*, i8** @pins, align 8
  %151 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %152 = call i32 @memcpy(i8* %150, i8* %151, i32 8)
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %154)
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crisv32_pinmux_init(...) #1

declare dso_local void @REG_RD(%struct.TYPE_4__* sret, i32, i32, i32) #1

declare dso_local i32 @crisv32_pinmux_dealloc(i32, i32, i32) #1

declare dso_local i32 @REG_WR(i32, i32, i32, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
