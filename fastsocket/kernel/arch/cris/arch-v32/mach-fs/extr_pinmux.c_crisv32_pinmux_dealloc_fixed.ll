; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_pinmux.c_crisv32_pinmux_dealloc_fixed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_pinmux.c_crisv32_pinmux_dealloc_fixed.c"
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
@regk_pinmux_no = common dso_local global i8* null, align 8
@PORT_D = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_pinmux_dealloc_fixed(i32 %0) #0 {
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
  switch i32 %19, label %109 [
    i32 133, label %20
    i32 132, label %25
    i32 131, label %30
    i32 130, label %35
    i32 129, label %44
    i32 138, label %49
    i32 137, label %58
    i32 136, label %67
    i32 135, label %76
    i32 139, label %85
    i32 134, label %94
    i32 128, label %101
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @PORT_C, align 4
  %22 = call i32 @crisv32_pinmux_dealloc(i32 %21, i32 4, i32 7)
  store i32 %22, i32* %4, align 4
  %23 = load i8*, i8** @regk_pinmux_no, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 11
  store i8* %23, i8** %24, align 8
  br label %109

25:                                               ; preds = %1
  %26 = load i32, i32* @PORT_C, align 4
  %27 = call i32 @crisv32_pinmux_dealloc(i32 %26, i32 8, i32 11)
  store i32 %27, i32* %4, align 4
  %28 = load i8*, i8** @regk_pinmux_no, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 10
  store i8* %28, i8** %29, align 8
  br label %109

30:                                               ; preds = %1
  %31 = load i32, i32* @PORT_C, align 4
  %32 = call i32 @crisv32_pinmux_dealloc(i32 %31, i32 12, i32 15)
  store i32 %32, i32* %4, align 4
  %33 = load i8*, i8** @regk_pinmux_no, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 9
  store i8* %33, i8** %34, align 8
  br label %109

35:                                               ; preds = %1
  %36 = load i32, i32* @PORT_C, align 4
  %37 = call i32 @crisv32_pinmux_dealloc(i32 %36, i32 0, i32 3)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @PORT_C, align 4
  %39 = call i32 @crisv32_pinmux_dealloc(i32 %38, i32 16, i32 16)
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i8*, i8** @regk_pinmux_no, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  store i8* %42, i8** %43, align 8
  br label %109

44:                                               ; preds = %1
  %45 = load i32, i32* @PORT_D, align 4
  %46 = call i32 @crisv32_pinmux_dealloc(i32 %45, i32 0, i32 4)
  store i32 %46, i32* %4, align 4
  %47 = load i8*, i8** @regk_pinmux_no, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 7
  store i8* %47, i8** %48, align 8
  br label %109

49:                                               ; preds = %1
  %50 = load i32, i32* @PORT_D, align 4
  %51 = call i32 @crisv32_pinmux_dealloc(i32 %50, i32 5, i32 7)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @PORT_D, align 4
  %53 = call i32 @crisv32_pinmux_dealloc(i32 %52, i32 15, i32 17)
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i8*, i8** @regk_pinmux_no, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i8* %56, i8** %57, align 8
  br label %109

58:                                               ; preds = %1
  %59 = load i32, i32* @PORT_D, align 4
  %60 = call i32 @crisv32_pinmux_dealloc(i32 %59, i32 0, i32 4)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @PORT_E, align 4
  %62 = call i32 @crisv32_pinmux_dealloc(i32 %61, i32 17, i32 17)
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i8*, i8** @regk_pinmux_no, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i8* %65, i8** %66, align 8
  br label %109

67:                                               ; preds = %1
  %68 = load i32, i32* @PORT_C, align 4
  %69 = call i32 @crisv32_pinmux_dealloc(i32 %68, i32 11, i32 15)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @PORT_E, align 4
  %71 = call i32 @crisv32_pinmux_dealloc(i32 %70, i32 3, i32 3)
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i8*, i8** @regk_pinmux_no, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i8* %74, i8** %75, align 8
  br label %109

76:                                               ; preds = %1
  %77 = load i32, i32* @PORT_C, align 4
  %78 = call i32 @crisv32_pinmux_dealloc(i32 %77, i32 8, i32 10)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @PORT_C, align 4
  %80 = call i32 @crisv32_pinmux_dealloc(i32 %79, i32 0, i32 2)
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i8*, i8** @regk_pinmux_no, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i8* %83, i8** %84, align 8
  br label %109

85:                                               ; preds = %1
  %86 = load i32, i32* @PORT_B, align 4
  %87 = call i32 @crisv32_pinmux_dealloc(i32 %86, i32 0, i32 15)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* @PORT_D, align 4
  %89 = call i32 @crisv32_pinmux_dealloc(i32 %88, i32 8, i32 15)
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i8*, i8** @regk_pinmux_no, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i8* %92, i8** %93, align 8
  br label %109

94:                                               ; preds = %1
  %95 = load i32, i32* @PORT_E, align 4
  %96 = call i32 @crisv32_pinmux_dealloc(i32 %95, i32 0, i32 17)
  store i32 %96, i32* %4, align 4
  %97 = load i8*, i8** @regk_pinmux_no, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i8* %97, i8** %98, align 8
  %99 = load i8*, i8** @regk_pinmux_no, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  br label %109

101:                                              ; preds = %1
  %102 = load i32, i32* @PORT_C, align 4
  %103 = call i32 @crisv32_pinmux_dealloc(i32 %102, i32 16, i32 16)
  store i32 %103, i32* %4, align 4
  %104 = load i8*, i8** @regk_pinmux_no, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %104, i8** %105, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %106)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %2, align 4
  br label %125

109:                                              ; preds = %1, %94, %85, %76, %67, %58, %49, %44, %35, %30, %25, %20
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @pinmux, align 4
  %114 = load i32, i32* @regi_pinmux, align 4
  %115 = load i32, i32* @rw_hwprot, align 4
  %116 = call i32 @REG_WR(i32 %113, i32 %114, i32 %115, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %7)
  br label %121

117:                                              ; preds = %109
  %118 = load i8*, i8** @pins, align 8
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %120 = call i32 @memcpy(i8* %118, i8* %119, i32 8)
  br label %121

121:                                              ; preds = %117, %112
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* @pinmux_lock, i64 %122)
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %101
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crisv32_pinmux_init(...) #1

declare dso_local void @REG_RD(%struct.TYPE_4__* sret, i32, i32, i32) #1

declare dso_local i32 @crisv32_pinmux_dealloc(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @REG_WR(i32, i32, i32, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
