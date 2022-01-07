; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_flexonenand_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_flexonenand_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onenand_chip = type { i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.onenand_chip*, i32)* @flexonenand_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexonenand_block(%struct.onenand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.onenand_chip* %0, %struct.onenand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %9 = call i64 @ONENAND_IS_DDP(%struct.onenand_chip* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %12, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  store i32 1, i32* %7, align 4
  %20 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %21 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %19, %11, %2
  %28 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %29 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %37 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = ashr i32 %35, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %27
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %45, %46
  %48 = add i32 %47, 1
  %49 = lshr i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %27
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %55 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  br label %58

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32 [ %56, %53 ], [ 0, %57 ]
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @ONENAND_IS_DDP(%struct.onenand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
