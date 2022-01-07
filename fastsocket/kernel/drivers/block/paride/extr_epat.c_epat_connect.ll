; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epat.c_epat_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epat.c_epat_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@epatc8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @epat_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epat_connect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = call i32 (...) @r0()
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 4
  %6 = call i32 (...) @r2()
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = call i32 @CPP(i32 0)
  %10 = load i64, i64* @epatc8, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = call i32 @CPP(i32 64)
  %14 = call i32 @CPP(i32 224)
  %15 = call i32 @w0(i32 0)
  %16 = call i32 @w2(i32 1)
  %17 = call i32 @w2(i32 4)
  %18 = call i32 @WR(i32 8, i32 18)
  %19 = call i32 @WR(i32 12, i32 20)
  %20 = call i32 @WR(i32 18, i32 16)
  %21 = call i32 @WR(i32 14, i32 15)
  %22 = call i32 @WR(i32 15, i32 4)
  %23 = call i32 @WR(i32 14, i32 13)
  %24 = call i32 @WR(i32 15, i32 0)
  br label %25

25:                                               ; preds = %12, %1
  %26 = call i32 @CPP(i32 224)
  %27 = call i32 @w0(i32 0)
  %28 = call i32 @w2(i32 1)
  %29 = call i32 @w2(i32 4)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 3
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = call i32 @w0(i32 0)
  %36 = call i32 @w2(i32 1)
  %37 = call i32 @w2(i32 4)
  %38 = call i32 @w2(i32 12)
  %39 = call i32 @w0(i32 64)
  %40 = call i32 @w2(i32 6)
  %41 = call i32 @w2(i32 7)
  %42 = call i32 @w2(i32 4)
  %43 = call i32 @w2(i32 12)
  %44 = call i32 @w2(i32 4)
  br label %45

45:                                               ; preds = %34, %25
  %46 = load i64, i64* @epatc8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = call i32 @WR(i32 8, i32 16)
  %50 = call i32 @WR(i32 12, i32 20)
  %51 = call i32 @WR(i32 10, i32 56)
  %52 = call i32 @WR(i32 18, i32 16)
  br label %53

53:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @r0(...) #1

declare dso_local i32 @r2(...) #1

declare dso_local i32 @CPP(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @WR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
