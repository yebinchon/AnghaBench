; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_kbic.c_kbic_write_regr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_kbic.c_kbic_write_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cont_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @kbic_write_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kbic_write_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** @cont_map, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %47 [
    i32 0, label %18
    i32 1, label %18
    i32 2, label %18
    i32 3, label %31
    i32 4, label %31
    i32 5, label %31
  ]

18:                                               ; preds = %4, %4, %4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, 16
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @w0(i32 %22)
  %24 = call i32 @w2(i32 4)
  %25 = call i32 @w2(i32 6)
  %26 = call i32 @w2(i32 4)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @w0(i32 %27)
  %29 = call i32 @w2(i32 5)
  %30 = call i32 @w2(i32 4)
  br label %47

31:                                               ; preds = %4, %4, %4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 32, %32
  %34 = call i32 @w0(i32 %33)
  %35 = call i32 @w2(i32 4)
  %36 = call i32 @w2(i32 6)
  %37 = call i32 @w2(i32 4)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @w3(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @w4(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @w4(i32 %42)
  %44 = call i32 @w2(i32 4)
  %45 = call i32 @w2(i32 0)
  %46 = call i32 @w2(i32 4)
  br label %47

47:                                               ; preds = %4, %31, %18
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @w4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
