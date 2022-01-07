; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_bpck.c_bpck_probe_unit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_bpck.c_bpck_probe_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @bpck_probe_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpck_probe_unit(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = call i32 @w2(i32 4)
  %14 = call i32 @w2(i32 14)
  %15 = call i32 (...) @r2()
  %16 = call i32 @t2(i32 2)
  %17 = call i32 (...) @r1()
  %18 = and i32 %17, 248
  store i32 %18, i32* %4, align 4
  %19 = call i32 (...) @r0()
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 255, %20
  %22 = call i32 @w0(i32 %21)
  %23 = call i32 @w2(i32 4)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @w0(i32 %24)
  %26 = call i32 @t2(i32 8)
  %27 = call i32 @t2(i32 8)
  %28 = call i32 @t2(i32 8)
  %29 = call i32 @t2(i32 2)
  %30 = call i32 (...) @r1()
  %31 = and i32 %30, 248
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = srem i32 %32, 8
  %34 = icmp eq i32 %33, 7
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %1
  %43 = call i32 @t2(i32 2)
  %44 = call i32 (...) @r1()
  %45 = and i32 %44, 248
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %50
  %58 = call i32 @w2(i32 76)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @w0(i32 %59)
  store i32 0, i32* %2, align 4
  br label %68

61:                                               ; preds = %53, %46
  %62 = call i32 @t2(i32 8)
  %63 = call i32 @w0(i32 0)
  %64 = call i32 @t2(i32 2)
  %65 = call i32 @w2(i32 76)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @w0(i32 %66)
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %57
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r2(...) #1

declare dso_local i32 @t2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @r0(...) #1

declare dso_local i32 @w0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
