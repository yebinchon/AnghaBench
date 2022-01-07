; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_accept_addr_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_accept_addr_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nandsim = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nandsim*, i32)* @accept_addr_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accept_addr_byte(%struct.nandsim* %0, i32 %1) #0 {
  %3 = alloca %struct.nandsim*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %8 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %12 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %16 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %14, %18
  %20 = icmp slt i32 %10, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %24 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 8, %26
  %28 = shl i32 %22, %27
  %29 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %30 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  br label %57

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %37 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %41 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %39, %43
  %45 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %46 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %44, %48
  %50 = mul nsw i32 8, %49
  %51 = shl i32 %35, %50
  %52 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %53 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %34, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
