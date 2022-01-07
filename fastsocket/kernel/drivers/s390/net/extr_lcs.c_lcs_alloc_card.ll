; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_alloc_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_alloc_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32, i32, i32, i32, i64, i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"alloclcs\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@LCS_FRAME_TYPE_AUTO = common dso_local global i32 0, align 4
@LCS_LANCMD_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"iccwerr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lcs_card* ()* @lcs_alloc_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lcs_card* @lcs_alloc_card() #0 {
  %1 = alloca %struct.lcs_card*, align 8
  %2 = alloca %struct.lcs_card*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @setup, align 4
  %5 = call i32 @LCS_DBF_TEXT(i32 2, i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load i32, i32* @GFP_DMA, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.lcs_card* @kzalloc(i32 32, i32 %8)
  store %struct.lcs_card* %9, %struct.lcs_card** %2, align 8
  %10 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %11 = icmp eq %struct.lcs_card* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store %struct.lcs_card* null, %struct.lcs_card** %1, align 8
  br label %50

13:                                               ; preds = %0
  %14 = load i32, i32* @LCS_FRAME_TYPE_AUTO, align 4
  %15 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %16 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %18 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @LCS_LANCMD_TIMEOUT_DEFAULT, align 4
  %20 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %21 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %23 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %22, i32 0, i32 1
  %24 = call i32 @lcs_alloc_channel(i32* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = load i32, i32* @setup, align 4
  %29 = call i32 @LCS_DBF_TEXT(i32 2, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %31 = call i32 @lcs_free_card(%struct.lcs_card* %30)
  store %struct.lcs_card* null, %struct.lcs_card** %1, align 8
  br label %50

32:                                               ; preds = %13
  %33 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %34 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %33, i32 0, i32 2
  %35 = call i32 @lcs_alloc_channel(i32* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i32, i32* @setup, align 4
  %40 = call i32 @LCS_DBF_TEXT(i32 2, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %42 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %41, i32 0, i32 1
  %43 = call i32 @lcs_cleanup_channel(i32* %42)
  %44 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %45 = call i32 @lcs_free_card(%struct.lcs_card* %44)
  store %struct.lcs_card* null, %struct.lcs_card** %1, align 8
  br label %50

46:                                               ; preds = %32
  %47 = load i32, i32* @setup, align 4
  %48 = call i32 @LCS_DBF_HEX(i32 2, i32 %47, %struct.lcs_card** %2, i32 8)
  %49 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  store %struct.lcs_card* %49, %struct.lcs_card** %1, align 8
  br label %50

50:                                               ; preds = %46, %38, %27, %12
  %51 = load %struct.lcs_card*, %struct.lcs_card** %1, align 8
  ret %struct.lcs_card* %51
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.lcs_card* @kzalloc(i32, i32) #1

declare dso_local i32 @lcs_alloc_channel(i32*) #1

declare dso_local i32 @lcs_free_card(%struct.lcs_card*) #1

declare dso_local i32 @lcs_cleanup_channel(i32*) #1

declare dso_local i32 @LCS_DBF_HEX(i32, i32, %struct.lcs_card**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
