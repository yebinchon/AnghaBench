; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_init_wr_64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_init_wr_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@FW_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32*, i32)* @bnx2x_init_wr_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_init_wr_64(%struct.bnx2x* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @FW_BUF_SIZE, align 4
  %16 = sdiv i32 %15, 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @HILO_U64(i32 %21, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @FW_BUF_SIZE, align 4
  %26 = sdiv i32 %25, 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @min(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %42, %4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %35 = call i64 @GUNZIP_BUF(%struct.bnx2x* %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %13, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %29

45:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i32 @min(i32 %51, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %12, align 4
  %59 = mul nsw i32 %58, 4
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @bnx2x_write_big_buf_wb(%struct.bnx2x* %56, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %46

67:                                               ; preds = %46
  ret void
}

declare dso_local i32 @HILO_U64(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @GUNZIP_BUF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_write_big_buf_wb(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
