; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400updatereg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400updatereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i64 }

@EREG_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stlport*, i32, i32)* @stl_cd1400updatereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_cd1400updatereg(%struct.stlport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stlport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stlport* %0, %struct.stlport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.stlport*, %struct.stlport** %5, align 8
  %10 = getelementptr inbounds %struct.stlport, %struct.stlport* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %8, %11
  %13 = load %struct.stlport*, %struct.stlport** %5, align 8
  %14 = getelementptr inbounds %struct.stlport, %struct.stlport* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @outb(i32 %12, i64 %15)
  %17 = load %struct.stlport*, %struct.stlport** %5, align 8
  %18 = getelementptr inbounds %struct.stlport, %struct.stlport* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EREG_DATA, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inb(i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.stlport*, %struct.stlport** %5, align 8
  %28 = getelementptr inbounds %struct.stlport, %struct.stlport* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EREG_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outb(i32 %26, i64 %31)
  store i32 1, i32* %4, align 4
  br label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
