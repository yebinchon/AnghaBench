; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_tx_msix_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_tx_msix_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8* }
%struct.bnad_tx_info = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s TXQ %d\00", align 1
@bnad_msix_tx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.bnad_tx_info*, i32, i32)* @bnad_tx_msix_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_tx_msix_register(%struct.bnad* %0, %struct.bnad_tx_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnad*, align 8
  %7 = alloca %struct.bnad_tx_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %6, align 8
  store %struct.bnad_tx_info* %1, %struct.bnad_tx_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %84, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %13
  %18 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %7, align 8
  %19 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %7, align 8
  %28 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bnad*, %struct.bnad** %6, align 8
  %37 = getelementptr inbounds %struct.bnad, %struct.bnad* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %7, align 8
  %43 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %41, %50
  %52 = call i32 @sprintf(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %51)
  %53 = load %struct.bnad*, %struct.bnad** %6, align 8
  %54 = getelementptr inbounds %struct.bnad, %struct.bnad* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @bnad_msix_tx, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %7, align 8
  %64 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %65, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %7, align 8
  %73 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %74, i64 %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = call i32 @request_irq(i32 %60, i32 %62, i32 0, i32 %71, %struct.TYPE_6__* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %17
  br label %88

83:                                               ; preds = %17
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %13

87:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %98

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.bnad*, %struct.bnad** %6, align 8
  %93 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %94, 1
  %96 = call i32 @bnad_tx_msix_unregister(%struct.bnad* %92, %struct.bnad_tx_info* %93, i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  store i32 -1, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @bnad_tx_msix_unregister(%struct.bnad*, %struct.bnad_tx_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
