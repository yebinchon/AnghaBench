; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_au1k_ir.c_setup_hw_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_au1k_ir.c_setup_hw_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1k_private = type { i32**, i32** }

@NUM_IR_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1k_private*, i64, i64)* @setup_hw_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_hw_rings(%struct.au1k_private* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.au1k_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.au1k_private* %0, %struct.au1k_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @NUM_IR_DESC, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = add i64 %13, %16
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.au1k_private*, %struct.au1k_private** %4, align 8
  %20 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  store i32* %18, i32** %24, align 8
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %8

28:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @NUM_IR_DESC, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = add i64 %34, %37
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.au1k_private*, %struct.au1k_private** %4, align 8
  %41 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* %39, i32** %45, align 8
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %29

49:                                               ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
