; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_cyclades.c_cyy_baud_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_cyclades.c_cyy_baud_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_port = type { i64, i32, i32, i32, i32 }

@CD1400_REV_J = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyclades_port*, i32)* @cyy_baud_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyy_baud_calc(%struct.cyclades_port* %0, i32 %1) #0 {
  %3 = alloca %struct.cyclades_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cyclades_port* %0, %struct.cyclades_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %10 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CD1400_REV_J, align 8
  %13 = icmp sge i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 60000000, i32 25000000
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %20 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %19, i32 0, i32 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %22 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %21, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %24 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %23, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %26 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  br label %68

27:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  store i32 2048, i32* %6, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sdiv i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %34, %35
  %37 = icmp sgt i32 %36, 63
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %45

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 2
  store i32 %44, i32* %6, align 4
  br label %28

45:                                               ; preds = %38, %28
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sdiv i32 %46, %47
  %49 = mul nsw i32 %48, 2
  %50 = load i32, i32* %4, align 4
  %51 = sdiv i32 %49, %50
  %52 = add nsw i32 %51, 1
  %53 = sdiv i32 %52, 2
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 255
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i32 255, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %60 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %62 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %65 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.cyclades_port*, %struct.cyclades_port** %3, align 8
  %67 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
