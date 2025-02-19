; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_ndfc.c_ndfc_verify_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_ndfc.c_ndfc_verify_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndfc_controller = type { i64 }
%struct.mtd_info = type { i32 }

@ndfc_ctrl = common dso_local global %struct.ndfc_controller zeroinitializer, align 8
@NDFC_DATA = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32)* @ndfc_verify_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndfc_verify_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ndfc_controller*, align 8
  %9 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ndfc_controller* @ndfc_ctrl, %struct.ndfc_controller** %8, align 8
  %10 = load i32*, i32** %6, align 8
  store i32* %10, i32** %9, align 8
  br label %11

11:                                               ; preds = %30, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %9, align 8
  %17 = load i32, i32* %15, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.ndfc_controller*, %struct.ndfc_controller** %8, align 8
  %20 = getelementptr inbounds %struct.ndfc_controller, %struct.ndfc_controller* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NDFC_DATA, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i64 @in_be32(i64 %23)
  %25 = icmp ne i64 %18, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 4
  store i32 %32, i32* %7, align 4
  br label %11

33:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @in_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
