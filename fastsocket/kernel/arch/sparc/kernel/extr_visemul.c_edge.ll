; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_visemul.c_edge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_visemul.c_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.pt_regs = type { i64 }

@TIF_32BIT = common dso_local global i32 0, align 4
@edge8_tab = common dso_local global %struct.TYPE_8__* null, align 8
@edge8_tab_l = common dso_local global %struct.TYPE_7__* null, align 8
@edge16_tab = common dso_local global %struct.TYPE_12__* null, align 8
@edge16_tab_l = common dso_local global %struct.TYPE_11__* null, align 8
@edge32_tab = common dso_local global %struct.TYPE_10__* null, align 8
@edge32_tab_l = common dso_local global %struct.TYPE_9__* null, align 8
@TSTATE_XCC = common dso_local global i64 0, align 8
@TSTATE_ICC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32, i32)* @edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edge(%struct.pt_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @RS1(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @RS2(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @RD(i32 %20)
  %22 = call i32 @maybe_flush_windows(i32 %17, i32 %19, i32 %21, i32 0)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RS1(i32 %23)
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = call i64 @fetch_reg(i32 %24, %struct.pt_regs* %25)
  store i64 %26, i64* %8, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @RS2(i32 %27)
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = call i64 @fetch_reg(i32 %28, %struct.pt_regs* %29)
  store i64 %30, i64* %10, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i32, i32* @TIF_32BIT, align 4
  %32 = call i64 @test_thread_flag(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load i64, i64* %8, align 8
  %36 = and i64 %35, 4294967295
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = and i64 %37, 4294967295
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %34, %3
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %41 [
    i32 128, label %42
    i32 129, label %42
    i32 130, label %55
    i32 131, label %55
    i32 136, label %68
    i32 137, label %68
    i32 138, label %83
    i32 139, label %83
    i32 132, label %98
    i32 133, label %98
    i32 134, label %113
    i32 135, label %113
  ]

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %39, %39, %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @edge8_tab, align 8
  %44 = load i64, i64* %8, align 8
  %45 = and i64 %44, 7
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @edge8_tab, align 8
  %50 = load i64, i64* %10, align 8
  %51 = and i64 %50, 7
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  br label %128

55:                                               ; preds = %39, %39
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @edge8_tab_l, align 8
  %57 = load i64, i64* %8, align 8
  %58 = and i64 %57, 7
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @edge8_tab_l, align 8
  %63 = load i64, i64* %10, align 8
  %64 = and i64 %63, 7
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %13, align 8
  br label %128

68:                                               ; preds = %39, %39
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @edge16_tab, align 8
  %70 = load i64, i64* %8, align 8
  %71 = lshr i64 %70, 1
  %72 = and i64 %71, 3
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %12, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @edge16_tab, align 8
  %77 = load i64, i64* %10, align 8
  %78 = lshr i64 %77, 1
  %79 = and i64 %78, 3
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %13, align 8
  br label %128

83:                                               ; preds = %39, %39
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** @edge16_tab_l, align 8
  %85 = load i64, i64* %8, align 8
  %86 = lshr i64 %85, 1
  %87 = and i64 %86, 3
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %12, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @edge16_tab_l, align 8
  %92 = load i64, i64* %10, align 8
  %93 = lshr i64 %92, 1
  %94 = and i64 %93, 3
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %13, align 8
  br label %128

98:                                               ; preds = %39, %39
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @edge32_tab, align 8
  %100 = load i64, i64* %8, align 8
  %101 = lshr i64 %100, 2
  %102 = and i64 %101, 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %12, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** @edge32_tab, align 8
  %107 = load i64, i64* %10, align 8
  %108 = lshr i64 %107, 2
  %109 = and i64 %108, 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %13, align 8
  br label %128

113:                                              ; preds = %39, %39
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** @edge32_tab_l, align 8
  %115 = load i64, i64* %8, align 8
  %116 = lshr i64 %115, 2
  %117 = and i64 %116, 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %12, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** @edge32_tab_l, align 8
  %122 = load i64, i64* %10, align 8
  %123 = lshr i64 %122, 2
  %124 = and i64 %123, 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %13, align 8
  br label %128

128:                                              ; preds = %113, %98, %83, %68, %55, %42
  %129 = load i64, i64* %8, align 8
  %130 = and i64 %129, -8
  %131 = load i64, i64* %10, align 8
  %132 = and i64 %131, -8
  %133 = icmp eq i64 %130, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %12, align 8
  %137 = and i64 %135, %136
  store i64 %137, i64* %11, align 8
  br label %140

138:                                              ; preds = %128
  %139 = load i64, i64* %12, align 8
  store i64 %139, i64* %11, align 8
  br label %140

140:                                              ; preds = %138, %134
  %141 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %142 = load i64, i64* %11, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @RD(i32 %143)
  %145 = call i32 @store_reg(%struct.pt_regs* %141, i64 %142, i32 %144)
  %146 = load i32, i32* %6, align 4
  switch i32 %146, label %165 [
    i32 128, label %147
    i32 130, label %147
    i32 136, label %147
    i32 138, label %147
    i32 132, label %147
    i32 134, label %147
  ]

147:                                              ; preds = %140, %140, %140, %140, %140, %140
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* %9, align 8
  %150 = call i64 asm sideeffect "subcc\09$1, $2, %g0\0A\09rd\09%ccr, $0", "=r,r,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %148, i64 %149) #2, !srcloc !2
  store i64 %150, i64* %14, align 8
  %151 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %152 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @TSTATE_XCC, align 8
  %155 = load i64, i64* @TSTATE_ICC, align 8
  %156 = or i64 %154, %155
  %157 = xor i64 %156, -1
  %158 = and i64 %153, %157
  store i64 %158, i64* %15, align 8
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* %14, align 8
  %161 = shl i64 %160, 32
  %162 = or i64 %159, %161
  %163 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %164 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %147, %140
  ret void
}

declare dso_local i32 @maybe_flush_windows(i32, i32, i32, i32) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @RS2(i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i64 @fetch_reg(i32, %struct.pt_regs*) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @store_reg(%struct.pt_regs*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2703, i32 2724}
