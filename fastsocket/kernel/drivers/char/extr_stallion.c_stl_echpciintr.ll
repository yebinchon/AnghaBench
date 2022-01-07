; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_echpciintr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_echpciintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i32, i32*, %struct.stlpanel**, i32, i32* }
%struct.stlpanel = type { i32 (%struct.stlpanel*, i32)* }

@ECH_PNLINTRPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlbrd*)* @stl_echpciintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_echpciintr(%struct.stlbrd* %0) #0 {
  %2 = alloca %struct.stlbrd*, align 8
  %3 = alloca %struct.stlpanel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stlbrd* %0, %struct.stlbrd** %2, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %1, %64
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %57, %8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %12 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %9
  %16 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %17 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %24 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @outb(i32 %22, i32 %25)
  %27 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %28 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @inb(i32 %34)
  %36 = load i32, i32* @ECH_PNLINTRPEND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %15
  %40 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %41 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %40, i32 0, i32 2
  %42 = load %struct.stlpanel**, %struct.stlpanel*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.stlpanel*, %struct.stlpanel** %42, i64 %44
  %46 = load %struct.stlpanel*, %struct.stlpanel** %45, align 8
  store %struct.stlpanel* %46, %struct.stlpanel** %3, align 8
  %47 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %48 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %47, i32 0, i32 0
  %49 = load i32 (%struct.stlpanel*, i32)*, i32 (%struct.stlpanel*, i32)** %48, align 8
  %50 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, 65532
  %53 = call i32 %49(%struct.stlpanel* %50, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %39, %15
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %9

60:                                               ; preds = %9
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %65

64:                                               ; preds = %60
  br label %8

65:                                               ; preds = %63
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
