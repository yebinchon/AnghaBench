; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_setup_5709_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_setup_5709_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BNX2_CTX_HOST_PAGE_TBL_DATA0_VALID = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_PAGE_SIZE = common dso_local global i32 0, align 4
@BNX2_CTX_HOST_PAGE_TBL_DATA0 = common dso_local global i32 0, align 4
@BNX2_CTX_HOST_PAGE_TBL_DATA1 = common dso_local global i32 0, align 4
@BNX2_CTX_HOST_PAGE_TBL_CTRL = common dso_local global i32 0, align 4
@BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i32)* @cnic_setup_5709_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_setup_5709_context(%struct.cnic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 0
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_DATA0_VALID, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %9, align 4
  %23 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %24 = call i64 @BNX2_CHIP(%struct.cnic_local* %23)
  %25 = load i64, i64* @BNX2_CHIP_5709, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %120

28:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %115, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %32 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %118

35:                                               ; preds = %29
  %36 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %37 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %45 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %49 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %57 = call i32 @memset(i32 %55, i32 0, i32 %56)
  %58 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %59 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_DATA0, align 4
  %60 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %61 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @CNIC_WR(%struct.cnic_dev* %58, i32 %59, i32 %69)
  %71 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %72 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_DATA1, align 4
  %73 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %74 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 32
  %82 = call i32 @CNIC_WR(%struct.cnic_dev* %71, i32 %72, i32 %81)
  %83 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %84 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @CNIC_WR(%struct.cnic_dev* %83, i32 %84, i32 %87)
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %103, %35
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 10
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %94 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL, align 4
  %95 = call i32 @CNIC_RD(%struct.cnic_dev* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  br label %106

101:                                              ; preds = %92
  %102 = call i32 @udelay(i32 5)
  br label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %89

106:                                              ; preds = %100, %89
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @EBUSY, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %118

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %29

118:                                              ; preds = %111, %29
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %27
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @BNX2_CHIP(%struct.cnic_local*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i32, i32) #1

declare dso_local i32 @CNIC_RD(%struct.cnic_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
