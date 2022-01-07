; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mr.c___mthca_write_mtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_mr.c___mthca_write_mtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_mtt = type { i32 }
%struct.mthca_mailbox = type { i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MTHCA_MAILBOX_SIZE = common dso_local global i32 0, align 4
@MTHCA_MTT_FLAG_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WRITE_MTT failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_mtt*, i32, i32*, i32)* @__mthca_write_mtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mthca_write_mtt(%struct.mthca_dev* %0, %struct.mthca_mtt* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca %struct.mthca_mtt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mthca_mailbox*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %7, align 8
  store %struct.mthca_mtt* %1, %struct.mthca_mtt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %16, i32 %17)
  store %struct.mthca_mailbox* %18, %struct.mthca_mailbox** %12, align 8
  %19 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %20 = call i64 @IS_ERR(%struct.mthca_mailbox* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %24 = call i32 @PTR_ERR(%struct.mthca_mailbox* %23)
  store i32 %24, i32* %6, align 4
  br label %123

25:                                               ; preds = %5
  %26 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %27 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %13, align 8
  br label %29

29:                                               ; preds = %106, %25
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %117

32:                                               ; preds = %29
  %33 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %34 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mthca_mtt*, %struct.mthca_mtt** %8, align 8
  %38 = getelementptr inbounds %struct.mthca_mtt, %struct.mthca_mtt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %41 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %39, %43
  %45 = add nsw i32 %36, %44
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 8
  %48 = add nsw i32 %45, %47
  %49 = call i64 @cpu_to_be64(i32 %48)
  %50 = load i64*, i64** %13, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %49, i64* %51, align 8
  %52 = load i64*, i64** %13, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  store i64 0, i64* %53, align 8
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %80, %32
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @MTHCA_MAILBOX_SIZE, align 4
  %61 = sdiv i32 %60, 8
  %62 = sub nsw i32 %61, 2
  %63 = icmp slt i32 %59, %62
  br label %64

64:                                               ; preds = %58, %54
  %65 = phi i1 [ false, %54 ], [ %63, %58 ]
  br i1 %65, label %66, label %83

66:                                               ; preds = %64
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MTHCA_MTT_FLAG_PRESENT, align 4
  %73 = or i32 %71, %72
  %74 = call i64 @cpu_to_be64(i32 %73)
  %75 = load i64*, i64** %13, align 8
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  store i64 %74, i64* %79, align 8
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %54

83:                                               ; preds = %64
  %84 = load i32, i32* %15, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i64*, i64** %13, align 8
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %87, %83
  %94 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %95 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  %98 = and i32 %97, -2
  %99 = call i32 @mthca_WRITE_MTT(%struct.mthca_dev* %94, %struct.mthca_mailbox* %95, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @mthca_warn(%struct.mthca_dev* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %118

106:                                              ; preds = %93
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32*, i32** %10, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %10, align 8
  br label %29

117:                                              ; preds = %29
  br label %118

118:                                              ; preds = %117, %102
  %119 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %120 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %12, align 8
  %121 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %119, %struct.mthca_mailbox* %120)
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %118, %22
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @mthca_WRITE_MTT(%struct.mthca_dev*, %struct.mthca_mailbox*, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
