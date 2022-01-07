; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_adjust_qp_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_adjust_qp_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32, i32, i32, i32 }

@BNX2I_NX2_DEV_5706 = common dso_local global i32 0, align 4
@BNX2I_NX2_DEV_5708 = common dso_local global i32 0, align 4
@BNX2I_NX2_DEV_5709 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BNX2I_SQ_WQE_SIZE = common dso_local global i32 0, align 4
@BNX2I_CQE_SIZE = common dso_local global i32 0, align 4
@BNX2I_RQ_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_hba*)* @bnx2i_adjust_qp_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_adjust_qp_size(%struct.bnx2i_hba* %0) #0 {
  %2 = alloca %struct.bnx2i_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %2, align 8
  %4 = load i32, i32* @BNX2I_NX2_DEV_5706, align 4
  %5 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %6 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %5, i32 0, i32 3
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @BNX2I_NX2_DEV_5708, align 4
  %11 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %11, i32 0, i32 3
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @BNX2I_NX2_DEV_5709, align 4
  %17 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %17, i32 0, i32 3
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %15, %9, %1
  %22 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @is_power_of_2(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %29 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @rounddown_pow_of_two(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %21
  %36 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %37 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @is_power_of_2(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %43 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @rounddown_pow_of_two(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %48 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %35
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load i32, i32* @BNX2I_SQ_WQE_SIZE, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %55 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %62 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %84

63:                                               ; preds = %50
  %64 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %65 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %3, align 4
  %68 = srem i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %72 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 %77, 1
  %79 = xor i32 %78, -1
  %80 = and i32 %76, %79
  %81 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %82 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %70, %63
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = load i32, i32* @BNX2I_CQE_SIZE, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %3, align 4
  %88 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %89 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %96 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %118

97:                                               ; preds = %84
  %98 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %99 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %3, align 4
  %102 = srem i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %97
  %105 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %106 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* %3, align 4
  %112 = sub nsw i32 %111, 1
  %113 = xor i32 %112, -1
  %114 = and i32 %110, %113
  %115 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %116 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %104, %97
  br label %118

118:                                              ; preds = %117, %93
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = load i32, i32* @BNX2I_RQ_WQE_SIZE, align 4
  %121 = sdiv i32 %119, %120
  store i32 %121, i32* %3, align 4
  %122 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %123 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %3, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %118
  %128 = load i32, i32* %3, align 4
  %129 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %130 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %152

131:                                              ; preds = %118
  %132 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %133 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %3, align 4
  %136 = srem i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %131
  %139 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %140 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %3, align 4
  %143 = add nsw i32 %141, %142
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* %3, align 4
  %146 = sub nsw i32 %145, 1
  %147 = xor i32 %146, -1
  %148 = and i32 %144, %147
  %149 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %2, align 8
  %150 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %138, %131
  br label %152

152:                                              ; preds = %151, %127
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i8* @rounddown_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
