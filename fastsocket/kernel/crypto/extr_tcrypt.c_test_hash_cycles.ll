; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_hash_cycles.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_hash_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"%6lu cycles/operation, %4lu cycles/byte\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*, %struct.scatterlist*, i32, i32, i8*)* @test_hash_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hash_cycles(%struct.hash_desc* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.hash_desc* %0, %struct.hash_desc** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 0, i64* %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.hash_desc*, %struct.hash_desc** %7, align 8
  %23 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @test_hash_cycles_digest(%struct.hash_desc* %22, %struct.scatterlist* %23, i32 %24, i8* %25)
  store i32 %26, i32* %6, align 4
  br label %131

27:                                               ; preds = %5
  %28 = call i32 (...) @local_bh_disable()
  %29 = call i32 (...) @local_irq_disable()
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %65, %27
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %68

33:                                               ; preds = %30
  %34 = load %struct.hash_desc*, %struct.hash_desc** %7, align 8
  %35 = call i32 @crypto_hash_init(%struct.hash_desc* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %115

39:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.hash_desc*, %struct.hash_desc** %7, align 8
  %46 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @crypto_hash_update(%struct.hash_desc* %45, %struct.scatterlist* %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %115

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %14, align 4
  br label %40

57:                                               ; preds = %40
  %58 = load %struct.hash_desc*, %struct.hash_desc** %7, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @crypto_hash_final(%struct.hash_desc* %58, i8* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %115

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %30

68:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %111, %68
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %114

72:                                               ; preds = %69
  %73 = call i64 (...) @get_cycles()
  store i64 %73, i64* %16, align 8
  %74 = load %struct.hash_desc*, %struct.hash_desc** %7, align 8
  %75 = call i32 @crypto_hash_init(%struct.hash_desc* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %115

79:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %93, %79
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load %struct.hash_desc*, %struct.hash_desc** %7, align 8
  %86 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @crypto_hash_update(%struct.hash_desc* %85, %struct.scatterlist* %86, i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %115

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %14, align 4
  br label %80

97:                                               ; preds = %80
  %98 = load %struct.hash_desc*, %struct.hash_desc** %7, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @crypto_hash_final(%struct.hash_desc* %98, i8* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %115

104:                                              ; preds = %97
  %105 = call i64 (...) @get_cycles()
  store i64 %105, i64* %17, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* %16, align 8
  %108 = sub nsw i64 %106, %107
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %12, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %69

114:                                              ; preds = %69
  br label %115

115:                                              ; preds = %114, %103, %91, %78, %63, %51, %38
  %116 = call i32 (...) @local_irq_enable()
  %117 = call i32 (...) @local_bh_enable()
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %6, align 4
  br label %131

122:                                              ; preds = %115
  %123 = load i64, i64* %12, align 8
  %124 = udiv i64 %123, 8
  %125 = load i64, i64* %12, align 8
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 8, %126
  %128 = sext i32 %127 to i64
  %129 = udiv i64 %125, %128
  %130 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %124, i64 %129)
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %122, %120, %21
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @test_hash_cycles_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i8*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @crypto_hash_init(%struct.hash_desc*) #1

declare dso_local i32 @crypto_hash_update(%struct.hash_desc*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_hash_final(%struct.hash_desc*, i8*) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @printk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
