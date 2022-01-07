; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioparam.c_add_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioparam.c_add_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Port = type { i64, i64, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@PKT_IN_USE = common dso_local global i32 0, align 4
@RIO_DEBUG_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"add_transmit: Packet has been stolen!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_transmit(%struct.Port* %0) #0 {
  %2 = alloca %struct.Port*, align 8
  store %struct.Port* %0, %struct.Port** %2, align 8
  %3 = load %struct.Port*, %struct.Port** %2, align 8
  %4 = getelementptr inbounds %struct.Port, %struct.Port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = call i32 @readw(i32* %6)
  %8 = load i32, i32* @PKT_IN_USE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @RIO_DEBUG_PARAM, align 4
  %13 = call i32 @rio_dprintk(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.Port*, %struct.Port** %2, align 8
  %16 = getelementptr inbounds %struct.Port, %struct.Port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @readw(i32* %18)
  %20 = load i32, i32* @PKT_IN_USE, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.Port*, %struct.Port** %2, align 8
  %23 = getelementptr inbounds %struct.Port, %struct.Port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @writew(i32 %21, i32* %25)
  %27 = load %struct.Port*, %struct.Port** %2, align 8
  %28 = getelementptr inbounds %struct.Port, %struct.Port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.Port*, %struct.Port** %2, align 8
  %31 = getelementptr inbounds %struct.Port, %struct.Port* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %14
  %35 = load %struct.Port*, %struct.Port** %2, align 8
  %36 = getelementptr inbounds %struct.Port, %struct.Port* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  br label %44

38:                                               ; preds = %14
  %39 = load %struct.Port*, %struct.Port** %2, align 8
  %40 = getelementptr inbounds %struct.Port, %struct.Port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  %43 = inttoptr i64 %42 to i32*
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i32* [ %37, %34 ], [ %43, %38 ]
  %46 = ptrtoint i32* %45 to i64
  %47 = load %struct.Port*, %struct.Port** %2, align 8
  %48 = getelementptr inbounds %struct.Port, %struct.Port* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.Port*, %struct.Port** %2, align 8
  %50 = getelementptr inbounds %struct.Port, %struct.Port* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.Port*, %struct.Port** %2, align 8
  %53 = getelementptr inbounds %struct.Port, %struct.Port* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = call i32 @RIO_OFF(i32 %51, i32* %55)
  %57 = load %struct.Port*, %struct.Port** %2, align 8
  %58 = getelementptr inbounds %struct.Port, %struct.Port* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @writew(i32 %56, i32* %60)
  ret void
}

declare dso_local i32 @readw(i32*) #1

declare dso_local i32 @rio_dprintk(i32, i8*) #1

declare dso_local i32 @writew(i32, i32*) #1

declare dso_local i32 @RIO_OFF(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
