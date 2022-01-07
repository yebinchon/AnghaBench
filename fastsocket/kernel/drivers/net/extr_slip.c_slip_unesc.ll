; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_slip_unesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_slip_unesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slip = type { i32, i64, i8*, i32, i32 }

@SLF_ERROR = common dso_local global i32 0, align 4
@SLF_ESCAPE = common dso_local global i32 0, align 4
@SLF_KEEPTEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slip*, i8)* @slip_unesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slip_unesc(%struct.slip* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.slip*, align 8
  %4 = alloca i8, align 1
  store %struct.slip* %0, %struct.slip** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  switch i32 %6, label %49 [
    i32 131, label %7
    i32 130, label %28
    i32 128, label %33
    i32 129, label %41
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @SLF_ERROR, align 4
  %9 = load %struct.slip*, %struct.slip** %3, align 8
  %10 = getelementptr inbounds %struct.slip, %struct.slip* %9, i32 0, i32 3
  %11 = call i32 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = load %struct.slip*, %struct.slip** %3, align 8
  %15 = getelementptr inbounds %struct.slip, %struct.slip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.slip*, %struct.slip** %3, align 8
  %20 = call i32 @sl_bump(%struct.slip* %19)
  br label %21

21:                                               ; preds = %18, %13, %7
  %22 = load i32, i32* @SLF_ESCAPE, align 4
  %23 = load %struct.slip*, %struct.slip** %3, align 8
  %24 = getelementptr inbounds %struct.slip, %struct.slip* %23, i32 0, i32 3
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.slip*, %struct.slip** %3, align 8
  %27 = getelementptr inbounds %struct.slip, %struct.slip* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %84

28:                                               ; preds = %2
  %29 = load i32, i32* @SLF_ESCAPE, align 4
  %30 = load %struct.slip*, %struct.slip** %3, align 8
  %31 = getelementptr inbounds %struct.slip, %struct.slip* %30, i32 0, i32 3
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %84

33:                                               ; preds = %2
  %34 = load i32, i32* @SLF_ESCAPE, align 4
  %35 = load %struct.slip*, %struct.slip** %3, align 8
  %36 = getelementptr inbounds %struct.slip, %struct.slip* %35, i32 0, i32 3
  %37 = call i32 @test_and_clear_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i8 -126, i8* %4, align 1
  br label %40

40:                                               ; preds = %39, %33
  br label %49

41:                                               ; preds = %2
  %42 = load i32, i32* @SLF_ESCAPE, align 4
  %43 = load %struct.slip*, %struct.slip** %3, align 8
  %44 = getelementptr inbounds %struct.slip, %struct.slip* %43, i32 0, i32 3
  %45 = call i32 @test_and_clear_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i8 -125, i8* %4, align 1
  br label %48

48:                                               ; preds = %47, %41
  br label %49

49:                                               ; preds = %2, %48, %40
  %50 = load i32, i32* @SLF_ERROR, align 4
  %51 = load %struct.slip*, %struct.slip** %3, align 8
  %52 = getelementptr inbounds %struct.slip, %struct.slip* %51, i32 0, i32 3
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %49
  %56 = load %struct.slip*, %struct.slip** %3, align 8
  %57 = getelementptr inbounds %struct.slip, %struct.slip* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load %struct.slip*, %struct.slip** %3, align 8
  %61 = getelementptr inbounds %struct.slip, %struct.slip* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %55
  %65 = load i8, i8* %4, align 1
  %66 = load %struct.slip*, %struct.slip** %3, align 8
  %67 = getelementptr inbounds %struct.slip, %struct.slip* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.slip*, %struct.slip** %3, align 8
  %70 = getelementptr inbounds %struct.slip, %struct.slip* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %68, i64 %73
  store i8 %65, i8* %74, align 1
  br label %84

75:                                               ; preds = %55
  %76 = load %struct.slip*, %struct.slip** %3, align 8
  %77 = getelementptr inbounds %struct.slip, %struct.slip* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @SLF_ERROR, align 4
  %81 = load %struct.slip*, %struct.slip** %3, align 8
  %82 = getelementptr inbounds %struct.slip, %struct.slip* %81, i32 0, i32 3
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %21, %28, %64, %75, %49
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @sl_bump(%struct.slip*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
