; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16, i16 }

@CHA = common dso_local global i8 0, align 1
@IMR = common dso_local global i64 0, align 8
@CHB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8, i16)* @irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_enable(%struct.TYPE_4__* %0, i8 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8 %1, i8* %5, align 1
  store i16 %2, i16* %6, align 2
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* @CHA, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = xor i32 %14, -1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, %15
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %17, align 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = load i8, i8* @CHA, align 1
  %24 = zext i8 %23 to i64
  %25 = load i64, i64* @IMR, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 2
  %30 = call i32 @write_reg16(%struct.TYPE_4__* %22, i64 %26, i16 zeroext %29)
  br label %49

31:                                               ; preds = %3
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = xor i32 %33, -1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, %34
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %36, align 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = load i64, i64* @CHB, align 8
  %43 = load i64, i64* @IMR, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i16, i16* %46, align 2
  %48 = call i32 @write_reg16(%struct.TYPE_4__* %41, i64 %44, i16 zeroext %47)
  br label %49

49:                                               ; preds = %31, %12
  ret void
}

declare dso_local i32 @write_reg16(%struct.TYPE_4__*, i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
