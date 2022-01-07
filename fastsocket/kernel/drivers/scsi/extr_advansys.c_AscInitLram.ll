; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscInitLram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscInitLram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ASC_QADR_BEG = common dso_local global i64 0, align 8
@ASC_MIN_ACTIVE_QNO = common dso_local global i32 0, align 4
@ASC_QBLK_SIZE = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_FWD = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_BWD = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_QNO = common dso_local global i64 0, align 8
@ASC_QLINK_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @AscInitLram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AscInitLram(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* @ASC_QADR_BEG, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 2
  %16 = add nsw i32 %15, 1
  %17 = mul nsw i32 %16, 64
  %18 = ashr i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = call i32 @AscMemWordSetLram(i32 %10, i64 %11, i32 0, i64 %19)
  %21 = load i32, i32* @ASC_MIN_ACTIVE_QNO, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i64, i64* @ASC_QADR_BEG, align 8
  %23 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @AscWriteLramByte(i32 %25, i64 %28, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @ASC_SCSIQ_B_BWD, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @AscWriteLramByte(i32 %32, i64 %35, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @ASC_SCSIQ_B_QNO, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @AscWriteLramByte(i32 %40, i64 %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  %48 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %49 = load i64, i64* %4, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %78, %1
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @AscWriteLramByte(i32 %58, i64 %61, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @ASC_SCSIQ_B_BWD, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* %3, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @AscWriteLramByte(i32 %65, i64 %68, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @ASC_SCSIQ_B_QNO, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @AscWriteLramByte(i32 %72, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %57
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  %81 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %82 = load i64, i64* %4, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %4, align 8
  br label %51

84:                                               ; preds = %51
  %85 = load i32, i32* %5, align 4
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* @ASC_QLINK_END, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @AscWriteLramByte(i32 %85, i64 %88, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @ASC_SCSIQ_B_BWD, align 8
  %95 = add nsw i64 %93, %94
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @AscWriteLramByte(i32 %92, i64 %95, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @ASC_SCSIQ_B_QNO, align 8
  %104 = add nsw i64 %102, %103
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @AscWriteLramByte(i32 %101, i64 %104, i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  %111 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %112 = load i64, i64* %4, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %4, align 8
  br label %114

114:                                              ; preds = %140, %84
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 3
  %120 = icmp sle i32 %115, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %114
  %122 = load i32, i32* %5, align 4
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @AscWriteLramByte(i32 %122, i64 %125, i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = load i64, i64* %4, align 8
  %130 = load i64, i64* @ASC_SCSIQ_B_BWD, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @AscWriteLramByte(i32 %128, i64 %131, i32 %132)
  %134 = load i32, i32* %5, align 4
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @ASC_SCSIQ_B_QNO, align 8
  %137 = add nsw i64 %135, %136
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @AscWriteLramByte(i32 %134, i64 %137, i32 %138)
  br label %140

140:                                              ; preds = %121
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  %143 = load i64, i64* @ASC_QBLK_SIZE, align 8
  %144 = load i64, i64* %4, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %4, align 8
  br label %114

146:                                              ; preds = %114
  %147 = load i64, i64* %6, align 8
  ret i64 %147
}

declare dso_local i32 @AscMemWordSetLram(i32, i64, i32, i64) #1

declare dso_local i32 @AscWriteLramByte(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
