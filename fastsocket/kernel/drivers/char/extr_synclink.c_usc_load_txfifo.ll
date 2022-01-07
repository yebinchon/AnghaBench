; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_load_txfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_usc_load_txfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32, i32*, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }

@TCmd_SelectTicrTxFifostatus = common dso_local global i32 0, align 4
@TICR = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@DATAREG = common dso_local global i64 0, align 8
@CCAR = common dso_local global i64 0, align 8
@TDR = common dso_local global i32 0, align 4
@LSBONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_load_txfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_load_txfifo(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %5 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %6 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %11 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %171

15:                                               ; preds = %9, %1
  %16 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %17 = load i32, i32* @TCmd_SelectTicrTxFifostatus, align 4
  %18 = call i32 @usc_TCmd(%struct.mgsl_struct* %16, i32 %17)
  br label %19

19:                                               ; preds = %170, %15
  %20 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %21 = load i32, i32* @TICR, align 4
  %22 = call i32 @usc_InReg(%struct.mgsl_struct* %20, i32 %21)
  %23 = ashr i32 %22, 8
  store i32 %23, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %27 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi i1 [ false, %19 ], [ %29, %25 ]
  br i1 %31, label %32, label %171

32:                                               ; preds = %30
  %33 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %34 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %101

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %101

40:                                               ; preds = %37
  %41 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %42 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %101, label %45

45:                                               ; preds = %40
  %46 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %47 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %50 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %58 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %59, %61
  %63 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %64 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %66 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %69 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %77 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %80 = sub nsw i32 %79, 1
  %81 = and i32 %78, %80
  %82 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %83 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %87 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DATAREG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outw(i32 %85, i64 %90)
  %92 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %93 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 2
  store i32 %95, i32* %93, align 8
  %96 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %97 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 2
  store i64 %100, i64* %98, align 8
  br label %170

101:                                              ; preds = %40, %37, %32
  %102 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %103 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CCAR, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @inw(i64 %106)
  %108 = and i32 %107, 1920
  %109 = load i32, i32* @TDR, align 4
  %110 = load i32, i32* @LSBONLY, align 4
  %111 = add nsw i32 %109, %110
  %112 = or i32 %108, %111
  %113 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %114 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CCAR, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @outw(i32 %112, i64 %117)
  %119 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %120 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %101
  %124 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %125 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %128 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @CCAR, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @outw(i32 %126, i64 %131)
  %133 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %134 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  br label %164

135:                                              ; preds = %101
  %136 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %137 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %140 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %147 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @CCAR, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @outw(i32 %145, i64 %150)
  %152 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %153 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %156 = sub nsw i32 %155, 1
  %157 = and i32 %154, %156
  %158 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %159 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %161 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %135, %123
  %165 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %166 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 8
  br label %170

170:                                              ; preds = %164, %45
  br label %19

171:                                              ; preds = %14, %30
  ret void
}

declare dso_local i32 @usc_TCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
