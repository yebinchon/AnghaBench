; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_icu.c_set_sysint2_assign.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/vr41xx/common/extr_icu.c_set_sysint2_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@INTASSIGN2 = common dso_local global i32 0, align 4
@INTASSIGN3 = common dso_local global i32 0, align 4
@INTASSIGN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@sysint2_assign = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8)* @set_sysint2_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sysint2_assign(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  %10 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i64 %12
  store %struct.irq_desc* %13, %struct.irq_desc** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @SYSINT2_IRQ_TO_PIN(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load i32, i32* @INTASSIGN2, align 4
  %20 = call i32 @icu1_read(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @INTASSIGN3, align 4
  %22 = call i32 @icu1_read(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %130 [
    i32 0, label %24
    i32 1, label %33
    i32 3, label %44
    i32 4, label %55
    i32 5, label %66
    i32 6, label %77
    i32 7, label %86
    i32 8, label %97
    i32 9, label %108
    i32 10, label %119
  ]

24:                                               ; preds = %2
  %25 = load i32, i32* @INTASSIGN_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %136

33:                                               ; preds = %2
  %34 = load i32, i32* @INTASSIGN_MASK, align 4
  %35 = shl i32 %34, 3
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 3
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %136

44:                                               ; preds = %2
  %45 = load i32, i32* @INTASSIGN_MASK, align 4
  %46 = shl i32 %45, 6
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 6
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %136

55:                                               ; preds = %2
  %56 = load i32, i32* @INTASSIGN_MASK, align 4
  %57 = shl i32 %56, 9
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 9
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %136

66:                                               ; preds = %2
  %67 = load i32, i32* @INTASSIGN_MASK, align 4
  %68 = shl i32 %67, 12
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i8, i8* %5, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 12
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %136

77:                                               ; preds = %2
  %78 = load i32, i32* @INTASSIGN_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i8, i8* %5, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %136

86:                                               ; preds = %2
  %87 = load i32, i32* @INTASSIGN_MASK, align 4
  %88 = shl i32 %87, 3
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load i8, i8* %5, align 1
  %93 = zext i8 %92 to i32
  %94 = shl i32 %93, 3
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %136

97:                                               ; preds = %2
  %98 = load i32, i32* @INTASSIGN_MASK, align 4
  %99 = shl i32 %98, 6
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i8, i8* %5, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 6
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %136

108:                                              ; preds = %2
  %109 = load i32, i32* @INTASSIGN_MASK, align 4
  %110 = shl i32 %109, 9
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i8, i8* %5, align 1
  %115 = zext i8 %114 to i32
  %116 = shl i32 %115, 9
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %136

119:                                              ; preds = %2
  %120 = load i32, i32* @INTASSIGN_MASK, align 4
  %121 = shl i32 %120, 12
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i8, i8* %5, align 1
  %126 = zext i8 %125 to i32
  %127 = shl i32 %126, 12
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %136

130:                                              ; preds = %2
  %131 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %132 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %131, i32 0, i32 0
  %133 = call i32 @spin_unlock_irq(i32* %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %151

136:                                              ; preds = %119, %108, %97, %86, %77, %66, %55, %44, %33, %24
  %137 = load i8, i8* %5, align 1
  %138 = load i8*, i8** @sysint2_assign, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 %137, i8* %141, align 1
  %142 = load i32, i32* @INTASSIGN2, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @icu1_write(i32 %142, i32 %143)
  %145 = load i32, i32* @INTASSIGN3, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @icu1_write(i32 %145, i32 %146)
  %148 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %149 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %148, i32 0, i32 0
  %150 = call i32 @spin_unlock_irq(i32* %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %136, %130
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @SYSINT2_IRQ_TO_PIN(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @icu1_read(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @icu1_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
