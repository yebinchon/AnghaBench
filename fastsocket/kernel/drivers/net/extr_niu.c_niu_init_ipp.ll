; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_ipp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_ipp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@ATLAS_P0_P1_DFIFO_ENTRIES = common dso_local global i32 0, align 4
@ATLAS_P2_P3_DFIFO_ENTRIES = common dso_local global i32 0, align 4
@NIU_DFIFO_ENTRIES = common dso_local global i32 0, align 4
@IPP_INT_STAT = common dso_local global i32 0, align 4
@IPP_PKT_DIS = common dso_local global i32 0, align 4
@IPP_BAD_CS_CNT = common dso_local global i32 0, align 4
@IPP_ECC = common dso_local global i32 0, align 4
@IPP_MSK = common dso_local global i32 0, align 4
@IPP_MSK_ALL = common dso_local global i32 0, align 4
@IPP_CFIG = common dso_local global i32 0, align 4
@IPP_CFIG_IP_MAX_PKT = common dso_local global i32 0, align 4
@IPP_CFIG_IPP_ENABLE = common dso_local global i32 0, align 4
@IPP_CFIG_DFIFO_ECC_EN = common dso_local global i32 0, align 4
@IPP_CFIG_DROP_BAD_CRC = common dso_local global i32 0, align 4
@IPP_CFIG_CKSUM_EN = common dso_local global i32 0, align 4
@IPP_CFIG_IP_MAX_PKT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_init_ipp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_ipp(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %10 = load %struct.niu*, %struct.niu** %3, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.niu*, %struct.niu** %3, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.niu*, %struct.niu** %3, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @ATLAS_P0_P1_DFIFO_ENTRIES, align 4
  store i32 %28, i32* %8, align 4
  br label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @ATLAS_P2_P3_DFIFO_ENTRIES, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @NIU_DFIFO_ENTRIES, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %35, align 16
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 2
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 3
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 4
  store i32 0, i32* %39, align 16
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %53, %34
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.niu*, %struct.niu** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %48 = call i32 @niu_ipp_write(%struct.niu* %45, i32 %46, i32* %47)
  %49 = load %struct.niu*, %struct.niu** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %52 = call i32 @niu_ipp_read(%struct.niu* %49, i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load i32, i32* @IPP_INT_STAT, align 4
  %58 = call i32 @nr64_ipp(i32 %57)
  %59 = load i32, i32* @IPP_INT_STAT, align 4
  %60 = call i32 @nr64_ipp(i32 %59)
  %61 = load %struct.niu*, %struct.niu** %3, align 8
  %62 = call i32 @niu_ipp_reset(%struct.niu* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %101

67:                                               ; preds = %56
  %68 = load i32, i32* @IPP_PKT_DIS, align 4
  %69 = call i32 @nr64_ipp(i32 %68)
  %70 = load i32, i32* @IPP_BAD_CS_CNT, align 4
  %71 = call i32 @nr64_ipp(i32 %70)
  %72 = load i32, i32* @IPP_ECC, align 4
  %73 = call i32 @nr64_ipp(i32 %72)
  %74 = load i32, i32* @IPP_INT_STAT, align 4
  %75 = call i32 @nr64_ipp(i32 %74)
  %76 = load i32, i32* @IPP_MSK, align 4
  %77 = load i32, i32* @IPP_MSK_ALL, align 4
  %78 = xor i32 %77, -1
  %79 = call i32 @nw64_ipp(i32 %76, i32 %78)
  %80 = load i32, i32* @IPP_CFIG, align 4
  %81 = call i32 @nr64_ipp(i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @IPP_CFIG_IP_MAX_PKT, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @IPP_CFIG_IPP_ENABLE, align 4
  %87 = load i32, i32* @IPP_CFIG_DFIFO_ECC_EN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @IPP_CFIG_DROP_BAD_CRC, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @IPP_CFIG_CKSUM_EN, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IPP_CFIG_IP_MAX_PKT_SHIFT, align 4
  %94 = shl i32 131071, %93
  %95 = or i32 %92, %94
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @IPP_CFIG, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @nw64_ipp(i32 %98, i32 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %67, %65
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @niu_ipp_write(%struct.niu*, i32, i32*) #1

declare dso_local i32 @niu_ipp_read(%struct.niu*, i32, i32*) #1

declare dso_local i32 @nr64_ipp(i32) #1

declare dso_local i32 @niu_ipp_reset(%struct.niu*) #1

declare dso_local i32 @nw64_ipp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
