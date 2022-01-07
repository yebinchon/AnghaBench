; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioparam.c_remove_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioparam.c_remove_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Port = type { i64, i64, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@PKT_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_receive(%struct.Port* %0) #0 {
  %2 = alloca %struct.Port*, align 8
  store %struct.Port* %0, %struct.Port** %2, align 8
  %3 = load %struct.Port*, %struct.Port** %2, align 8
  %4 = getelementptr inbounds %struct.Port, %struct.Port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = call i32 @readw(i32* %6)
  %8 = load i32, i32* @PKT_IN_USE, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = load %struct.Port*, %struct.Port** %2, align 8
  %12 = getelementptr inbounds %struct.Port, %struct.Port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = call i32 @writew(i32 %10, i32* %14)
  %16 = load %struct.Port*, %struct.Port** %2, align 8
  %17 = getelementptr inbounds %struct.Port, %struct.Port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.Port*, %struct.Port** %2, align 8
  %20 = getelementptr inbounds %struct.Port, %struct.Port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.Port*, %struct.Port** %2, align 8
  %25 = getelementptr inbounds %struct.Port, %struct.Port* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.Port*, %struct.Port** %2, align 8
  %29 = getelementptr inbounds %struct.Port, %struct.Port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = inttoptr i64 %31 to i32*
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi i32* [ %26, %23 ], [ %32, %27 ]
  %35 = ptrtoint i32* %34 to i64
  %36 = load %struct.Port*, %struct.Port** %2, align 8
  %37 = getelementptr inbounds %struct.Port, %struct.Port* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.Port*, %struct.Port** %2, align 8
  %39 = getelementptr inbounds %struct.Port, %struct.Port* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.Port*, %struct.Port** %2, align 8
  %42 = getelementptr inbounds %struct.Port, %struct.Port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @RIO_OFF(i32 %40, i32* %44)
  %46 = load %struct.Port*, %struct.Port** %2, align 8
  %47 = getelementptr inbounds %struct.Port, %struct.Port* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @writew(i32 %45, i32* %49)
  ret void
}

declare dso_local i32 @writew(i32, i32*) #1

declare dso_local i32 @readw(i32*) #1

declare dso_local i32 @RIO_OFF(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
