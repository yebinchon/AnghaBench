; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_src_init_t2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_src_init_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.src_ent = type { i64 }

@SRC_REG_COUNTFREE0 = common dso_local global i64 0, align 8
@SRC_REG_FIRSTFREE0 = common dso_local global i64 0, align 8
@SRC_REG_LASTFREE0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.src_ent*, i64, i32)* @bnx2x_src_init_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_src_init_t2(%struct.bnx2x* %0, %struct.src_ent* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.src_ent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.src_ent* %1, %struct.src_ent** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %12 = call i32 @BP_PORT(%struct.bnx2x* %11)
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %30, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = add i64 %19, %23
  %25 = load %struct.src_ent*, %struct.src_ent** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.src_ent, %struct.src_ent* %25, i64 %27
  %29 = getelementptr inbounds %struct.src_ent, %struct.src_ent* %28, i32 0, i32 0
  store i64 %24, i64* %29, align 8
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %35 = load i64, i64* @SRC_REG_COUNTFREE0, align 8
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @REG_WR(%struct.bnx2x* %34, i64 %39, i32 %40)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %43 = load i64, i64* @SRC_REG_FIRSTFREE0, align 8
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 %44, 16
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @U64_LO(i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @U64_HI(i64 %50)
  %52 = call i32 @bnx2x_wr_64(%struct.bnx2x* %42, i64 %47, i32 %49, i32 %51)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %54 = load i64, i64* @SRC_REG_LASTFREE0, align 8
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %55, 16
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = add i64 %59, %63
  %65 = call i32 @U64_LO(i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 8
  %71 = add i64 %66, %70
  %72 = call i32 @U64_HI(i64 %71)
  %73 = call i32 @bnx2x_wr_64(%struct.bnx2x* %53, i64 %58, i32 %65, i32 %72)
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_wr_64(%struct.bnx2x*, i64, i32, i32) #1

declare dso_local i32 @U64_LO(i64) #1

declare dso_local i32 @U64_HI(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
