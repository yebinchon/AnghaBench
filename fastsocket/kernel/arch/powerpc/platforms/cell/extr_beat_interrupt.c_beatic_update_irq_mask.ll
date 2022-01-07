; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_interrupt.c_beatic_update_irq_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat_interrupt.c_beatic_update_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@beatic_irq_mask_enable = common dso_local global i64* null, align 8
@beatic_irq_mask_ack = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Failed to set mask IRQ!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @beatic_update_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beatic_update_irq_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i64], align 16
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = udiv i32 %5, 256
  %7 = mul i32 %6, 4
  store i32 %7, i32* %3, align 4
  %8 = load i64*, i64** @beatic_irq_mask_enable, align 8
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 0
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** @beatic_irq_mask_ack, align 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %13, %19
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 %20, i64* %21, align 16
  %22 = load i64*, i64** @beatic_irq_mask_enable, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** @beatic_irq_mask_ack, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %27, %33
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 %34, i64* %35, align 8
  %36 = load i64*, i64** @beatic_irq_mask_enable, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** @beatic_irq_mask_ack, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = and i64 %41, %47
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 %48, i64* %49, align 16
  %50 = load i64*, i64** @beatic_irq_mask_enable, align 8
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** @beatic_irq_mask_ack, align 8
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = and i64 %55, %61
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* %2, align 4
  %65 = zext i32 %64 to i64
  %66 = and i64 %65, -256
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %69 = load i64, i64* %68, align 16
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %73 = load i64, i64* %72, align 16
  %74 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @beat_set_interrupt_mask(i32 %67, i64 %69, i64 %71, i64 %73, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %1
  %79 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %1
  ret void
}

declare dso_local i64 @beat_set_interrupt_mask(i32, i64, i64, i64, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
