; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_pinmux.c_crisv32_pinmux_alloc_fixed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_pinmux.c_crisv32_pinmux_alloc_fixed.c"
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
  %15 = call i32 (...) @crisv32_pinmux_init()
  %16 = load i32, i32* @pinmux, align 4
  %17 = load i32, i32* @regi_pinmux, align 4
  %18 = load i32, i32* @rw_hwprot, align 4
  call void @REG_RD(%struct.TYPE_4__* sret %7, i32 %16, i32 %17, i32 %18)
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %127 [
    i32 133, label %20
    i32 132, label %26
    i32 131, label %32
    i32 130, label %38
    i32 129, label %49
    i32 138, label %55
    i32 137, label %66
    i32 136, label %77
    i32 135, label %88
    i32 139, label %99
    i32 134, label %110
    i32 128, label %118
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @PORT_C, align 4
  %22 = load i32, i32* @pinmux_fixed, align 4
  %23 = call i32 @crisv32_pinmux_alloc(i32 %21, i32 4, i32 7, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i8*, i8** @regk_pinmux_yes, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 11
  store i8* %24, i8** %25, align 8
  br label %127

26:                                               ; preds = %1
  %27 = load i32, i32* @PORT_C, align 4
  %28 = load i32, i32* @pinmux_fixed, align 4
  %29 = call i32 @crisv32_pinmux_alloc(i32 %27, i32 8, i32 11, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i8*, i8** @regk_pinmux_yes, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 10
  store i8* %30, i8** %31, align 8
  br label %127

32:                                               ; preds = %1
  %33 = load i32, i32* @PORT_C, align 4
  %34 = load i32, i32* @pinmux_fixed, align 4
  %35 = call i32 @crisv32_pinmux_alloc(i32 %33, i32 12, i32 15, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i8*, i8** @regk_pinmux_yes, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  store i8* %36, i8** %37, align 8
  br label %127

38:                                               ; preds = %1
  %39 = load i32, i32* @PORT_C, align 4
  %40 = load i32, i32* @pinmux_fixed, align 4
  %41 = call i32 @crisv32_pinmux_alloc(i32 %39, i32 0, i32 3, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @PORT_C, align 4
  %43 = load i32, i32* @pinmux_fixed, align 4
  %44 = call i32 @crisv32_pinmux_alloc(i32 %42, i32 16, i32 16, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i8*, i8** @regk_pinmux_yes, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  store i8* %47, i8** %48, align 8
  br label %127

49:                                               ; preds = %1
  %50 = load i32, i32* @PORT_D, align 4
  %51 = load i32, i32* @pinmux_fixed, align 4
  %52 = call i32 @crisv32_pinmux_alloc(i32 %50, i32 0, i32 4, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i8*, i8** @regk_pinmux_yes, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  store i8* %53, i8** %54, align 8
  br label %127

55:                                               ; preds = %1
  %56 = load i32, i32* @PORT_D, align 4
  %57 = load i32, i32* @pinmux_fixed, align 4
  %58 = call i32 @crisv32_pinmux_alloc(i32 %56, i32 5, i32 7, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @PORT_D, align 4
  %60 = load i32, i32* @pinmux_fixed, align 4
  %61 = call i32 @crisv32_pinmux_alloc(i32 %59, i32 15, i32 17, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i8*, i8** @regk_pinmux_yes, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i8* %64, i8** %65, align 8
  br label %127

66:                                               ; preds = %1
  %67 = load i32, i32* @PORT_D, align 4
  %68 = load i32, i32* @pinmux_fixed, align 4
  %69 = call i32 @crisv32_pinmux_alloc(i32 %67, i32 0, i32 4, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @PORT_E, align 4
  %71 = load i32, i32* @pinmux_fixed, align 4
  %72 = call i32 @crisv32_pinmux_alloc(i32 %70, i32 17, i32 17, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i8*, i8** @regk_pinmux_yes, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %75, i8** %76, align 8
  br label %127

77:                                               ; preds = %1
  %78 = load i32, i32* @PORT_C, align 4
  %79 = load i32, i32* @pinmux_fixed, align 4
  %80 = call i32 @crisv32_pinmux_alloc(i32 %78, i32 11, i32 15, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @PORT_E, align 4
  %82 = load i32, i32* @pinmux_fixed, align 4
  %83 = call i32 @crisv32_pinmux_alloc(i32 %81, i32 3, i32 3, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i8*, i8** @regk_pinmux_yes, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i8* %86, i8** %87, align 8
  br label %127

88:                                               ; preds = %1
  %89 = load i32, i32* @PORT_C, align 4
  %90 = load i32, i32* @pinmux_fixed, align 4
  %91 = call i32 @crisv32_pinmux_alloc(i32 %89, i32 8, i32 10, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @PORT_C, align 4
  %93 = load i32, i32* @pinmux_fixed, align 4
  %94 = call i32 @crisv32_pinmux_alloc(i32 %92, i32 0, i32 2, i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load i8*, i8** @regk_pinmux_yes, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i8* %97, i8** %98, align 8
  br label %127

99:                                               ; preds = %1
  %100 = load i32, i32* @PORT_B, align 4
  %101 = load i32, i32* @pinmux_fixed, align 4
  %102 = call i32 @crisv32_pinmux_alloc(i32 %100, i32 0, i32 15, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* @PORT_D, align 4
  %104 = load i32, i32* @pinmux_fixed, align 4
  %105 = call i32 @crisv32_pinmux_alloc(i32 %103, i32 8, i32 15, i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i8*, i8** @regk_pinmux_yes, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i8* %108, i8** %109, align 8
  br label %127

110:                                              ; preds = %1
  %111 = load i32, i32* @PORT_E, align 4
  %112 = load i32, i32* @pinmux_fixed, align 4
  %113 = call i32 @crisv32_pinmux_alloc(i32 %111, i32 0, i32 17, i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i8*, i8** @regk_pinmux_yes, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i8* %114, i8** %115, align 8
  %116 = load i8*, i8** @regk_pinmux_yes, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i8* %116, i8** %117, align 8
  br label %127

118:                                              ; preds = %1
  %119 = load i32, i32* @PORT_C, align 4
  %120 = load i32, i32* @pinmux_fixed, align 4
  %121 = call i32 @crisv32_pinmux_alloc(i32 %119, i32 16, i32 16, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i8*, i8** @regk_pinmux_yes, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %122, i8** %123, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %124)
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %143

127:                                              ; preds = %1, %110, %99, %88, %77, %66, %55, %49, %38, %32, %26, %20
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @pinmux, align 4
  %132 = load i32, i32* @regi_pinmux, align 4
  %133 = load i32, i32* @rw_hwprot, align 4
  %134 = call i32 @REG_WR(i32 %131, i32 %132, i32 %133, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %7)
  br label %139

135:                                              ; preds = %127
  %136 = load i8*, i8** @pins, align 8
  %137 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %138 = call i32 @memcpy(i8* %136, i8* %137, i32 8)
  br label %139

139:                                              ; preds = %135, %130
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %140)
  %142 = load i32, i32* %4, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %139, %118
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crisv32_pinmux_init(...) #1

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
