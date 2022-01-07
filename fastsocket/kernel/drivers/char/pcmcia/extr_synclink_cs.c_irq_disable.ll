; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_irq_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16, i16 }

@CHA = common dso_local global i8 0, align 1
@IMR = common dso_local global i64 0, align 8
@CHB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8, i16)* @irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_disable(%struct.TYPE_4__* %0, i8 zeroext %1, i16 zeroext %2) #0 {
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
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %18, %14
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %16, align 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i8, i8* @CHA, align 1
  %23 = zext i8 %22 to i64
  %24 = load i64, i64* @IMR, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i16, i16* %27, align 2
  %29 = call i32 @write_reg16(%struct.TYPE_4__* %21, i64 %25, i16 zeroext %28)
  br label %47

30:                                               ; preds = %3
  %31 = load i16, i16* %6, align 2
  %32 = zext i16 %31 to i32
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, %32
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %34, align 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = load i64, i64* @CHB, align 8
  %41 = load i64, i64* @IMR, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i16, i16* %44, align 2
  %46 = call i32 @write_reg16(%struct.TYPE_4__* %39, i64 %42, i16 zeroext %45)
  br label %47

47:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @write_reg16(%struct.TYPE_4__*, i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
