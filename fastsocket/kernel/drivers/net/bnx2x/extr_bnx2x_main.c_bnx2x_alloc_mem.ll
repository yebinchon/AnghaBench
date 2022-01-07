; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SRC_T2_SZ = common dso_local global i32 0, align 4
@CDU_ILT_PAGE_SZ = common dso_local global i32 0, align 4
@ILT_MAX_LINES = common dso_local global i32 0, align 4
@ILT_MEMOP_ALLOC = common dso_local global i32 0, align 4
@BCM_PAGE_SIZE = common dso_local global i32 0, align 4
@NUM_EQ_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_alloc_mem(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = call i32 @CONFIGURE_NIC_MODE(%struct.bnx2x* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 10
  %21 = load i32, i32* @SRC_T2_SZ, align 4
  %22 = call i32 @BNX2X_PCI_ALLOC(i32 %18, i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %10, %1
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 8
  %29 = call i32 @BNX2X_PCI_ALLOC(i32 %26, i32* %28, i32 4)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 6
  %35 = call i32 @BNX2X_PCI_ALLOC(i32 %32, i32* %34, i32 4)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = call i32 @BNX2X_L2_CID_COUNT(%struct.bnx2x* %36)
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %92, %23
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %95

45:                                               ; preds = %41
  %46 = load i32, i32* @CDU_ILT_PAGE_SZ, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %47, %48
  %50 = call i32 @min(i32 %46, i32 %49)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 5
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 4
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 5
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %67 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %66, i32 0, i32 5
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %73, i32 0, i32 5
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BNX2X_PCI_ALLOC(i32 %65, i32* %72, i32 %80)
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 5
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %45
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %41

95:                                               ; preds = %41
  %96 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %97 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %96, i32 0, i32 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ILT_MAX_LINES, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 4, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @BNX2X_ALLOC(i32 %100, i32 %104)
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = load i32, i32* @ILT_MEMOP_ALLOC, align 4
  %108 = call i64 @bnx2x_ilt_mem_op(%struct.bnx2x* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %95
  br label %133

111:                                              ; preds = %95
  %112 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %113 = call i64 @bnx2x_iov_alloc_mem(%struct.bnx2x* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %133

116:                                              ; preds = %111
  %117 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %121 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %120, i32 0, i32 2
  %122 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %123 = call i32 @BNX2X_PCI_ALLOC(i32 %119, i32* %121, i32 %122)
  %124 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %125 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %128 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %127, i32 0, i32 0
  %129 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %130 = load i32, i32* @NUM_EQ_PAGES, align 4
  %131 = mul nsw i32 %129, %130
  %132 = call i32 @BNX2X_PCI_ALLOC(i32 %126, i32* %128, i32 %131)
  store i32 0, i32* %2, align 4
  br label %139

133:                                              ; preds = %115, %110
  %134 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %135 = call i32 @bnx2x_free_mem(%struct.bnx2x* %134)
  %136 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %133, %116
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @CONFIGURE_NIC_MODE(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_PCI_ALLOC(i32, i32*, i32) #1

declare dso_local i32 @BNX2X_L2_CID_COUNT(%struct.bnx2x*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BNX2X_ALLOC(i32, i32) #1

declare dso_local i64 @bnx2x_ilt_mem_op(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_iov_alloc_mem(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_free_mem(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
