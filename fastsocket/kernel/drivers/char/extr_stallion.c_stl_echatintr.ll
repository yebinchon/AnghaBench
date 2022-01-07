; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_echatintr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_echatintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i32, i32, i32, i32*, i32, %struct.stlpanel** }
%struct.stlpanel = type { i32 (%struct.stlpanel*, i32)* }

@ECH_BRDENABLE = common dso_local global i32 0, align 4
@ECH_INTRPEND = common dso_local global i32 0, align 4
@ECH_PNLINTRPEND = common dso_local global i32 0, align 4
@ECH_BRDDISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlbrd*)* @stl_echatintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_echatintr(%struct.stlbrd* %0) #0 {
  %2 = alloca %struct.stlbrd*, align 8
  %3 = alloca %struct.stlpanel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stlbrd* %0, %struct.stlbrd** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %8 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ECH_BRDENABLE, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %13 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @outb(i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %63, %1
  %17 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %18 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @inb(i32 %19)
  %21 = load i32, i32* @ECH_INTRPEND, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %60, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %28 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %33 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @inb(i32 %39)
  %41 = load i32, i32* @ECH_PNLINTRPEND, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %31
  %45 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %46 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %45, i32 0, i32 5
  %47 = load %struct.stlpanel**, %struct.stlpanel*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.stlpanel*, %struct.stlpanel** %47, i64 %49
  %51 = load %struct.stlpanel*, %struct.stlpanel** %50, align 8
  store %struct.stlpanel* %51, %struct.stlpanel** %3, align 8
  %52 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %53 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %52, i32 0, i32 0
  %54 = load i32 (%struct.stlpanel*, i32)*, i32 (%struct.stlpanel*, i32)** %53, align 8
  %55 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 65532
  %58 = call i32 %54(%struct.stlpanel* %55, i32 %57)
  br label %59

59:                                               ; preds = %44, %31
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %25

63:                                               ; preds = %25
  br label %16

64:                                               ; preds = %16
  %65 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %66 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ECH_BRDDISABLE, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %71 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @outb(i32 %69, i32 %72)
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
