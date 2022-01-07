; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_zcp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_zcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@ATLAS_P0_P1_CFIFO_ENTRIES = common dso_local global i32 0, align 4
@ATLAS_P2_P3_CFIFO_ENTRIES = common dso_local global i32 0, align 4
@NIU_CFIFO_ENTRIES = common dso_local global i32 0, align 4
@ZCP_INT_STAT = common dso_local global i32 0, align 4
@ZCP_INT_STAT_ALL = common dso_local global i32 0, align 4
@ZCP_INT_MASK = common dso_local global i32 0, align 4
@ZCP_INT_MASK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_init_zcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_zcp(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca [5 x i64], align 16
  %5 = alloca [5 x i64], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %9 = load %struct.niu*, %struct.niu** %3, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.niu*, %struct.niu** %3, align 8
  %18 = getelementptr inbounds %struct.niu, %struct.niu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.niu*, %struct.niu** %3, align 8
  %23 = getelementptr inbounds %struct.niu, %struct.niu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @ATLAS_P0_P1_CFIFO_ENTRIES, align 4
  store i32 %27, i32* %7, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @ATLAS_P2_P3_CFIFO_ENTRIES, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @NIU_CFIFO_ENTRIES, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %34, align 16
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2
  store i64 0, i64* %36, align 16
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4
  store i64 0, i64* %38, align 16
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %62, %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load %struct.niu*, %struct.niu** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  %47 = call i32 @niu_zcp_write(%struct.niu* %44, i32 %45, i64* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %81

52:                                               ; preds = %43
  %53 = load %struct.niu*, %struct.niu** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds [5 x i64], [5 x i64]* %5, i64 0, i64 0
  %56 = call i32 @niu_zcp_read(%struct.niu* %53, i32 %54, i64* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %81

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load %struct.niu*, %struct.niu** %3, align 8
  %67 = call i32 @niu_zcp_cfifo_reset(%struct.niu* %66)
  %68 = load %struct.niu*, %struct.niu** %3, align 8
  %69 = getelementptr inbounds %struct.niu, %struct.niu* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @CFIFO_ECC(i32 %70)
  %72 = call i32 @nw64(i32 %71, i32 0)
  %73 = load i32, i32* @ZCP_INT_STAT, align 4
  %74 = load i32, i32* @ZCP_INT_STAT_ALL, align 4
  %75 = call i32 @nw64(i32 %73, i32 %74)
  %76 = load i32, i32* @ZCP_INT_STAT, align 4
  %77 = call i32 @nr64(i32 %76)
  %78 = load i32, i32* @ZCP_INT_MASK, align 4
  %79 = load i32, i32* @ZCP_INT_MASK_ALL, align 4
  %80 = call i32 @nw64(i32 %78, i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %65, %59, %50
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @niu_zcp_write(%struct.niu*, i32, i64*) #1

declare dso_local i32 @niu_zcp_read(%struct.niu*, i32, i64*) #1

declare dso_local i32 @niu_zcp_cfifo_reset(%struct.niu*) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @CFIFO_ECC(i32) #1

declare dso_local i32 @nr64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
