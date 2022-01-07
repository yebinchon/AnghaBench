; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epia.c_epia_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_epia.c_epia_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @epia_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epia_connect(%struct.TYPE_3__* %0) #0 {
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
  %9 = call i32 @w2(i32 4)
  %10 = call i32 @w0(i32 160)
  %11 = call i32 @w0(i32 80)
  %12 = call i32 @w0(i32 192)
  %13 = call i32 @w0(i32 48)
  %14 = call i32 @w0(i32 160)
  %15 = call i32 @w0(i32 0)
  %16 = call i32 @w2(i32 1)
  %17 = call i32 @w2(i32 4)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 3
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = call i32 @w0(i32 10)
  %24 = call i32 @w2(i32 1)
  %25 = call i32 @w2(i32 4)
  %26 = call i32 @w0(i32 130)
  %27 = call i32 @w2(i32 4)
  %28 = call i32 @w2(i32 12)
  %29 = call i32 @w2(i32 4)
  %30 = call i32 @w2(i32 36)
  %31 = call i32 @w2(i32 38)
  %32 = call i32 @w2(i32 4)
  br label %33

33:                                               ; preds = %22, %1
  %34 = call i32 @WR(i32 134, i32 8)
  ret void
}

declare dso_local i32 @r0(...) #1

declare dso_local i32 @r2(...) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @WR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
