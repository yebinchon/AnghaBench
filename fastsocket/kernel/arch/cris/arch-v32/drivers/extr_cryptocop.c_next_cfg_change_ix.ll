; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_next_cfg_change_ix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_next_cfg_change_ix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strcop_crypto_op = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"next_cfg_change_ix prev ix=%d, next ix=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strcop_crypto_op*, i64)* @next_cfg_change_ix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @next_cfg_change_ix(%struct.strcop_crypto_op* %0, i64 %1) #0 {
  %3 = alloca %struct.strcop_crypto_op*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.strcop_crypto_op* %0, %struct.strcop_crypto_op** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @INT_MAX, align 8
  store i64 %7, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %9 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %14 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %17 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  %20 = load i64, i64* %4, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %12
  %23 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %24 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %30 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  br label %40

32:                                               ; preds = %22
  %33 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %34 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %37 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %32, %28
  br label %41

41:                                               ; preds = %40, %12, %2
  %42 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %43 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %41
  %47 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %48 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %51 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = load i64, i64* %4, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %46
  %57 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %58 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %64 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  br label %74

66:                                               ; preds = %56
  %67 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %68 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %71 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %69, %72
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %66, %62
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %78, %74
  br label %81

81:                                               ; preds = %80, %46, %41
  %82 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %83 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %81
  %87 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %88 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %91 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  %94 = load i64, i64* %4, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %86
  %97 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %98 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %4, align 8
  %101 = icmp ugt i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %104 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %6, align 8
  br label %114

106:                                              ; preds = %96
  %107 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %108 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %3, align 8
  %111 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %109, %112
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %106, %102
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i64, i64* %6, align 8
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %118, %114
  br label %121

121:                                              ; preds = %120, %86, %81
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* @INT_MAX, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i64, i64* %4, align 8
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %125, %121
  %128 = load i64, i64* %4, align 8
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %128, i64 %129)
  %131 = call i32 @DEBUG(i32 %130)
  %132 = load i64, i64* %5, align 8
  ret i64 %132
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
