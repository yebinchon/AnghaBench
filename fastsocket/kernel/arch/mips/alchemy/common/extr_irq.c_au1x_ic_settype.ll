; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_irq.c_au1x_ic_settype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_irq.c_au1x_ic_settype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32 }

@AU1000_INTC1_INT_BASE = common dso_local global i32 0, align 4
@au1x_ic1_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@AU1000_INTC0_INT_BASE = common dso_local global i32 0, align 4
@au1x_ic0_chip = common dso_local global %struct.irq_chip zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@IC1_CFG0SET = common dso_local global i64 0, align 8
@IC0_CFG0SET = common dso_local global i64 0, align 8
@IC1_CFG1SET = common dso_local global i64 0, align 8
@IC0_CFG1SET = common dso_local global i64 0, align 8
@IC1_CFG2SET = common dso_local global i64 0, align 8
@IC0_CFG2SET = common dso_local global i64 0, align 8
@IC1_CFG0CLR = common dso_local global i64 0, align 8
@IC0_CFG0CLR = common dso_local global i64 0, align 8
@IC1_CFG1CLR = common dso_local global i64 0, align 8
@IC0_CFG1CLR = common dso_local global i64 0, align 8
@IC1_CFG2CLR = common dso_local global i64 0, align 8
@IC0_CFG2CLR = common dso_local global i64 0, align 8
@handle_edge_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"riseedge\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"falledge\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bothedge\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"hilevel\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"lowlevel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @au1x_ic_settype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1x_ic_settype(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca [6 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AU1000_INTC1_INT_BASE, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AU1000_INTC1_INT_BASE, align 4
  %17 = sub i32 %15, %16
  store i32 %17, i32* %8, align 4
  store %struct.irq_chip* @au1x_ic1_chip, %struct.irq_chip** %6, align 8
  store i32 1, i32* %9, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AU1000_INTC0_INT_BASE, align 4
  %21 = sub i32 %19, %20
  store i32 %21, i32* %8, align 4
  store %struct.irq_chip* @au1x_ic0_chip, %struct.irq_chip** %6, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %8, align 4
  %24 = icmp ugt i32 %23, 31
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %209

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* @IC1_CFG0SET, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @IC0_CFG0SET, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  %37 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 0
  store i64 %36, i64* %37, align 16
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* @IC1_CFG1SET, align 8
  br label %44

42:                                               ; preds = %35
  %43 = load i64, i64* @IC0_CFG1SET, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  %46 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 1
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @IC1_CFG2SET, align 8
  br label %53

51:                                               ; preds = %44
  %52 = load i64, i64* @IC0_CFG2SET, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  %55 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 2
  store i64 %54, i64* %55, align 16
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @IC1_CFG0CLR, align 8
  br label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @IC0_CFG0CLR, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i64 [ %59, %58 ], [ %61, %60 ]
  %64 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 3
  store i64 %63, i64* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @IC1_CFG1CLR, align 8
  br label %71

69:                                               ; preds = %62
  %70 = load i64, i64* @IC0_CFG1CLR, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i64 [ %68, %67 ], [ %70, %69 ]
  %73 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 4
  store i64 %72, i64* %73, align 16
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64, i64* @IC1_CFG2CLR, align 8
  br label %80

78:                                               ; preds = %71
  %79 = load i64, i64* @IC0_CFG2CLR, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %79, %78 ]
  %82 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 5
  store i64 %81, i64* %82, align 8
  store i32 0, i32* %10, align 4
  %83 = load i32, i32* %5, align 4
  switch i32 %83, label %203 [
    i32 131, label %84
    i32 132, label %104
    i32 133, label %124
    i32 130, label %144
    i32 129, label %164
    i32 128, label %184
  ]

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 1, %85
  %87 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 5
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @au_writel(i32 %86, i64 %88)
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 1, %90
  %92 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 4
  %93 = load i64, i64* %92, align 16
  %94 = call i32 @au_writel(i32 %91, i64 %93)
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 1, %95
  %97 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 0
  %98 = load i64, i64* %97, align 16
  %99 = call i32 @au_writel(i32 %96, i64 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %102 = load i32, i32* @handle_edge_irq, align 4
  %103 = call i32 @set_irq_chip_and_handler_name(i32 %100, %struct.irq_chip* %101, i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %206

104:                                              ; preds = %80
  %105 = load i32, i32* %8, align 4
  %106 = shl i32 1, %105
  %107 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 5
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @au_writel(i32 %106, i64 %108)
  %110 = load i32, i32* %8, align 4
  %111 = shl i32 1, %110
  %112 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @au_writel(i32 %111, i64 %113)
  %115 = load i32, i32* %8, align 4
  %116 = shl i32 1, %115
  %117 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @au_writel(i32 %116, i64 %118)
  %120 = load i32, i32* %4, align 4
  %121 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %122 = load i32, i32* @handle_edge_irq, align 4
  %123 = call i32 @set_irq_chip_and_handler_name(i32 %120, %struct.irq_chip* %121, i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %206

124:                                              ; preds = %80
  %125 = load i32, i32* %8, align 4
  %126 = shl i32 1, %125
  %127 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 5
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @au_writel(i32 %126, i64 %128)
  %130 = load i32, i32* %8, align 4
  %131 = shl i32 1, %130
  %132 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @au_writel(i32 %131, i64 %133)
  %135 = load i32, i32* %8, align 4
  %136 = shl i32 1, %135
  %137 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 0
  %138 = load i64, i64* %137, align 16
  %139 = call i32 @au_writel(i32 %136, i64 %138)
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %142 = load i32, i32* @handle_edge_irq, align 4
  %143 = call i32 @set_irq_chip_and_handler_name(i32 %140, %struct.irq_chip* %141, i32 %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %206

144:                                              ; preds = %80
  %145 = load i32, i32* %8, align 4
  %146 = shl i32 1, %145
  %147 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 2
  %148 = load i64, i64* %147, align 16
  %149 = call i32 @au_writel(i32 %146, i64 %148)
  %150 = load i32, i32* %8, align 4
  %151 = shl i32 1, %150
  %152 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 4
  %153 = load i64, i64* %152, align 16
  %154 = call i32 @au_writel(i32 %151, i64 %153)
  %155 = load i32, i32* %8, align 4
  %156 = shl i32 1, %155
  %157 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 0
  %158 = load i64, i64* %157, align 16
  %159 = call i32 @au_writel(i32 %156, i64 %158)
  %160 = load i32, i32* %4, align 4
  %161 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %162 = load i32, i32* @handle_level_irq, align 4
  %163 = call i32 @set_irq_chip_and_handler_name(i32 %160, %struct.irq_chip* %161, i32 %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %206

164:                                              ; preds = %80
  %165 = load i32, i32* %8, align 4
  %166 = shl i32 1, %165
  %167 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 2
  %168 = load i64, i64* %167, align 16
  %169 = call i32 @au_writel(i32 %166, i64 %168)
  %170 = load i32, i32* %8, align 4
  %171 = shl i32 1, %170
  %172 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @au_writel(i32 %171, i64 %173)
  %175 = load i32, i32* %8, align 4
  %176 = shl i32 1, %175
  %177 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 3
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @au_writel(i32 %176, i64 %178)
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %182 = load i32, i32* @handle_level_irq, align 4
  %183 = call i32 @set_irq_chip_and_handler_name(i32 %180, %struct.irq_chip* %181, i32 %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %206

184:                                              ; preds = %80
  %185 = load i32, i32* %8, align 4
  %186 = shl i32 1, %185
  %187 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 5
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @au_writel(i32 %186, i64 %188)
  %190 = load i32, i32* %8, align 4
  %191 = shl i32 1, %190
  %192 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 4
  %193 = load i64, i64* %192, align 16
  %194 = call i32 @au_writel(i32 %191, i64 %193)
  %195 = load i32, i32* %8, align 4
  %196 = shl i32 1, %195
  %197 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i64 0, i64 3
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @au_writel(i32 %196, i64 %198)
  %200 = load i32, i32* %4, align 4
  %201 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  %202 = call i32 @set_irq_chip(i32 %200, %struct.irq_chip* %201)
  br label %206

203:                                              ; preds = %80
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %203, %184, %164, %144, %124, %104, %84
  %207 = call i32 (...) @au_sync()
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %206, %25
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @au_writel(i32, i64) #1

declare dso_local i32 @set_irq_chip_and_handler_name(i32, %struct.irq_chip*, i32, i8*) #1

declare dso_local i32 @set_irq_chip(i32, %struct.irq_chip*) #1

declare dso_local i32 @au_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
