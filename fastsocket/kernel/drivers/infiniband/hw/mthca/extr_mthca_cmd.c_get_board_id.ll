; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_get_board_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_get_board_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MTHCA_BOARD_ID_LEN = common dso_local global i32 0, align 4
@VSD_OFFSET_MLX_BOARD_ID = common dso_local global i32 0, align 4
@VSD_OFFSET_SIG1 = common dso_local global i32 0, align 4
@VSD_OFFSET_SIG2 = common dso_local global i32 0, align 4
@VSD_OFFSET_TS_BOARD_ID = common dso_local global i32 0, align 4
@VSD_SIGNATURE_TOPSPIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @get_board_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_board_id(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* @MTHCA_BOARD_ID_LEN, align 4
  %8 = call i32 @memset(i8* %6, i32 0, i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr i8, i8* %9, i64 0
  %11 = call i64 @be16_to_cpup(i8* %10)
  %12 = icmp eq i64 %11, 1453
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr i8, i8* %14, i64 222
  %16 = call i64 @be16_to_cpup(i8* %15)
  %17 = icmp eq i64 %16, 1453
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr i8, i8* %20, i64 32
  %22 = load i32, i32* @MTHCA_BOARD_ID_LEN, align 4
  %23 = call i32 @strlcpy(i8* %19, i8* %21, i32 %22)
  br label %47

24:                                               ; preds = %13, %2
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr i8, i8* %29, i64 208
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %30, i64 %33
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @swab32(i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %25

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46, %18
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @be16_to_cpup(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
