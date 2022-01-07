; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_echpci64intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_echpci64intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i32, i32, i32*, %struct.stlpanel** }
%struct.stlpanel = type { i32 (%struct.stlpanel*, i32)* }

@ECH_PNLINTRPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlbrd*)* @stl_echpci64intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_echpci64intr(%struct.stlbrd* %0) #0 {
  %2 = alloca %struct.stlbrd*, align 8
  %3 = alloca %struct.stlpanel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stlbrd* %0, %struct.stlbrd** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %53, %1
  %8 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %9 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @inb(i32 %10)
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %7
  store i32 1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %50, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %18 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %15
  %22 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %23 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @inb(i32 %29)
  %31 = load i32, i32* @ECH_PNLINTRPEND, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %21
  %35 = load %struct.stlbrd*, %struct.stlbrd** %2, align 8
  %36 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %35, i32 0, i32 3
  %37 = load %struct.stlpanel**, %struct.stlpanel*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.stlpanel*, %struct.stlpanel** %37, i64 %39
  %41 = load %struct.stlpanel*, %struct.stlpanel** %40, align 8
  store %struct.stlpanel* %41, %struct.stlpanel** %3, align 8
  %42 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %43 = getelementptr inbounds %struct.stlpanel, %struct.stlpanel* %42, i32 0, i32 0
  %44 = load i32 (%struct.stlpanel*, i32)*, i32 (%struct.stlpanel*, i32)** %43, align 8
  %45 = load %struct.stlpanel*, %struct.stlpanel** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 65532
  %48 = call i32 %44(%struct.stlpanel* %45, i32 %47)
  br label %49

49:                                               ; preds = %34, %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %15

53:                                               ; preds = %15
  br label %7

54:                                               ; preds = %7
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
